<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>reviewTestPage</title>
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<style>
		#review_writingpage{
			display:block;
			width: 678px;
/* height: 590.725px; */
    		margin: 101px auto 62px;
		}
		
		.review_writingpage_title{
			display:flex;
			margin-bottom: 20px;
		}
		.review_writingpage_restaurant_name{
			max-width: 400px;
		    font-size: 28px;
		    line-height: 1.462;
		    color: #ff7100;
		    font-weight:400;
		}
		.review_writingpage_restaurant_submessagewrap{
			position: relative;
    		margin-left: 4px;
		}
		.review_writingpage_restaurant_submessage{
			font-size: 16px;
			line-height:23.2px;
		    width: 270px;
		    margin: 0;
		    position: absolute;
		    top: 24.55px;
		    transform: translateY(-50%);
    		line-height: 23.2px;
    		color: #7F7F7F;
		    font-weight:400;
		}
		.review_writingpage_content{
			display:flex;
		}
		.review_writingpage_contentwrap1{
		    width: 678px;
		}
		.review_writingpage_contentwrap3{
   		    border: 1px solid #DBDBDB;
		    box-sizing: border-box;
		    border-radius: 3px;
		    padding: 16px;
		}
		.review_writingpage_tastylike{
			margin-bottom: 20px;	
		}
		.tastylike{
			margin-right: 24px;
		}
		.tastylike.active > .tastylike_good{
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/restaurant_recommend_active_face.svg);
		}
		.tastylike:not(.active) > .tastylike_good{
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/restaurant_recommend_face.svg);
		}
		.tastylike.active > .tastylike_notbad{
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/restaurant_ok_active_face.svg);
		}
		.tastylike:not(.active) > .tastylike_notbad{
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/restaurant_ok_face.svg);
		}
		.tastylike.active > .tastylike_bad{
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/restaurant_not_recommend_active_face.svg);
		}
		.tastylike:not(.active) > .tastylike_bad{
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/restaurant_not_recommend_face.svg);
		}
		.tastylike.active > .tastylike_content{
			color: #ff7100;
		}
		.tastylike:not(.active) > .tastylike_content{
			color: #CBCBCB;
		}
		.tastylike_good{
			display: inline-block;
 		   	width: 36px;
		   	height: 36px;
		   	margin-right: 8px;
		   	background-size: cover;
		}
		.tastylike_notbad{
			display: inline-block;
 		   	width: 36px;
		   	height: 36px;
		   	margin-right: 8px;
		   	background-size: cover;
		}
		.tastylike_bad{
			display: inline-block;
 		   	width: 36px;
		   	height: 36px;
		   	margin-right: 8px;
		   	background-size: cover;
		}
		.tastylike_content{
			display: block;
		    font-size: 14px;
		    margin-top: 8px;
		    
		}
		button{
		    cursor: pointer;
		    border: 0px;
		    border-radius: 0;
		    background-color: transparent;
		}
		.review_content{
			display: block;
		    width: 100%;
		    height: 150px;
		    border: 0;
		    font-size: 16px;
			font-weight:300;
		    color: #000000;
		    resize: none;
	 	    outline-color: #FFFFFF;
		}
 		.review_content::placeholder {
			color: #CBCBCB;
		}
   		.review_content:focus::placeholder {
			color: #CBCBCB;
		}
 		.review_content:focus {
			outline: none;	/* ?????? ?????????, textarea??? ????????? ??? ???????????????, ????????? ?????? ????????? ?????? */
			caret-color: #CBCBCB;
		}
		
		.review_text_length{
		    font-size: 12px;
		    line-height: normal;
		    color: #7F7F7F;	
		    margin-top:4px;
		}
		.review_writingpage_imgwrap{
			position: relative;
		    width: 676px;
		    margin-bottom: 41px;
		}
		.review_img_countwrap{
    		margin-left: 54px;
		    display: block;
	        width: 89px;
		    font-size: 12px;
			font-weight: 300;
		    text-align: right;
		    color: #7F7F7F;
		}
		#review_imgwrap{
			width:686px;
			min-height: 98px;
		}
		.review_img{
/* 			position: absolute;
		    left: 0px;
   			top: 0px; */
   			display: block;
   			width:89px;
   			height:89px;
		    margin-right: 9px;
		    margin-bottom: 9px;
		}
		.review_img_button{
			display:flex;
			justify-content: center;
			align-items: center;
   			width:89px;
   			height:89px;
		    border: 1px dashed #DBDBDB;
		    cursor: pointer;
		}
		.review_img_plus_icon{
			width: 27px;
   			height: 27px;
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/plus_icon.svg);
			background-size: cover;
		}
		.review_img_plus1{
			background-image: url(https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/sources/web/restaurants/87430/2386738_1670480801179?fit=around|*:*&crop=*:*;*,*&output-format=jpg&output-quality=80);
			background-size:cover;
			width:89px;
   			height:89px;
   			cursor: pointer;
   			z-index:2;
   			position:relative;
		}
		.review_img_plus2{
			background-image: url(https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/sources/web/restaurants/87430/2386738_1670467362137?fit=around|*:*&crop=*:*;*,*&output-format=jpg&output-quality=80);
			background-size:cover;
			width:89px;
   			height:89px;
   			cursor: pointer;
		}
		.dark{
			position:absolute;
			background-color:rgba(0,0,0,0.5);
			width:89px;
   			height:89px;
   			z-index:3;
		}
		.close_icon{
			position:absolute;
			z-index:3;
			top: 8px;
    		right: 8px;
			width: 13px;
		    height: 13px;
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/pc-delete-review-photo.svg);
		}
		.widely_icon{
			position:absolute;
			z-index:3;
			bottom: 8px;
    		left: 8px;
		    width: 13px;
		    height: 13px;
			background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/pc-review-photo-extend.svg);
		}
