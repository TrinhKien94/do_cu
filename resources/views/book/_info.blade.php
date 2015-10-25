@extends('layout.default')
@section('content-title')
{{$book->title}}
@stop
@section('title')
{{$book->title}}
@stop
@section('content')

        
<div id="templatemo_content_right">
    <div class="image_panel"><img src="{{ url() }}/{{$book->image}}.jpg" alt="image" width="150px" height="200" /></div>
    <h2>Read the lessons - Watch the videos - Do the exercises</h2>
    <ul>
        <li><h2>Tác giả: <a href="#">{{$book->author}}</a></h2></li>
    	<li><h2>Ngày xuất bản: {{$book->created_at}}</h2></li>
        <li><h2>Lượt xem: {{$book->views}}</h2></li>
        <li><h2>Price: {{$book->price}}.000 VNĐ</h2></li>
    </ul>
        <form method="POST" class="buy-form" >
                    <input type="hidden" name="book_id" value="{{$book->id}}">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <button class="buy_now_button">
                        Buy Now
                    </button>
        </form>
    {!!$book->description!!}
    
     <div class="cleaner_with_height">&nbsp;</div>
                
</div> <!-- end of content right -->
    
@stop