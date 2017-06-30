<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
	<head>
		<meta charset="utf-8"/>
		<title>GooglePlus</title>
		<link rel="stylesheet" media="all" href="css/style.css"/>
		<link rel="stylesheet" href="css.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		
		<!-- jstl -->
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		
		<!-- 이미지 경로 부분 -->
		<c:set var="newsProfileUpPath" value="resources/googlePlus/images/contents/profile"/>
		
		<!-- JS -->
		<script src="js/jquery-1.9.0.js" type="text/javascript"></script>
		<script src="js/jquery-1.6.4.min.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/custom.js"></script>
		<script src="js/tabs.js"></script>
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  /> 
		<script src="js/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="css/superfish.css" /> 
		<script  src="js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="js/superfish-1.4.8/js/superfish.js"></script>
		<script  src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,300' rel='stylesheet' type='text/css'>
		
		<!-- Flex Slider -->
		<link rel="stylesheet" href="css/flexslider.css" >
		<script src="js/jquery.flexslider-min.js"></script>
		<!-- ENDS Flex Slider -->
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="css/lessframework.css"/>
		
		<!-- modernizr -->
		<script src="js/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="css/skin.css"/>
		
		<script type="text/javascript">
			$(document).ready(function(){
				var subMenuCount = 0;
				$('div.subMenuDiv').mouseup(function(e){
					if(subMenuCount==0){
						if(e.which=='1'){
							$(this).find('table.jjm494').stop().slideDown(200);
						}
						subMenuCount = 1;
					} else {
						if(e.which=='1'){
							$(this).find('table.jjm494').stop().slideUp(200);
						}
						subMenuCount = 0;
					}
				});
				var count = 0;
				$('a.test').click(function(){
					if(count==0){
						$('table.type04').show('fase');
						count = 1;
					} else if(count==1){
						$('table.type04').hide('fase');
						count = 0;
					}
				});
				var profileCount = 0;
				$('a.profile').click(function(){
					if(profileCount==0){
						$('table.profile').show('fase');
						profileCount = 1;
					} else if(profileCount==1){
						$('table.profile').hide('fase');
						profileCount = 0;
					}
				});
			});
			
			
			$(function(){
			    var UI = {
			      init : function(){
			        this.quickMenuFn();
			        this.topBtn();
			      }, 
			      initialize : function(){
			        this.id = {
			          target : {quick : '#quick', stickyTop : '#footer'},
			          topBtnClass : 'btn_top'
			        };
			        this.init();
			      },      
			      quickMenuFn : function(){
			        var quick = $(this.id.target.quick);
			        var qTop = parseInt(quick.css('top'));

			        $(window).scroll(function(){
			          var winTop =      $(window).scrollTop();

			          quick.stop().animate({
			            top : winTop + qTop
			          },400);

			        })
			      },   
			      topBtn : function(){
			        var btnLocation = $('.' + this.id.topBtnClass);
			        var timerId = 0;
			        $(window).on('scroll',function(){
			          var winTop = $(window).scrollTop();
			          if(winTop > 200) {
			            btnLocation.fadeIn();
			            clearInterval(timerId);
			            timerId = setInterval(btnEffet, 2000);
			          } else {
			            btnLocation.fadeOut();
			            clearInterval(timerId);
			          }
			        });
			        function btnEffet(){
			          btnLocation.fadeTo('300',0.3).fadeTo('300',1);
			        }
			        this.scrollTop(btnLocation);
			      },     
			      scrollTop : function(eTarget, speed) {
			        var speed = speed || null;
			        eTarget.on('click',function(){
			          $('html, body').animate({
			            scrollTop : $("body").offset().top
			          }, speed)
			        })
			      }
			    }   
			    $(function(){               
			      UI.initialize();
			    })     
			})
		</script>
		
	</head>
	<body lang="en" onContextmenu="return false">
	
		<!-- 헤더 시작 -->
		<header class="clearfix" onContextmenu="return false">
		
			<!-- 상단 열리는 메뉴 시작 -->
			<div id="top-widget-holder">
				<div class="wrapper">
					<div id="top-widget">
						<div class="padding">
						<ul  class="widget-cols clearfix">
							<li class="first-col">
								<div class="widget-block">
									<h4>ㅇㅇ</h4>
									<div class="recent-post">
										<a href="#" class="thumb"><img src="resources/googlePlus/img/dummies/54x54.gif" alt="Post" /></a>
										<div class="post-head">
											<a href="#">ㅇㅇ</a><span>날짜</span>
										</div>
									</div>
									<div class="recent-post">
										<a href="#" class="thumb"><img src="resources/googlePlus/img/dummies/54x54.gif" alt="Post" /></a>
										<div class="post-head">
											<a href="#">ㅇㅇ</a><span>날짜</span>
										</div>
									</div>
									<div class="recent-post">
										<a href="#" class="thumb"><img src="resources/googlePlus/img/dummies/54x54.gif" alt="Post" /></a>
										<div class="post-head">
											<a href="#">ㅇㅇ</a><span>날짜</span>
										</div>
									</div>
								</div>
							</li>
							<li class="second-col">
								<div class="widget-block">
									<h4>글 제목</h4>
									<p>글 내용<a href="#" >링크</a></p>
								</div>
							</li>
							<li class="third-col">
								<div class="widget-block">
									<div id="tweets" class="footer-col tweet">
				         				<h4>ㅇㅇㅇ</h4>
				         			</div>
			         			</div>
			         		</li>
			         		<li class="fourth-col">
								<div class="widget-block">
									<h4>글 제목</h4>
									<p>글내용<a href="#">링크</a></p>
								</div>
							</li>
						</ul>
						</div>
					</div>
				</div>
				<a href="#" id="top-open">Menu</a>
			</div>
			<!-- 상단 열리는 메뉴 끝 -->
			
			<!-- 네비 메뉴 시작 -->
			<div class="wrapper clearfix">
				<a href="#" id="logo">
					<h2><span style="color:white">GooglePlus테스트</span></h2>
				</a>
				<nav>
					<ul id="nav" class="sf-menu">
						<li class="current-menu-item"><a href="googlePlusIndex">HOME</a></li>
						<li><a href="#">소식모음</a>
							<ul>
								<li><a href="googlePlusNewsProfileList">추천 소식 모음</a></li>
								<li><a href="googlePlusNewsFollowList?">팔로우 중</a></li>      
								<li><a href="googlePlusNewsProfileWriting">내가 만든 소식 모음</a></li>
							</ul>
						</li>
						<li><a href="#">커뮤니티</a>
							<ul>
								<li><a href="#">추천 커뮤니티</a></li>
								<li><a href="#">멤버</a></li>
								<li><a href="#">내가 소유한 커뮤니티</a></li>
							
							</ul>
						</li>
						<li><a href="#">프로필</a></li>
						<li><a href="#">사용자</a></li>
						<li><a href="#">알림</a></li>
					</ul>
					<div id="combo-holder"></div>
				</nav>
			</div>
			<!-- 네비 메뉴 끝 -->
			
		</header>
		<!-- 헤더 끝 -->
