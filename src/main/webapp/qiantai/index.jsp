<%@page language="java" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.scheme }://${pageContext.request.serverName }:${pageContext.request.serverPort }${pageContext.request.contextPath }/"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>生生不息</title>
<meta content="" name=keywords />
<meta content="" name=description />
<link href="qiantai/css/dingcanall.css" rel="stylesheet" type="text/css" />
<link href="qiantai/css/newslist_time2.css" rel="stylesheet" type="text/css" />	
<link href="qiantai/css/dingcanche.css" rel="stylesheet" type="text/css" />	
<link href="qiantai/css/dingcanweekmenu.css" rel="stylesheet" type="text/css" />									
</head>

<body style='background: transparent'>
	<!-- （第一次访问的时候）请求Indexservlet（分页查询所有菜品，查询所有公告） -->
	<c:if test="${empty page}">
		<jsp:forward page="/IndexServlet"></jsp:forward>
	</c:if>
	
	<table width="900" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td align="left" valign="top"><jsp:include flush="fasle"
					page="top.jsp" /></td>
		</tr>
		<tr>
			<td height="30"></td>

		</tr>

		<tr>
			<td align="left" valign="top"><table width="100%" border="0"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="59%" align="left" valign="top"><div id='pdv_3606'
								class='pdv_class' title=''
								style='width: 648px; top: 0px; left: 0px; z-index: 12'>
								<div id='spdv_3606' class='pdv_content'
									style='overflow: visible; width: 100%;'>
									<div class="pdv_border"
										style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
										<div style="padding: 0px">
											<div id="dingcanall2">

												<div style="margin-top: 0px; padding: px;">

													<div id="mm_01" class="dingcanall_connow">
														
														<c:forEach items="${page.data }" var="menu">
															<div
																style="margin-top: 10px; margin-left: 30px; float: left;">
																<table>
																	<tr>
																		<td rowspan="5" class="bookPic"><img
																			src="${menu.imgpath}" width="160px" height="140px"
																			 /></td>
																		<td><span>书名:</span></td>
																		<td><span><strong>${menu.name}</strong></span></td>
																	</tr>
																	<tr>
																		<td><span>编号:</span></td>
																		<td><span>${menu.price}</span></td>
																	</tr>
																	<tr>
																		<td><span>售价:</span></td>
																		<td><span>${menu.price1}</span></td>
																	</tr>
																	<tr>
																		<td><span>说明:</span></td>
																		<td><span>${menu.burden}</span></td>
																	</tr>
																	<tr>
																		<td><span>类型:</span></td>
																		<td><span>${menu.typename}</span></td>
																	</tr>
																	<tr>
																		<td colspan="2" style="height: 40px;"><a href="ShoppingCarServlet?action=add&menuId=${menu.id}">加入购物车</a></td>
																		<td></td>
																	</tr>
																</table>
															</div>
														</c:forEach>
														<c:if test="${page.totalPage>0}">
														<div style="clear: both;text-align: center;">
															<span class="left_bt2"> 第<c:out
																	value="${page.curPage}" />页&nbsp;&nbsp; 共<c:out
																	value="${page.totalPage}" />页
															</span>&nbsp;&nbsp;
															<c:choose>
																<c:when test="${page.curPage eq 1}">[首页]</c:when>
																<c:otherwise>
																	<a href="IndexServlet?pageIndex=1">[首页]</a>
																</c:otherwise>
															</c:choose>
															<c:choose>
																<c:when test="${page.curPage eq page.totalPage}">[尾页]</c:when>
																<c:otherwise>
																	<a
																		href="IndexServlet?pageIndex=${page.totalPage }">[尾页]</a>
																</c:otherwise>
															</c:choose>
															<c:choose>
																<c:when test="${page.curPage eq 1}">[上一页]</c:when>
																<c:otherwise>
																	<a
																		href="IndexServlet?pageIndex=${page.curPage-1 }">[上一页]</a>
																</c:otherwise>
															</c:choose>
															<c:choose>
																<c:when test="${page.curPage eq page.totalPage}">[下一页]</c:when>
																<c:otherwise>
																	<a
																		href="IndexServlet?pageIndex=${page.curPage+1 }">[下一页]</a>
																</c:otherwise>
															</c:choose>
														
													</div>
													</c:if>
														
													</div>


												</div>

											</div>
										</div>

										<div id="dingcanall_bottom_left">&nbsp;</div>
										<div id="dingcanall_bottom_right">&nbsp;</div>
										<input type="hidden" name="picw" id="picw" value="150" /> <input
											type="hidden" name="pich" id="pich" value="140" /> <input
											type="hidden" name="fittype" id="fittype" value="auto" />
									</div>
								</div>
							</div>
							</div></td>
						<td width="41%" align="right" valign="top"><table width="243"
								border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td></td>
								</tr>
								<tr>
									<td valign="top"><div id='pdv_' class='pdv_class'
											title='网站公告'
											style='width: 243px; top: 0px; left: 0px; z-index: 3'>
											<div id='spdv_3603' class='pdv_content'
												style='overflow: hidden; width: 100%; height: 100%'>
												<div class="pdv_border"
													style="border: 0px; height: 100%; padding: 0; margin: 0; background: url(base/border/640/images/left.jpg) repeat-y">
													<div
														style="height: 100%; background: url(qiantai/images/right.jpg) right repeat-y">
														<div
															style="height: 43px; background: url(qiantai/images/bg.jpg) 0px 0px no-repeat">
															<div
																style="float: left; font: bold 16px/43px 'Microsoft YaHei', 'SimSun', Arial, Sans-Serif; text-align: left; padding-left: 50px; color: #feab43;">
																公告</div>
															<div
																style="float: right; width: 60px; height: 43px; text-align: right; background: url(qiantai/images/bg.jpg) -840px 0px no-repeat">
															</div>
														</div>
														<div style="margin: 0px 3px; padding: 10px;" align="left">
															

															<ul class="newslist_time2">
																
																	
																	<c:forEach items="${notices}" var="notice">
																		<li class="newslist_time2">
																			<div class="time">${notice.times.substring(0,10)}</div>
																			<a href="${pageContext.request.contextPath}/NoticeServlet?action=selectNoticeById&noticeId=${notice.id}" class="newslist_time2">${notice.name}</a>
																		</li>
																	</c:forEach>
																
																
															</ul>


														</div>
													</div>
												</div>
												<div
													style="margin-top: -10px; height: 10px; line-height: 10px; background: url(qiantai/images/bg.jpg) 0px -220px no-repeat">&nbsp;</div>
												<div
													style="float: right; margin-top: -10px; width: 10px; height: 10px; line-height: 10px; background: url(qiantai/images/bg.jpg) -890px -220px no-repeat">&nbsp;</div>
											</div>
										</div></td>
								</tr>
								<tr>
									<td height="10">&nbsp;</td>
								</tr>
								<tr>
									<td valign="top">
										<div id='pdv_3614' class='pdv_class' title='购物车'
											style='width: 243px; top: 0px; left: 0px; z-index: 2'>
											<div id='spdv_3614' class='pdv_content'
												style='overflow: visible; width: 100%;'>
												<div class="pdv_border"
													style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
													<div
														style="height: 25px; margin: 1px; display: none; background:;">
														<div
															style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
															购物车</div>
														<div
															style="float: right; margin-right: 10px; display: none">
															<a href="-1" style="line-height: 25px; color:">更多</a>
														</div>
													</div>
													<div style="padding: 0px">
														<div id="dingcanche">
															<div id="dingcanche2">
																<div id="dingcanche_top">
																	<div id="dingcanche_top_left">购物车</div>
																	<div id="dingcanche_top_right">&nbsp;</div>
																</div>
																<div id="dcinfo" style="margin: 0px 3px 1px 3px;"></div>
																<table width="100%" border="0" cellspacing="0"
																	style="background: #fef0d3;">
																	<tr>
																		<td align="center">书籍名称</td>
																		<td align="center">单价</td>
																		<td align="center">数量</td>
																		<td align="center"></td>
																	</tr>
																	<c:forEach items="${carList}" var="carItem">
																	<tr>
																		<td align="center">${carItem.name}</td>
																		<td align="center">${carItem.price}</td>
																		<td align="center">${carItem.sums}</td>
																		<td align="center"><a
																			href="ShoppingCarServlet?action=removeOne&id=${carItem.menuId}">取消</a></td>
																	</tr>
																	<!-- 设置属性 -->
																	<c:set var="totalSums" value="${carItem.sums+totalSums}"></c:set>
																	<c:set var="totalMoney" value="${carItem.sums*carItem.price+totalMoney}"></c:set>
																	</c:forEach>

																</table>
																<div style="height: 24px; margin: 5px 3px 1px 3px;">
																	<div
																		style="float: left; line-height: 24px; padding-left: 25px;">小&nbsp;&nbsp;计：</div>
																	<div
																		style="float: right; line-height: 24px; padding-right: 15px;">
																		<font id="allnums" style="color: #ff0000;">${totalSums}</font>本
																	</div>
																	<div
																		style="float: right; line-height: 24px; padding-right: 30px;">
																		<font id="cpprice" style="color: #ff0000;">${totalMoney}</font>元
																	</div>
																</div>
																<!-- 购物车中有数据 -->
																<c:if test="${!empty carList}">
																<div style="height: 30px; margin: 5px 3px 1px 3px;">
																	<table width="100%" border="0" cellspacing="0">
																		<tr>
																			<td align="center" width="40%"></td>
																			<td align="center" width="40%"><a
																				href="UserOrderServlet?action=addOrder"><img
																					src="qiantai/images/canche_submit.gif" border="0" /></a></td>
																			<td align="center" width="40%"><a
																				href="ShoppingCarServlet?action=removeAll"><img
																					src="qiantai/images/quxiao2.gif" border="0" /></a></td>
																		</tr>
																	</table>

																</div>
																</c:if>
															</div>
														</div>
													</div>
													<div id="dingcanche_bottom_left">&nbsp;</div>
													<div id="dingcanche_bottom_right">&nbsp;</div>
													<input type="hidden" name="modnums_b" id="modnums_b"
														value="" />
													
												</div>
											</div>
										</div>
										</div>

									</td>
								</tr>
								<tr>
									<td height="10">&nbsp;</td>
								</tr>
								<tr>
									<td valign="top"><div id='pdv_3613' class='pdv_class'
											title='书单'
											style='width: 243px; top: 0px; left: 0px; z-index: 5'>
											<div id='spdv_3613' class='pdv_content'
												style='overflow: hidden; width: 100%; height: 100%'>
												<div class="pdv_border"
													style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
													<div
														style="height: 25px; margin: 1px; display: none; background:;">
														<div
															style="float: left; margin-left: 12px; line-height: 25px; font-weight: bold; color:">
															书单</div>
														<div
															style="float: right; margin-right: 10px; display: none">
															<a href="-1" style="line-height: 25px; color:">更多</a>
														</div>
													</div>
													<div style="padding: 0px">
														
														<div id="dingcanweekmenu">
															<div id="dingcanweekmenu2">
																<div id="dingcanweekmenu_top">
																	<div id="dingcanweekmenu_top_left">书籍热搜榜</div>
																	<div id="dingcanweekmenu_top_right">&nbsp;</div>
																</div>
																<div style="padding: px;">
																	<div class="dingcanweekmenuinfo" align="left">
																	<c:forEach items="${saleList}" var="orderInfo">
																		<li class="newslist_time2"><div class="time">已售${orderInfo.menuSum}本</div>
																			<a href="#" class="newslist_time2">${orderInfo.menuName}</a></li>
																	</c:forEach>
																	</div>
																</div>
															</div>
														</div>
														<!--<div id="dingcanweekmenu_bottom_left"></div>
                    <div id="dingcanweekmenu_bottom_right">&nbsp;</div>-->
													</div>
												</div>
												<!-- </div>-->
											</div></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="10">&nbsp;</td>
		</tr>
		<tr>
			<td height="50" align="center" valign="middle"><jsp:include
					flush="fasle" page="copyright.jsp" /></td>
		</tr>

	</table>
</body>
</html>