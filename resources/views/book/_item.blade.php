<div class="templatemo_product_box">
	<h1>{{$book->title}}</h1>
    <img src="{{ url() }}/{{$book->image}}.jpg" alt="image" width="100px" height="150" />
    <div class="product_info">
    	<p>{{$book->author}}</p>
        <h3>{{$book->price}}.000 VNĐ</h3>
       	<form method="POST" class="buy-form" >
	                <input type="hidden" name="book_id" value="{{$book->id}}">
	                <input type="hidden" name="_token" value="{{ csrf_token() }}">
	                <button class="buy_now_button">
	                    Buy Now
	                </button>
	    </form>
        @if($book->book_id!==null)
            <div class="detail_button"><a href="{{ url() }}/book_info/{{$book->book_id}}">Detail</a></div>
        @else
            <div class="detail_button"><a href="{{ url() }}/book_info/{{$book->id}}">Detail</a></div>
        @endif
    </div>
    <div class="cleaner">&nbsp;</div>
</div>