/* 		.background_darkwrap{
			position:relative;
		} */
		.background_dark{
display:none;
			transform: translate(-50%, -50%);
		    position: fixed;
		    top: 50%;
		    left: 50%;
			width:100%;
			height: 100%;		
		    z-index: 1000;
			background-color:rgba(0,0,0,0.6);
		}
		.widely_imgwrap{
	    	width: 1247.4px;
	    	height: 629.412px;
/* 		    min-width: 0px;
		    max-width: 100%; */
		    padding: 30px 0;
    		background-color: #000000;
			position: absolute;
			transform: translate(-50%, -50%);
    		top: 50%;
    		left: 50%;
		}
		.widely_img_content{
	    	width: 1247px;
	    	height: 524px;
		}
		.widely_img{
			background-image: url(https://s3-ap-northeast-2.amazonaws.com/mp-seoul-image-production/sources/web/restaurants/87430/2386738_1670544569808); 
 			background-size: cover;
 			width: 698.667px;
		    height: 524px;
		    left: 274.167px;
 		    position:absolute;
		   /* top: 0px; */
		}
		.widely_img_arrow_next{
		    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
		    background-position: -935px -332px;
		    width: 28px;
		    height: 45px;
		    right: 25px;
		}
		.widely_img_arrow_prev{
   		 	background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
    		background-position: -935px -281px;	       	
		    width: 28px;
		    height: 45px;
	       	left: 25px;
		}
		.widely_img_arrow_button{
		    transform: translateY(-50%);
    		position: absolute;
    		top: 50%;
		    opacity: .5;
		}
		.widely_small_contentwrap{
			margin-top:37.4125px;
		}
		.widely_small_content{
		    width: 1247px;
		}
		.widely_small_imgwrap2{
		    display:flex; 
		    justify-content: center;
		}
		.widely_small_img{
			background-size:cover;
			background-position:50%;
			width: 60px;
    		height: 60px;
		    padding: 2px;
		    margin-right: 2px;
		    margin-top: 2px;
		}
		.widely_small_img:not(.on){
			filter: brightness(0.5);
		}
		.widely_img_close_buttonwrap{
			display: flex;
			justify-content: center;
			position: absolute;
		    top: 25px;
		    right: 25px;
		    width: 30px;
		    height: 30px;
		}
		.widely_img_close_button{
			width: 21px;
		    height: 21px;
		    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/white_close.svg);
		    background-size: cover;
		}
		.review_writingpage_buttons{
			display:flex;
		    width: 678px;
		}
		.review_later_button_Deactive{
			min-width: 140px;
		    min-height: 50px;
		    margin-right: 34px;
		    padding-left: 14px;
		    padding-right: 14px;
		    border: 1px solid #CBCBCB;
		    border-radius: 50px;
    		color: #CBCBCB;
		    font-weight:300;
		    font-size: 15px;
		    text-align: center;
    		background-color: #FFFFFF;
    		cursor: not-allowed;
		}
		.review_later_button{
			min-width: 140px;
		    min-height: 50px;
		    margin-right: 34px;
		    padding-left: 14px;
		    padding-right: 14px;
		    border: 1px solid #ff7100;
		    border-radius: 50px;
		    color: #ff7100;
		    font-weight:300;
		    font-size: 15px;
		    text-align: center;
    		background-color: #FFFFFF;
		}
		.review_writing_button_wrap{
			display:flex;
			justify-content: flex-end;
			box-pack: end;
			width:678px;
		}
		.review_cancel_button{
			min-width: 140px;
		    min-height: 50px;
		    margin-right: 16px;
		    padding-left: 14px;
		    padding-right: 14px;
		    border: 1px solid #7F7F7F;
		    border-radius: 50px;
		    font-size: 16px;
		    font-weight:300;
		    color: #7F7F7F;
		    text-align: center;
		    background-color: #FFFFFF;
		}
		.review_summit_button{
			min-width: 140px;
		    min-height: 50px;
		    padding-left: 14px;
		    padding-right: 14px;
		    border-radius: 50px;
    		font-size: 16px;
    		font-weight:300;
    		text-align: center;
			color: #FFFFFF;
			background-color: #ff7100;
		}
		.review_summit_button_Deactive{
			border-color: #E9E9E9;
		    background-color: #E9E9E9;
		    color: #FFFFFF;
		    cursor: not-allowed;
		}
		.fl{
			float:left;
		}
		.fr{
			float:right;
		}
		.review_cancel_background_dark{
display:none;
			position: fixed;
	   	 	top: 0;
	    	left: 0;
			width:100%;
			height:100%;
			z-index: 2000;
			background-color: rgba(0,0,0,0.4);
		}
		.review_cancelWrap {
			transform: translate(-50%, -50%);
			position: absolute;
		    top: 50%;
		    left: 50%;
		    width: 370px;
		    height: 167px;
		    border-radius: 4px;
		    background-color: #FFFFFF;
		}
		.review_cancel_content{
			padding: 32px 24px 24px;
		    font-size: 16px;
		    line-height: 25px;
		    color: #333333;
		    text-align: center;
		}
		.review_cancel_items{
			border-top: 1px solid #DBDBDB;
			display:flex;
		}
		.review_cancel_btn{
			flex:1;
			height: 60px;
		    padding: 0 15px;
		    border-right: 1px solid #DBDBDB;
		    font-size: 16px;
		    font-weight: 700;
	        color: #4F4F4F;
		    text-align: center;
		}
		.review_cancel_items > button:nth-child(2){
		    color: #ff7100;
		}
		.review_cancel_items > button:hover{
			background-color:#EDEDED;
		}
		
	</style>
