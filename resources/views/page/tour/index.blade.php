@extends('page.layouts.page')
@section('title', 'Tours - Tin tức Du lịch - Thông tin Du lịch, Tin tức Du Lịch Việt Nam 2023')
@section('style')
@stop
@section('content')

    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url({{ asset('/page/images/bg_1.jpg') }});">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i
                                    class="fa fa-chevron-right"></i></a></span> <span>Danh sách<i
                                class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Tours</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-no-pb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="search-wrap-1 ftco-animate fadeInUp ftco-animated">
                        {{-- @include('page.common.searchTour') --}}
                        <form action="{{ route('tour') }}" class="search-property-1">
                            <div class="row no-gutters">
                                {{-- <div class="col-md d-flex">
                                    <div class="form-group p-4 border-0">
                                        <label for="#">Tour</label>
                                        <div class="form-field">
                                            <div class="icon"><span class="fa fa-search"></span></div>
                                            <input type="text" name="key_tour" value="{{ Request::get('key_tour') }}"
                                                class="form-control" placeholder="Tìm kiếm">
                                        </div>
                                    </div>
                                </div> --}}

                                {{-- <div class="col-md d-flex">
                                    <div class="form-group p-4">
                                        <label for="#">Ngày Khởi Hành</label>
                                        <div class="form-field">
                                            <div class="icon"><span class="fa fa-calendar"></span></div>
                                            <input type="text" name="t_start_date" value="{{ Request::get('t_start_date') }}"
                                                class="form-control checkin_date" placeholder="Ngày Khởi Hành" autocomplete="off">
                                        </div>
                                    </div>
                                </div> --}}

                                {{-- <div class="col-md d-flex">
                                    <div class="form-group p-4">
                                        <label for="#">Ngày Trở Về</label>
                                        <div class="form-field">
                                            <div class="icon"><span class="fa fa-calendar"></span></div>
                                            <input type="text" name="t_end_date" value="{{ Request::get('t_end_date') }}"
                                                class="form-control checkout_date" placeholder="Ngày Trở Về" autocomplete="off">
                                        </div>
                                    </div>
                                </div> --}}

                                {{-- <div class="col-md d-flex">
                                    <div class="form-group p-4">
                                        <label for="#">Vùng miền</label>
                                        <div class="form-field">
                                            <div class="select-wrap">
                                                <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                <select name="area" class="form-control">
                                                    <option value="">Chọn vùng miền</option>
                                                    @forelse (\App\Models\Location::all() as $location)
                                                        <option
                                                            {{ Request::get('area') == $location->id ? 'selected' : '' }}
                                                            value="{{ $location->id }}">{{ $location->l_name }}</option>
                                                    @empty
                                                    @endforelse
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div> --}}

                                {{-- <div class="col-md d-flex">
                                    <div class="form-group p-4">
                                        <label for="#">Khoảng giá</label>
                                        <div class="form-field">
                                            <div class="select-wrap">
                                                <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                <select name="price" id="" class="form-control">
                                                    <option value="">Chọn khoảng giá</option>
                                                    <option value="0-1000000">0->1.000.000</option>
                                                    <option value="1000000-2000000">1.000.000->2.000.000</option>
                                                    <option value="2000000-3000000">2.000.000->3.000.000</option>
                                                    <option value="3000000-4000000">3.000.000->4.000.000</option>
                                                    <option value="4000000-5000000">4.000.000->5.000.000</option>
                                                    <option value="5000000-6000000">5.000.000->6.000.000</option>
                                                    <option value="6000000-7000000">6.000.000->7.000.000</option>
                                                    <option value="7000000-8000000">7.000.000->8.000.000</option>
                                                    <option value="8000000-9000000">8.000.000->9.000.000</option>
                                                    <option value="9000000-10000000">9.000.000->10.000.000</option>
                                                    <option value="10000000-11000000">10.000.000->11.000.000</option>
                                                    <option value="11000000-12000000">11.000.000->12.000.000</option>
                                                    <option value="12000000-13000000">12.000.000->13.000.000</option>
                                                    <option value="13000000-14000000">13.000.000->14.000.000</option>
                                                    <option value="14000000-15000000">14.000.000->15.000.000</option>
                                                    <option value="15000000-100000000"> Trên 15.000.000</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div> --}}

                                <div class="col-md d-flex">
                                    <div class="form-group d-flex w-100 border-0">
                                        <div class="form-field w-100 align-items-center d-flex">
                                            <input type="submit" value="Tìm kiếm"
                                                class="align-self-stretch form-control btn btn-primary">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container mt-4">
        <form action="{{ route('tour') }}">

            <div class="row">

                <div class="col-lg-3">

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="text-primary">Loại tour</label>
                                <select name="type_tour" class="form-control">
                                    <option value="">--Tất cả--</option>
                                    @forelse ($types as $type)
                                        <option {{ Request::get('type_tour') == $type->t_type ? 'selected' : '' }}
                                            value="{{ $type->t_type }}">{{ $type->t_type }}</option>
                                    @empty
                                    @endforelse
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="text-primary">Điểm xuất phát</label>
                                <select name="starting_point" class="form-control">
                                    <option value="">--Tất cả--</option>
                                    @forelse ($starts as $start)
                                        <option
                                            {{ Request::get('starting_point') == $start->t_starting_gate ? 'selected' : '' }}
                                            value="{{ $start->t_starting_gate }}">{{ $start->t_starting_gate }}</option>
                                    @empty
                                    @endforelse
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="text-primary">Điểm đến</label>
                                <select name="destination" class="form-control">
                                    <option value="">--Tất cả--</option>
                                    @forelse ($ends as $end)
                                        <option {{ Request::get('destination') == $end->t_end_gate ? 'selected' : '' }}
                                            value="{{ $end->t_end_gate }}">{{ $end->t_end_gate }}</option>
                                    @empty
                                    @endforelse
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="text-primary">Số ngày</label>
                                <div class="group-radio">
                                    <input type="radio" id="rdo1" name="number_day"
                                        {{ Request::get('number_day') == '1' ? 'checked' : '' }} value="1" /> <label
                                        for="rdo1">1-3 ngày</label><br />
                                    <input type="radio" id="rdo2" name="number_day"
                                        {{ Request::get('number_day') == '2' ? 'checked' : '' }} value="2" /> <label
                                        for="rdo2">4-7 ngày</label><br />
                                    <input type="radio" id="rdo3" name="number_day"
                                        {{ Request::get('number_day') == '3' ? 'checked' : '' }} value="3" /> <label
                                        for="rdo3">8-14 ngày</label><br />
                                    <input type="radio" id="rdo4" name="number_day"
                                        {{ Request::get('number_day') == '4' ? 'checked' : '' }} value="4" /> <label
                                        for="rdo4">trên 14 ngày</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="text-primary">Ngày đi</label>
                                <input type="text" name="t_start_date" value="{{ Request::get('t_start_date', '') }}"
                                    class="form-control checkout_date" placeholder="Ngày đi" autocomplete="off">
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="text-primary">Số người</label>
                                <div class="group-radio">
                                    <input type="radio" id="rdo5" name="number_guest"
                                        {{ Request::get('number_guest') == '1' ? 'checked' : '' }} value="1" />
                                    <label for="rdo5">1 người</label><br />
                                    <input type="radio" id="rdo6" name="number_guest"
                                        {{ Request::get('number_guest') == '2' ? 'checked' : '' }} value="2" />
                                    <label for="rdo6">2 người</label><br />
                                    <input type="radio" id="rdo7" name="number_guest"
                                        {{ Request::get('number_guest') == '3' ? 'checked' : '' }} value="3" />
                                    <label for="rdo7">3-5 người</label><br />
                                    <input type="radio" id="rdo8" name="number_guest"
                                        {{ Request::get('number_guest') == '4' ? 'checked' : '' }} value="4" />
                                    <label for="rdo8">5+ người</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="text-primary">Giá</label>
                                <select name="price" id="" class="form-control">
                                    <option value="">--Tất cả--</option>
                                    <option {{ Request::get('price') == '0-1000000' ? 'selected' : '' }}
                                        value="0-1000000">
                                        0-&gt;1.000.000</option>
                                    <option {{ Request::get('price') == '1000000-2000000' ? 'selected' : '' }}
                                        value="1000000-2000000">1.000.000-&gt;2.000.000</option>
                                    <option {{ Request::get('price') == '2000000-3000000' ? 'selected' : '' }}
                                        value="2000000-3000000">2.000.000-&gt;3.000.000</option>
                                    <option {{ Request::get('price') == '3000000-4000000' ? 'selected' : '' }}
                                        value="3000000-4000000">3.000.000-&gt;4.000.000</option>
                                    <option {{ Request::get('price') == '4000000-5000000' ? 'selected' : '' }}
                                        value="4000000-5000000">4.000.000-&gt;5.000.000</option>
                                    <option {{ Request::get('price') == '5000000-6000000' ? 'selected' : '' }}
                                        value="5000000-6000000">5.000.000-&gt;6.000.000</option>
                                    <option {{ Request::get('price') == '6000000-7000000' ? 'selected' : '' }}
                                        value="6000000-7000000">6.000.000-&gt;7.000.000</option>
                                    <option {{ Request::get('price') == '7000000-8000000' ? 'selected' : '' }}
                                        value="7000000-8000000">7.000.000-&gt;8.000.000</option>
                                    <option {{ Request::get('price') == '8000000-9000000' ? 'selected' : '' }}
                                        value="8000000-9000000">8.000.000-&gt;9.000.000</option>
                                    <option {{ Request::get('price') == '9000000-10000000' ? 'selected' : '' }}
                                        value="9000000-10000000">9.000.000-&gt;10.000.000</option>
                                    <option {{ Request::get('price') == '10000000-11000000' ? 'selected' : '' }}
                                        value="10000000-11000000">10.000.000-&gt;11.000.000</option>
                                    <option {{ Request::get('price') == '11000000-12000000' ? 'selected' : '' }}
                                        value="11000000-12000000">11.000.000-&gt;12.000.000</option>
                                    <option {{ Request::get('price') == '12000000-13000000' ? 'selected' : '' }}
                                        value="12000000-13000000">12.000.000-&gt;13.000.000</option>
                                    <option {{ Request::get('price') == '13000000-14000000' ? 'selected' : '' }}
                                        value="13000000-14000000">13.000.000-&gt;14.000.000</option>
                                    <option {{ Request::get('price') == '14000000-15000000' ? 'selected' : '' }}
                                        value="14000000-15000000">14.000.000-&gt;15.000.000</option>
                                    <option {{ Request::get('price') == '15000000-100000000' ? 'selected' : '' }}
                                        value="15000000-100000000"> Trên 15.000.000</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="text-primary">Phương tiện</label>
                                <select name="method" class="form-control">
                                    <option value="">--Tất cả--</option>
                                    @forelse ($move_methods as $move_method)
                                        <option
                                            {{ Request::get('method') == $move_method->t_move_method ? 'selected' : '' }}
                                            value="{{ $move_method->t_move_method }}">{{ $move_method->t_move_method }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="#">Vùng miền</label>
                                <select name="area" class="form-control">
                                    <option value="">Chọn vùng miền</option>
                                    @forelse (\App\Models\Location::all() as $location)
                                        <option {{ Request::get('area') == $location->id ? 'selected' : '' }}
                                            value="{{ $location->id }}">{{ $location->l_name }}</option>
                                    @empty
                                    @endforelse
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="#">Tour</label>
                                <input type="text" name="key_tour" value="{{ Request::get('key_tour') }}"
                                    class="form-control" placeholder="Nhập tên tour...">
                            </div>
                        </div>
                    </div>

                    <div class="row no-gutters">
                        <div class="col-md-12">
                            <button class="align-self-stretch form-control btn btn-primary">LỌC</button>
                        </div>
                    </div>
                </div>


                <div class="col-lg-9 mt-4">
                    <div class="row">
                        @if ($tours->count() > 0)
                            @foreach ($tours as $tour)
                                @include('page.common.itemTour', compact('tour'))
                            @endforeach
                        @endif
                    </div>
                    <div class="row mt-5">
                        <div class="col text-center">
                            <div class="block-27">
                                {{ $tours->links('page.pagination.default') }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </section>
@stop
@section('script')
@stop
