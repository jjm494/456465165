<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<%
String bgPath = config.getServletContext().getRealPath("/WEB-INF/blog/background/"); //백그라운드 이미지 경로
String hdPath = config.getServletContext().getRealPath("/WEB-INF/blog/header/"); //헤더 이미지 경로
%>	
<c:set var = "bg" value="<%=bgPath%>"/>
<c:set var = "hd" value="<%=hdPath%>"/>
<section>
	<article>
		<h1>블로그 만들기<img src="images/2step.jpg" align="right" width="150" height="50"></h1>
		<h2>2단계:블로그 꾸미기</h2>
		<form action="blogMake2pro.blog" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td>스킨</td>
					<td>스킨보기(라디오버튼)1,2,3,4</td>
					<td>마음에 드는 스킨으로<br> 블로그를 꾸며보세요<br>(스킨선택시 블로그 배경,타이틀 이미지는 자동으로 변경됩니다)</td>
				</tr>
				<tr>
					<td>배경 이미지</td>
					<td></td>
					<td>
					<input type="file" id="bg" name="background">
					<input type="button" value="등록" onclick="document.getElementById('bg').click();">
					<input type="button" value="삭제">
					</td>
				</tr>
				<tr>
					<td>타이틀 이미지</td>
					<td></td>
					<td>
					<input type="file" id="hd" name="header">
					<input type="button" value="등록" onclick="document.getElementById('hd').click();">
					<input type="button" value="삭제">
					</td>
				</tr>
				<tr>
					<td>레이아웃</td>
					<td>보기 1, 2, 3, 4</td>
					<td>
					레이아웃은 추후에 변경 가능합니다.
					</td>
				</tr>
				<tr>
					<td colspan="3"><hr size="10">
					<input type="submit" value="만들기">
					<input type="reset" value="취소">
					</td>
				</tr>				
			</table>
		</form>	
	</article>  
</section>
<%@ include file="aside.jsp"%>
<%@ include file="footer.jsp"%>