</head>
<body>
	<div id="review_writingpage">
		<div class="review_writingpage_title">
			<strong class="fl review_writingpage_restaurant_name">?????????????????????</strong>
			<div class="fl review_writingpage_restaurant_submessagewrap">
				<span class="review_writingpage_restaurant_submessage">??? ?????? ????????? ????????? ????????????.</span>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="review_writingpage_itemwrap">
			<div class="review_writingpage_content">
				<div>
					<div class="review_writingpage_contentwrap1">
						<div class="review_writingpage_contentwrap2">
							<div class="review_writingpage_contentwrap3">
								<div class="review_writingpage_tastylike">
									<div>
										<button class="tastylike active">
											<div class="fl tastylike_good"></div>
											<span class="fl tastylike_content">?????????</span>
											<div style="clear:both;"></div>
										</button>
										<button class="tastylike">
											<div class="fl tastylike_notbad"></div>
											<span class="fl tastylike_content">?????????</span>
											<div style="clear:both;"></div>
										</button>
										<button class="tastylike">
											<div class="fl tastylike_bad"></div>
											<span class="fl tastylike_content">?????????</span>
											<div style="clear:both;"></div>
										</button>
									</div>
								</div>
								<textarea class="review_content" maxlength="10000" placeholder="????????????, ???????????? ????????? ???????????????? ????????? ???????????? ???????????? ????????????!" value="0"></textarea>
							</div>	<!-- review_writingpage_contentwrap3 out -->
							<div class="fr review_text_length">
								<div id="review_text_length_count" class="fl">0</div>
								<div class="fl">&nbsp/&nbsp10,000</div>
								<div style="clear:both;"></div>
							</div>
						    <div style="clear:both;"></div>
						</div>	<!-- review_writingpage_contentwrap2 out -->
	 				</div> <!-- review_writingpage_contentwrap1 out -->
				</div>
			</div>	<!-- review_writingpage_content out -->
			<div class="review_writingpage_imgwrap">
				<div id="review_imgwrap">
 					<div class="fl review_img">
						<div class="review_img_plus1">
							<div class="dark">
								<div class="close_icon"></div>
								<div class="widely_icon"></div>
							</div>
						</div>
					</div>
					<div class="fl review_img">
						<div class="review_img_plus2"></div>
					</div>
					<div class="fl review_img">
						<button class="review_img_button">
							<div class="review_img_plus_icon"></div>
						</button>
						<div class="review_img_countwrap">
							<div id="review_img_count" class="fl">0</div>
							<div class="fl">&nbsp/&nbsp30</div>
							<div style="clear:both;"></div>
						</div>
					</div>
					 <div style="clear:both;"></div>
				</div>
			</div>	<!-- review_writingpage_imgwrap out -->
		</div>	<!-- review_writingpage_itemwrap out -->
		<div class="review_writingpage_buttons">
			<button class="review_later_button_Deactive">????????? ????????????</button>
			<div class="review_writing_button_wrap">
				<button  class="review_cancel_button">??????</button>
				<button class="review_summit_button review_summit_button_Deactive">?????? ?????????</button>
			</div>
		</div>	<!-- review_writingpage_buttons out  -->
		
	</div> <!-- review_writingpage out-->
	<div class="review_cancel_background_dark">
		<div class="review_cancelWrap">
			<div class = "review_cancel_content"> ?????? ????????? ????????????????????????? <br/> ?????? ???, ?????? ????????? ????????? ???????????????.</div>
			<div class = "review_cancel_items">
				<button class = "review_cancel_btn">?????? ?????? ??????</button>
				<button class = "review_cancel_btn">?????? ?????? ??????</button>
			</div>
		</div>
	</div>
 	<script>
		$(function(){
			$(".tastylike").click( function(){
				idx = $(".tastylike").index($(this)); 
				$(".tastylike").each(function(p_idx,obj) {
					if(idx==p_idx) {
						$(this).addClass('active');
					} else {
						$(this).removeClass('active');
					}
				});
			});
			$(".review_content").on("keyup", function() { 
				//console.log($(this).val().length);
				// textarea ????????? ???????????? ?????? : $(this).val().length
				var write_content = $(this).val().length;
				
				if( write_content >= 1 ){
					$(this).parents("#review_writingpage").find(".review_later_button_Deactive").addClass('review_later_button');
					$(this).parents("#review_writingpage").find(".review_later_button").removeClass('review_later_button_Deactive');
					$(this).parents("#review_writingpage").find(".review_summit_button").removeClass('review_summit_button_Deactive');
					
				} else if (write_content == 0){
					$(this).parents("#review_writingpage").find(".review_later_button").addClass('review_later_button_Deactive');
					$(this).parents("#review_writingpage").find(".review_later_button_Deactive").removeClass('review_later_button');
					$(this).parents("#review_writingpage").find(".review_summit_button").addClass('review_summit_button_Deactive');
				}

				$("#review_text_length_count").text(write_content);
				//alert( $(".review_img > div").length-1 );
				// ????????? ????????? ?????? : $(".review_img > div").length-1
/* 				var img_plus = $(".review_img > div").length-1; 
				if ( img_plus >= 1){
					$(this).parents("#review_writingpage").find(".review_later_button_Deative").addClass('review_later_button');
				} else if ( img_plus == 0 ){
					$(this).parents("#review_writingpage").find(".review_later_button_Deative").removewClass('review_later_button');
				} */
			});
 			$(".review_content").on("keypress", function() { 
				var write_content = $(this).val().length;
				
				if( write_content >= 1 ){
					$(this).parents("#review_writingpage").find(".review_later_button_Deactive").addClass('review_later_button');
					$(this).parents("#review_writingpage").find(".review_later_button").removeClass('review_later_button_Deactive');
					$(this).parents("#review_writingpage").find(".review_summit_button").removeClass('review_summit_button_Deactive');
					
				} else if (write_content == 0){
					$(this).parents("#review_writingpage").find(".review_later_button").addClass('review_later_button_Deactive');
					$(this).parents("#review_writingpage").find(".review_later_button_Deactive").removeClass('review_later_button');
					$(this).parents("#review_writingpage").find(".review_summit_button").addClass('review_summit_button_Deactive');
				}
				$("#review_text_length_count").text(write_content);
					
			});
			$(".review_content").on("keydown", function() { 
				var write_content = $(this).val().length;
				$("#review_text_length_count").text(write_content);
			});
			
			$("#review_img_count").text( $(".review_img > div").length-1 );
			//$(".review_content").val().length
			
			$(".review_cancel_button").click( function(){
				$(".review_cancel_background_dark").css({ display:"block" });
			});
			$(".review_cancel_btn").click( function(){
				$(".review_cancel_background_dark").css({ display:"none" });
			});
			$(".review_cancel_btn").eq(1).click( function(){
				location.href = "http://localhost:9090/WebProject1/mango/mango_details.html";
			});
		});		
	</script>
</body>
</html>