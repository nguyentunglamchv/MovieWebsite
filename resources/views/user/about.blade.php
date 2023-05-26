@extends('user.master')
@section('title','Giới Thiệu Về Chúng Tôi - MTAMovies')
@section('content')
<div class="faq">
    <h4 class="latest-text w3_faq_latest_text w3_latest_text">Giới Thiệu</h4>
    <div class="container">
        <div class="agileits-news-top">
            <ol class="breadcrumb">
                <li><a href="{{ route('user.index') }}">Trang Chủ</a></li>
                <li class="active">Giới Thiệu</li>
            </ol>
            <div>
                <h4>Với niềm đam mê về phim ảnh, chúng tôi những người xây dựng nên Website này mong muốn đưa tới cho
                    mọi người những bộ phim hay nhất trên thị trường hiện tại, mới nhất và cập nhật liên tục. Chúng tôi
                    cam đoan tất cả phim trên Website của chúng tôi đều miễn phí và chất lượng tốt nhất để phục vụ cho
                    mọi người.<br><br></h4>
            </div>
        </div>
    </div>
    <h4 class="latest-text w3_faq_latest_text w3_latest_text">Liên Hệ</h4>
    <div class="container">
        <h4 class="pt-1"><b>Quản trị viên: </b>Nguyễn Tùng Lâm</h4>
        <h4 class="pt-1"><b>Số điện thoại: </b>0392228502</h4>
        <h4><b>Email: </b>mta.edu@gmail.com</h4>
        <h4><b>Địa chỉ: </b>Hà Nội, Việt Nam</h4>

    </div>
</div>
@endsection
