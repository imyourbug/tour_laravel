<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Tour;
use BotMan\BotMan\Messages\Incoming\Answer;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BotManController extends Controller
{
    /**
     * Place your BotMan logic here.
     */
    public function handle()
    {
        $botman = app('botman');

        $botman->hears('{message}', function ($botman, $message) {
            $message = Str::slug($message);
            switch ($message) {
                case '1':
                    $this->askRequest($botman);
                    break;
                case '2':
                    $this->askSearch($botman);
                    break;
                // case '3':
                //     $this->askTop($botman);
                //     break;
                default:
                    $botman->reply('Hãy cho tôi biết bạn cần gì?
                    <br/>  Gửi số "1" nếu Bạn muốn tư vấn tour du lịch.
                    <br/>  Gửi số "2" nếu Bạn muốn tra cứu tour du lịch.
                    ');
                    break;
            }
        });

        $botman->listen();
    }

    public function askTop($botman)
    {
        // $products = Product::orderByDesc('')->limit(3)
        //     ->get();
        $products = DB::table('orders')
            ->join('products', 'products.id', '=', 'orders.od_product_id')
            ->select(DB::raw('sum(od_qty) as sum_qty'), 'products.*')
            ->groupBy('od_product_id')->orderByDesc('sum_qty')->limit(3)->get();
        if ($products->count() > 0) {
            $botman->reply('Dưới đây là top 3 tour bán chạy nhất');
            foreach ($products as $product) {
                $botman->reply('<a target="_blank" href=' . env('APP_URL', 'http://127.0.0.1:8000/') .
                    '/san-pham/' . Str::slug($product->pro_slug)  . '-' . $product->id
                    . '>' . Str::slug($product->pro_slug) . '</a></br>
                        <img width="50px" height="10px" src=' . env('APP_URL', 'http://127.0.0.1:8000/')
                    . pare_url_file($product->pro_avatar) . ' /></br> Đã bán ' . $product->sum_qty);
            }
        } else {
            $botman->reply('Không có tour nào phù hợp!');
        }
    }

    public function askRequest($botman)
    {
        $botman->ask('Bạn muốn tư vấn tour nào?', function (Answer $answer, $botman) {

            // $name = Str::slug($answer->getText());
            $name = $answer->getText();
            $tours = Tour::where('t_title', 'like', '%' . $name . '%')->limit(3)
                ->get();
            if ($tours->count() > 0) {
                $this->say('Dưới đây là 1 số tour theo yêu cầu của bạn');
                foreach ($tours as $tour) {
                    $this->say('<a target="_blank" href=' . env('APP_URL', 'http://127.0.0.1:8000/')
                        . '/tour/' . $tour->id . '/' . Str::slug($tour->t_title) . '.html'
                        . '>' . Str::slug($tour->t_title) . '</a></br>
                        <img width="250px" height="100px" src=' . env('APP_URL', 'http://127.0.0.1:8000/')
                        . pare_url_file($tour->t_image) . ' /></br>');
                }
            } else {
                $this->say('Không có tour nào phù hợp!');
            }
        });
    }

    public function askSearch($botman)
    {
        $botman->ask('Bạn muốn tra cứu tour gì? Hãy nhập tên tour', function (Answer $answer, $botman) {
            // $name = Str::slug($answer->getText());
            $name = $answer->getText();
            $tour = Tour::firstWhere('t_title', 'like', '%' . $name . '%');
            if ($tour) {
                $this->say('Thông tin tour</br>
                Còn trống: ' . $tour->t_number_guests - $tour->t_number_registered . '

                ');
                $this->say('<a target="_blank" href=' . env('APP_URL', 'http://127.0.0.1:8000/')
                    . '/tour/'. $tour->id . '/'. Str::slug($tour->t_title) . '.html'
                    . '>' . Str::slug($tour->t_title) . '</a></br>
                        <img width="250px" height="100px" src=' . env('APP_URL', 'http://127.0.0.1:8000/')
                    . pare_url_file($tour->t_image) . ' /></br>');
            } else {
                $this->say('Không có tour nào phù hợp!');
            }
        });
    }
}
