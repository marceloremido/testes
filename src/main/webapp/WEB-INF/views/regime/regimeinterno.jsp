<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="for" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style type="text/css">
	
	.pagRegime{color: #fff !important;}
	.gtco-nav {background-color: rgba(255,255,255,0.5) !important}
	

</style>

<c:import url="../comum_/header.jsp" />


<header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image:url(resources/images/21.jpg);">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t">
						<div class="display-tc animated bounceInDown" data-animate-effect="fadeIn">
							<h1 style="margin-top: -50px">REGIMENTO SMBR</h1>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<div class="gtco-section">
		<div class="gtco-container">
			<div class="row animated fadeInDown">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>REGRAS</h2>
					<p>Para mantermos a organização do comando e fazermos um bom jogo, todos os membros deverão observar as regras e respeita-las, caso algum membro seja pego descumprindo
					  algumas delas, será levado ao conselho, e dependendo da gravidade será expulso do comando.</p>
				</div>
			</div>
			<div class="row animated bounceInLeft" data-animate-effect="fadeIn">
				<div class="col-md-6">
					<c:forEach items="${regras}" var="regras">
						<div class="feature-left animated bounceInLeft" data-animate-effect="fadeIn">
							<span class="icon">
								<i class="icon-check"></i>
							</span>
							<div class="feature-copy">
								<h3>${regras.idRegimento} - ${regras.tituloRegimento}</h3>
								<p>${regras.subTituloDescricao}</p>
							</div>
						</div>
    				</c:forEach>
				</div>
				<div class="col-md-6">
					<c:forEach items="${regras2}" var="regras2">
					<div class="feature-left animated bounceInLeft" data-animate-effect="fadeIn">
							<span class="icon">
								<i class="icon-check"></i>
							</span>
							<div class="feature-copy">
								<h3>${regras2.idRegimento} - ${regras2.tituloRegimento}</h3>
								<p>${regras2.subTituloDescricao}</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<div class="gtco-cover gtco-cover-sm" style="background-image:url(resources/images/31.jpg);">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h1>regra para vida</h1>
							<h2>"Não começe uma batalha se não estiver disposto a entrar numa guerra."</a></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <div id="gtco-team" class="gtco-section">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Leadership</h2>
				</div>
			</div>
			<div class="row row-pb-md">
				<div class="col-md-4 animate-box" data-animate-effect="fadeIn">
					<div class="gtco-staff">
						<img src="images/person_1.jpg" alt="Free HTML5 Templates by gettemplates.co">
						<h3>Jean Smith</h3>
						<strong class="role">Web Designer</strong>
						<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat velit eaque aspernatur expedita. Possimus itaque adipisci.</p>
						<ul class="gtco-social-icons">
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 animate-box" data-animate-effect="fadeIn">
					<div class="gtco-staff">
						<img src="images/person_2.jpg" alt="Free HTML5 Templates by gettemplates.co">
						<h3>Hush Raven</h3>
						<strong class="role">Front-end Developer</strong>
						<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat velit eaque aspernatur expedita. Possimus itaque adipisci.</p>
						<ul class="gtco-social-icons">
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 animate-box" data-animate-effect="fadeIn">
					<div class="gtco-staff">
						<img src="images/person_3.jpg" alt="Free HTML5 Templates by gettemplates.co">
						<h3>Alex King</h3>
						<strong class="role">Back-end Developer</strong>
						<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat velit eaque aspernatur expedita. Possimus itaque adipisci.</p>
						<ul class="gtco-social-icons">
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4 animate-box" data-animate-effect="fadeIn">
					<div class="gtco-staff">
						<img src="images/person_1.jpg" alt="Free HTML5 Templates by gettemplates.co">
						<h3>Jean Smith</h3>
						<strong class="role">Web Designer</strong>
						<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat velit eaque aspernatur expedita. Possimus itaque adipisci.</p>
						<ul class="gtco-social-icons">
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 animate-box" data-animate-effect="fadeIn">
					<div class="gtco-staff">
						<img src="images/person_2.jpg" alt="Free HTML5 Templates by gettemplates.co">
						<h3>Hush Raven</h3>
						<strong class="role">Front-end Developer</strong>
						<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat velit eaque aspernatur expedita. Possimus itaque adipisci.</p>
						<ul class="gtco-social-icons">
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 animate-box" data-animate-effect="fadeIn">
					<div class="gtco-staff">
						<img src="images/person_3.jpg" alt="Free HTML5 Templates by gettemplates.co">
						<h3>Alex King</h3>
						<strong class="role">Back-end Developer</strong>
						<p>Quos quia provident consequuntur culpa facere ratione maxime commodi voluptates id repellat velit eaque aspernatur expedita. Possimus itaque adipisci.</p>
						<ul class="gtco-social-icons">
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</div> -->
	

	<div id="gtco-subscribe">
		<div class="gtco-container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
					<h2>Fale conosco</h2>
					<p>Em caso de dúvidas, mande-nos um email.</p>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-12">
					<form class="form-inline">
						<div class="col-md-4 col-sm-4">
							<div class="form-group">
								<label for="email" class="sr-only">Email</label>
								<input type="email" class="form-control" id="email" placeholder="Your email">
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<div class="form-group">
								<label for="name" class="sr-only">Name</label>
								<input type="text" class="form-control" id="name" placeholder="Your name">
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
							<button type="submit" class="btn btn-default btn-block">Subscribe</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- <footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-pb-md">
				<div class="col-md-2 col-sm-4 col-xs-6 ">
					<ul class="gtco-footer-links">
						<li><a href="#">About</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">Creative Design</a></li>
						<li><a href="#">Branding</a></li>
						<li><a href="#">Illustration</a></li>
						<li><a href="#">Subscribe</a></li>
						<li><a href="#">Monthly Event</a></li>
					</ul>
				</div>
				
				<div class="clearfix visible-xs-block"></div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">About</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>

				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">Shop</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Testimonials</a></li>
						<li><a href="#">Handbook</a></li>
						<li><a href="#">Held Desk</a></li>
					</ul>
				</div>

				<div class="clearfix visible-xs-block"></div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">Find Designers</a></li>
						<li><a href="#">Find Deelopers</a></li>
						<li><a href="#">Teams</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">API</a></li>
					</ul>
				</div>

				<div class="col-md-2 col-sm-4 col-xs-6">
					<ul class="gtco-footer-links">
						<li><a href="#">About</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms</a></li>
						<li><a href="#">Meetups</a></li>
					</ul>
				</div>
				
			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small> 
						<small class="block">Designed by <a href="http://gettemplates.co/" target="_blank">GetTemplates.co</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a></small>
					</p>
					<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer> -->
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="resources/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="resources/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="resources/js/main.js"></script>

	</body>
</html>