<!-- 상단 부분 -->

		<!-- MAIN -->
		
		<div id="main">	
			<div class="wrapper clearfix">
			
				

				<!-- 소식 게시물 리스트 시작 -->
	        	<div id="posts-list">
	        	
	        		<h2 class="page-heading"><span>소식게시판</span></h2>	
	        	
					
					<article class="format-standard">
						<div class="entry-date"><div class="number">14</div> <div class="year">06, 2017</div></div>
						<div class="feature-image">
							<a href="img/slides/01.jpg" data-rel="prettyPhoto"><img src="img/slides/01.jpg" alt="Alt text" /></a>
						</div>
						<h2  class="post-heading"><a href="#">글 제목</a></h2>
						<div class="excerpt">글 내용ㅂㅈ업쟈앚어대-ㅏㅏ아아재아애ㅏㅏㅐㅈ베ㅐㅇ제ㅐ롭재래뱌ㅓ래버래ㅑㅂ저랴ㅐㅂ저랴ㅐㅓㅂ재러배ㅑ러ㅐㅑ
						</div>
						<a href="single.html" class="read-more">더보기 &#8594;</a>
<div class="ttt">
						<div class="meta">
							<div class="categories">In <a href="#">팔로우 수 </a>, <a href="#">ㅇㅂㅈ</a></div>
							<div class="comments"><a href="javascript:;" class="test">5 댓글수 </a></div>
							<div class="user"><a href="javascript:;" class="profile">사용자 정보보기</a></div>
						</div>
						
						
						
						
