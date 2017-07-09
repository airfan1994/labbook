<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>网研院会议室预定系统</title>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=GQIfBgSoxpM2YEXp8twKBn7Iq2tnM8WP&s=1"></script> 
	</head>
	<body style="background-color: #FFFFFF;">
	
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">网研院会议室预定系统</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath}/labbook/index.action">预定房间 <span class="sr-only">(current)</span></a></li>
				<li><a href="${pageContext.request.contextPath}/user/list.action">管理用户</a></li>
				<li><a href="#">操作日志</a></li>
			  </ul>
			  
			  <ul class="nav navbar-nav navbar-right">
				<li><a>欢迎${user.nickname}老师</a></li>
				<li><a href="${pageContext.request.contextPath}/user/chnpwd.action">修改密码</a></li>
				<li><a href="${pageContext.request.contextPath}/user/logout.action">登出</a></li>
			  </ul>
			</div>
		  </div>
		</nav>
		
		
		
		<div id="part1" class="row" >
			  <div class="col-xs-1 col-md-1" style="height:100%;"></div>
			  <div class="col-xs-1 col-md-1" style="height:100%;">
			  </div>
			  <div class="col-xs-8 col-md-8"  align="center">
					<table class="table table-bordered">
  			
						<caption style="text-align:center;color:black;font-weight:bold;font-size:30px">510会议室(本周  6月26日-7月2日)</caption>
						<thead>
							<tr>
								<th></th>
								<th>8-9 </th>
								<th>9-10</th>
								<th>10-11</th>
								<th>11-12</th>
								<th>12-13</th>
								<th>13-14</th>
								<th>14-15</th>
								<th>15-16</th>
								<th>16-17</th>
								<th>17-18</th>
								<th>18-19</th>
								<th>19-20</th>
								<th>20-21</th>
								<th>21-22</th>
								
							</tr> 
						</thead>
						<tbody>
								
								<tr data-day="1" class="odd">
									<th>周二</th>
									<td id="td108">hello</td>
									<td id="td109">hello</td>
									<td id="td110">hello</td>
									<td id="td111">hello</td>
									<td id="td112">hello</td>
									<td id="td113">hello</td>
									<td id="td114">hello</td>
									<td id="td115">hello</td>
									<td id="td116">hello</td>
									<td id="td117">hello</td>
									<td id="td118">hello</td>
									<td id="td119">hello</td>
									<td id="td120">hello</td>
									<td id="td121">hello</td>
								</tr>
								
								<tr data-day="2" class="odd">
									<th>周二</th>
									<td id="td208">hello</td>
									<td id="td209">hello</td>
									<td id="td210">hello</td>
									<td id="td211">hello</td>
									<td id="td212">hello</td>
									<td id="td213">hello</td>
									<td id="td214">hello</td>
									<td id="td215">hello</td>
									<td id="td216">hello</td>
									<td id="td217">hello</td>
									<td id="td218">hello</td>
									<td id="td219">hello</td>
									<td id="td220">hello</td>
									<td id="td221">hello</td>
								</tr>
								
								<tr data-day="3" class="odd">
									<th>周三</th>
									<td id="td308">hello</td>
									<td id="td309">hello</td>
									<td id="td310">hello</td>
									<td id="td311">hello</td>
									<td id="td312">hello</td>
									<td id="td313">hello</td>
									<td id="td314">hello</td>
									<td id="td315">hello</td>
									<td id="td316">hello</td>
									<td id="td317">hello</td>
									<td id="td318">hello</td>
									<td id="td319">hello</td>
									<td id="td320">hello</td>
									<td id="td321">hello</td>
								</tr>
								
								<tr data-day="4" class="odd">
									<th>周四</th>
									<td id="td408">hello</td>
									<td id="td409">hello</td>
									<td id="td410">hello</td>
									<td id="td411">hello</td>
									<td id="td412">hello</td>
									<td id="td413">hello</td>
									<td id="td414">hello</td>
									<td id="td415">hello</td>
									<td id="td416">hello</td>
									<td id="td417">hello</td>
									<td id="td418">hello</td>
									<td id="td419">hello</td>
									<td id="td420">hello</td>
									<td id="td421">hello</td>
								</tr>
								
								<tr data-day="5" class="odd">
									<th>周五</th>
									<td id="td508">hello</td>
									<td id="td509">hello</td>
									<td id="td510">hello</td>
									<td id="td511">hello</td>
									<td id="td512">hello</td>
									<td id="td513">hello</td>
									<td id="td514">hello</td>
									<td id="td515">hello</td>
									<td id="td516">hello</td>
									<td id="td517">hello</td>
									<td id="td518">hello</td>
									<td id="td519">hello</td>
									<td id="td520">hello</td>
									<td id="td521">hello</td>
								</tr>
								
								<tr data-day="6" class="odd">
									<th>周六</th>
									<td id="td608">h</td>
									<td id="td609">hello</td>
									<td id="td610">hello</td>
									<td id="td611">hello</td>
									<td id="td612">hello</td>
									<td id="td613">hello</td>
									<td id="td614">hello</td>
									<td id="td615">hello</td>
									<td id="td616">hello</td>
									<td id="td617">hello</td>
									<td id="td618">hello</td>
									<td id="td619">hello</td>
									<td id="td620">hello</td>
									<td id="td621">hello</td>
								</tr>
								
								<tr data-day="7" class="odd">
									<th>周日</th>
									<td id="td708"></td>
									<td id="td709">hello</td>
									<td id="td710">hello</td>
									<td id="td711">hello</td>
									<td id="td712">hello</td>
									<td id="td713">hello</td>
									<td id="td714">hello</td>
									<td id="td715">hello</td>
									<td id="td716">hello</td>
									<td id="td717">hello</td>
									<td id="td718">hello</td>
									<td id="td719">hello</td>
									<td id="td720">hello</td>
									<td id="td721">hello</td>
								</tr>
								
						</tbody>
		    
					</table>
			  </div>
			  <div class="col-xs-1 col-md-1"  style="height:100%;">
			  </div>
			  <div class="col-xs-1 col-md-1"  style="height:100%;"></div>
		</div>
		
    </body>
</html>