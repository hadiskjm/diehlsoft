<!-- resolucion de Carmen 1280x800 -->
<%@ taglib uri="/WEB-INF/tld-diehl/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld-diehl/struts-html.tld" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
</head>
<body>
  <div class='csslider1 autoplay '>
		<input name="cs_anchor1" id='cs_slide1_0' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_slide1_1' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_slide1_2' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_slide1_3' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_slide1_4' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_slide1_5' type="radio" class='cs_anchor slide' >
		<input name="cs_anchor1" id='cs_play1' type="radio" class='cs_anchor' checked>
		<input name="cs_anchor1" id='cs_pause1_0' type="radio" class='cs_anchor pause'>
		<input name="cs_anchor1" id='cs_pause1_1' type="radio" class='cs_anchor pause'>
		<input name="cs_anchor1" id='cs_pause1_2' type="radio" class='cs_anchor pause'>
		<input name="cs_anchor1" id='cs_pause1_3' type="radio" class='cs_anchor pause'>
		<input name="cs_anchor1" id='cs_pause1_4' type="radio" class='cs_anchor pause'>
		<input name="cs_anchor1" id='cs_pause1_5' type="radio" class='cs_anchor pause'>
		<ul>
			<li class="cs_skeleton"><img src="image/imgslider/1.jpg" style="width: 100%;"></li>
			<li class='num0 img slide'> <img src='image/imgslider/1.jpg' alt='1' title='1' /></li>
			<li class='num1 img slide'> <img src='image/imgslider/2.jpg' alt='2' title='2' /></li>
			<li class='num2 img slide'> <img src='image/imgslider/3.jpg' alt='3' title='3' /></li>
			<li class='num3 img slide'> <img src='image/imgslider/4.jpg' alt='4' title='4' /></li>
			<li class='num4 img slide'> <img src='image/imgslider/5.jpg' alt='5' title='5' /></li>
			<li class='num5 img slide'> <img src='image/imgslider/6.jpg' alt='6' title='6' /></li>
		</ul>
		<div class='cs_description'>
			<label class='num0'><span class="cs_title"><span class="cs_wrapper"></span></span></label>
			<label class='num1'><span class="cs_title"><span class="cs_wrapper"></span></span></label>
			<label class='num2'><span class="cs_title"><span class="cs_wrapper"></span></span></label>
			<label class='num3'><span class="cs_title"><span class="cs_wrapper"></span></span></label>
			<label class='num4'><span class="cs_title"><span class="cs_wrapper"></span></span></label>
			<label class='num5'><span class="cs_title"><span class="cs_wrapper"></span></span></label>
		</div>
		<div class='cs_play_pause'>
			<label class='cs_play' for='cs_play1'><span><i></i><b></b></span></label>
			<label class='cs_pause num0' for='cs_pause1_0'><span><i></i><b></b></span></label>
			<label class='cs_pause num1' for='cs_pause1_1'><span><i></i><b></b></span></label>
			<label class='cs_pause num2' for='cs_pause1_2'><span><i></i><b></b></span></label>
			<label class='cs_pause num3' for='cs_pause1_3'><span><i></i><b></b></span></label>
			<label class='cs_pause num4' for='cs_pause1_4'><span><i></i><b></b></span></label>
			<label class='cs_pause num5' for='cs_pause1_5'><span><i></i><b></b></span></label>
			</div>
		<div class='cs_arrowprev'>
			<label class='num0' for='cs_slide1_0'><span><i></i><b></b></span></label>
			<label class='num1' for='cs_slide1_1'><span><i></i><b></b></span></label>
			<label class='num2' for='cs_slide1_2'><span><i></i><b></b></span></label>
			<label class='num3' for='cs_slide1_3'><span><i></i><b></b></span></label>
			<label class='num4' for='cs_slide1_4'><span><i></i><b></b></span></label>
			<label class='num5' for='cs_slide1_5'><span><i></i><b></b></span></label>
		</div>
		<div class='cs_arrownext'>
			<label class='num0' for='cs_slide1_0'><span><i></i><b></b></span></label>
			<label class='num1' for='cs_slide1_1'><span><i></i><b></b></span></label>
			<label class='num2' for='cs_slide1_2'><span><i></i><b></b></span></label>
			<label class='num3' for='cs_slide1_3'><span><i></i><b></b></span></label>
			<label class='num4' for='cs_slide1_4'><span><i></i><b></b></span></label>
			<label class='num5' for='cs_slide1_5'><span><i></i><b></b></span></label>
		</div>
		<div class='cs_bullets'>
			<label class='num0' for='cs_slide1_0'> <span class='cs_point'></span>
				<span class='cs_thumb'><img src='image/imgslidericon/1.jpg' alt='1' title='1' /></span></label>
			<label class='num1' for='cs_slide1_1'> <span class='cs_point'></span>
				<span class='cs_thumb'><img src='image/imgslidericon/2.jpg' alt='2' title='2' /></span></label>
			<label class='num2' for='cs_slide1_2'> <span class='cs_point'></span>
				<span class='cs_thumb'><img src='image/imgslidericon/3.jpg' alt='3' title='3' /></span></label>
			<label class='num3' for='cs_slide1_3'> <span class='cs_point'></span>
				<span class='cs_thumb'><img src='image/imgslidericon/4.jpg' alt='4' title='4' /></span></label>
			<label class='num4' for='cs_slide1_4'> <span class='cs_point'></span>
				<span class='cs_thumb'><img src='image/imgslidericon/5.jpg' alt='5' title='5' /></span></label>
			<label class='num5' for='cs_slide1_5'> <span class='cs_point'></span>
				<span class='cs_thumb'><img src='image/imgslidericon/6.jpg' alt='6' title='6' /></span></label>
		</div>
		</div>
		<!-- End cssSlider.com -->

</body>
</html>