<!-- 댓글 -->
<table class="type04">
    <tr>
        <th scope="row">정재문1</th>
        <td>
        	내용이 들어갑니다. 
        	<div class="subMenuDiv">
        		<a href="javascript:;" class="asdasd">답글</a>
        		<form>
					<table class="jjm494">
					    <tr>
					        <th scope="row">장지문</th>
					        <td>
					        	<input type="text"> <input type="submit" value="등록">
							</td>
					    </tr>
					</table>
				</form>
        	</div>
        </td>
    </tr>
    <tr>
        <th scope="row">정재재</th>
        <td>
        	내용이 들어갑니다. 
        	<div class="subMenuDiv">
        		<a href="javascript:;">답글</a>
        		<table class="jjm494">
				    <tr>
				        <th scope="row">재재문</th>
				        <td>
				        	<input type="text"> <input type="submit" value="등록">
						</td>
				    </tr>
				</table>
        	</div>
        </td>
    </tr>
    <tr>
        <th scope="row">문재정</th>
        <td>
        	내용이 들어갑니다. 
        	<div class="subMenuDiv">
        		<a href="javascript:;">답글</a>
        		<table class="jjm494">
				    <tr>
				        <th scope="row">문문정</th>
				        <td>
				        	<input type="text"> <input type="submit" value="등록">
						</td>
				    </tr>
				</table>
        	</div>
        </td>
    </tr>
</table>

<table class="type04">
    <tr>
        <th scope="row">정재문</th>
        <td>
        	<input type="text"> <input type="button" value="등록">
		</td>
    </tr>
</table>
<!-- 댓글 끝 -->
						
						
<table class="profile">
    <tr>
        <th scope="row">프로필 정보</th>
        <td>
        	dasdwdwa
		</td>
    </tr>
</table>	
						
</div>





					</article>
					
					
					
					
					
			<form name="f" id="contactForm" action="" method="post" enctype="multipart/form-data">
				<h2 class="page-heading"><span>내 소식 만들기</span></h2>	
				<p></p>
				<fieldset>
					<div>
						<input name="profileName"  id="name" type="text" class="form-poshytip" title="이름을 입력하세요" />
						<label>이름</label>
					</div>
					<div>
						<select class="selectOption" name="checkOption">
							<option>공개여부를 선택하세요.</option>
							<option>공개</option>
							<option>비공개</option>
						</select>
					</div><br>
					<div>
						<input name="photo"  id="web" type="file" class="form-poshytip" title="프로필 사진을 등록하세요" />
						<label>프로필 사진</label>
					</div><br>
					<div>
						<textarea  name="profileContents"  id="comments" rows="2" cols="2" class="form-poshytip" title="한줄평을 남기세요"></textarea>
					</div>
					
					<!-- 히든으로 넘어갈 정보들 -->
					<input type="hidden" value="" name="profileId" id="to" />
					<!-- 히든으로 넘어갈 정보들 -->
					
					<p><input type="submit" value="만들기"/></p>
				</fieldset>
			</form>
					
					<!-- 소식 게시물 페이지 처리 시작 -->
					<div class="page-navigation clearfix">
    				<div class="nav-next">
    					<a  href="#">&#8592; 이전 페이지</a>
    				</div>
    				<div class="nav-previous">
    				    <a href="#">다음 페이지 &#8594;</a> 
    				</div>
    				<!--소식 게시물 페이지 처리 끝 -->
    				
    			</div>
	        		
	        		
	        	</div>
	        	<!-- 소식 게시물 리스트 끝 -->
		
				<!-- 사이드 메뉴 -->
	        	<aside id="sidebar">
	        		
	        		<ul>
		        		<li class="block">
			        		<h4>사이드 메뉴</h4>
							<ul>
								<li class="cat-item"><a href="#" title="View all posts">ㅇㅂ즈애브애ㅡㅂ으ㅐ뱌즈ㅐ으배즈아</a></li>
								<li class="cat-item"><a href="#" title="View all posts">2</a></li>
								<li class="cat-item"><a href="#" title="View all posts">3</a></li>
								<li class="cat-item"><a href="#" title="View all posts">4</a></li>
								<li class="cat-item"><a href="#" title="View all posts">5</a></li>
								<li class="cat-item"><a href="#" title="View all posts">6</a></li>
								<li class="cat-item"><a href="#" title="View all posts">7</a></li>
								<li class="cat-item"><a href="#" title="View all posts">8</a></li>
							</ul>
		        		</li>
		        		
		        		<li class="block">
			        		<h4>하단 메뉴</h4>
							<ul>
								<li class="cat-item"><a href="#" title="View all posts">9</a></li>
								<li class="cat-item"><a href="#" title="View all posts">11</a></li>
								<li class="cat-item"><a href="#" title="View all posts">22</a></li>
							</ul>
		        		</li>
	        		
	        		</ul>
	        		
	        		<em id="corner"></em>
	        	</aside>
				<!-- 사이드 메뉴 끝 -->
				
				
	        	
			</div>		<div id="quick"><a href="#">▲</a></div>
		</div>
		<!-- ENDS MAIN -->

<!-- 하단 부분 -->