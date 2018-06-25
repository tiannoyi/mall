<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>

<html>

	<head>
		<script src="js/jquery/2.0.0/jquery.min.js"></script>
		<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
		<link href="css/fore/style.css" rel="stylesheet">
		<meta charset="utf-8" />
		<meta name="renderer" content="webkit" />
		<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
		<link rel="dns-prefetch" href="//g.alicdn.com" />
		<link rel="dns-prefetch" href="//img.alicdn.com" />
		<link rel="dns-prefetch" href="//gm.mmstat.com" />
		<link rel="dns-prefetch" href="//ald.taobao.com" />
		<link rel="dns-prefetch" href="//bar.tmall.com" />
		<title>帮助中心-理想生活上天猫</title>
		<link rel="shortcut icon" href="//img.alicdn.com/tfs/TB1XlF3RpXXXXc6XXXXXXXXXXXX-16-16.png" type="image/x-icon" />
		<script>
			window.g_config = window.g_config || {};
			window.g_config.devId = "pc";
			window.g_config.headerVersion = '1.0.0';
			window.g_config.loadModulesLater = true;
			window.g_config.sl = 'vm';
		</script>

		<!-- globalmodule version: 3.0.83 -->
		<link rel="stylesheet" href="//g.alicdn.com/??mui/global/3.0.31/global.css" />
		<script src="//g.alicdn.com/??kissy/k/1.4.1/seed-min.js,mui/seed/1.3.0/seed.js,mui/globalmodule/3.0.83/seed.js,mui/btscfg-g/3.0.0/index.js,mui/bucket/3.0.4/index.js,mui/globalmodule/3.0.83/global-mod-pc.js,mui/globalmodule/3.0.83/global-mod.js,mui/global/3.0.31/global-pc.js,mui/global/3.0.31/global.js"></script>
		<script src="//g.alicdn.com/secdev/pointman/js/index.js" app="tmall"></script>
		<script>
			TB.environment.isApp = true;
			TB.environment.passCookie = true;
		</script>

		<script>
			window.g_config.pageId = "7";
		</script>

		
	</head>

	<body>
		<%@include file="../include/fore/top.jsp"%>
		<%@include file="../include/fore/search.jsp"%>
		<div id="mallPage" class="  tmall- page-not-market ">

			<div id="content">

				<style>
					#content {
						font-size: 12px!important;
					}
				</style>
				<link href="//g.alicdn.com/crm/pc-support/0.0.5/css/tmall-help-min.css" rel="stylesheet" />

				<link rel="stylesheet" href="//g.alicdn.com/crm/pc-support/0.0.5/css/helpCenter-min.css" type="text/css" rev="stylesheet" />
				<div class="helpCenter clearfix">
					<div class="colLeft">
						<div class="helpTree">
						<script type="text/javascript">
							function typeA(type){
								$.ajax({
									url:"${pageContext.request.contextPath}/helpTreeList",
									type:"POST",
									contentType:"application/json;charset=utf-8",
									data:JSON.stringify({type:type}),
									success:function(result){
										if(result=="true"){
											$(location).attr('href','${pageContext.request.contextPath }/user/main');
										}else{
											alert("用户名密码错误，登录失败");
										}
									}
								});
							}
						</script>
							<div class="helpList  close ">
								<h3 class="listOne J_SwitchOne"><i class="arrow-l"></i><a >论坛/帮派</a></h3>
								<div class="listTwo">
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a onclick="typeA('论坛')" href="#">论坛</a></h4>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a onclick="typeA('帮派')" href="#">帮派</a></h4>
								</div>
							</div>
							<div class="helpList  close ">
								<h3 class="listOne J_SwitchOne"><i class="arrow-l"></i><a >天猫特色馆</a></h3>

								<div class="listTwo">
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a onclick="typeA('电器城')" href="#">电器城</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8100155.htm" class="fourTitle ">会员关注</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8100156.htm" class="fourTitle ">导购热线</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8100453.htm" class="fourTitle ">数码家电服务</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8215873.htm" class="fourTitle ">商品退仓</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9195663.htm" class="fourTitle ">物流问题</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9195664.htm" class="fourTitle ">商品问题</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9195665.htm" class="fourTitle ">投诉问题</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a onclick="typeA('天猫超市')" href="#">天猫超市</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">买家帮助</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/9209789.htm">购买流程咨询</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9209791.htm">仓库配送咨询</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9209792.htm">退款相关咨询</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9209793.htm">发票咨询</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9209794.htm">活动咨询</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9200505.htm" class="fourTitle ">商家支持</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">天猫美妆</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/9209971.htm" class="fourTitle ">商品问题</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/8215868.htm">品牌特卖</a></h4>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">家装馆</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8304281.htm" class="fourTitle ">家装导购</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8304282.htm" class="fourTitle ">家装馆介绍</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8304283.htm" class="fourTitle ">服务介绍及买家须知</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/8311247.htm">天猫医药馆</a></h4>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">天猫国际</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">消费者帮助</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/9004526.htm">账号管理</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004527.htm">购买咨询</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004528.htm">未收到货</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004529.htm">退款/售后</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196088.htm">发货&物流</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196089.htm">通关关税</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196090.htm">身份证问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196091.htm">投诉举报</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196103.htm">账号问题</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">商家帮助</a>
												<i class="arrow-s"></i>
												<div class="subcategory  isFive ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/9004530.htm">招商入驻及退出</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004531.htm">店铺管理</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004532.htm">订单问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004533.htm">商品问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004534.htm">投诉及处罚</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004535.htm">活动问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9004711.htm">营销工具</a>
															</li>

														</ul>
														<i class="categoryTips"></i>
													</div>
													<ul class="listFive">
														<li>
															<a href="//service.tmall.com/support/tmall/9200214.htm">财务问题</a>
														</li>
													</ul>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">新手专区</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/9196105.htm">特色服务</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196106.htm">关税及发票</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196107.htm">购物小贴士</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">企业采购</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8315943.htm" class="fourTitle ">企业采购介绍</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8315944.htm" class="fourTitle ">买家帮助</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8315945.htm" class="fourTitle ">商家支持</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">天猫家装</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/9197109.htm" class="fourTitle ">商品问题</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9197110.htm" class="fourTitle ">物流问题</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9197111.htm" class="fourTitle ">投诉问题</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9197112.htm" class="fourTitle ">核销问题</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9197113.htm" class="fourTitle ">预约问题</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9197114.htm" class="fourTitle ">送货及安装问题</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">天猫海外直营</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/9196233.htm" class="fourTitle ">购物指南</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9196234.htm" class="fourTitle ">退款售后服务</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9197883.htm" class="fourTitle ">跨境关税</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9197884.htm" class="fourTitle ">物流配送</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9197885.htm" class="fourTitle ">实名认证</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/9198603.htm">无忧工程</a></h4>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/9199506.htm">天猫手表</a></h4>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">天猫母婴</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/9209973.htm" class="fourTitle ">商品问题</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">无忧购</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">送装无忧</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/9220567.htm">家装</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9220568.htm">电器</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9212452.htm" class="fourTitle ">退换无忧</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9212453.htm" class="fourTitle ">售后无忧</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/9931004.htm">天猫Outlets官方旗舰店</a></h4>
								</div>
							</div>
							<div class="helpList  close ">
								<h3 class="listOne J_SwitchOne"><i class="arrow-l"></i><a >消费者帮助</a></h3>
								<div class="listTwo">
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a onclick="typeA('退款/售后')" href="#">退款/售后</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8100225.htm" class="fourTitle ">未按约定发货&缺货</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8100240.htm" class="fourTitle ">违背承诺</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8215837.htm" class="fourTitle ">申请原因及操作</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8215838.htm" class="fourTitle ">极速退款</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8216286.htm" class="fourTitle ">凭证介绍</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/8100130.htm">账号管理</a></h4>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">购买帮助</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8100045.htm" class="fourTitle ">买家评论</a>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">挑选商品</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8215799.htm">商品搜索</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215800.htm">收藏</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215801.htm">购物车</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">购买商品</a>
												<i class="arrow-s"></i>
												<div class="subcategory  isFive ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100215.htm">拍卖</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100223.htm">查看交易信息</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215802.htm">创建/取消交易</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215803.htm">充值/付款/提现</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215804.htm">确认收货</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215805.htm">访客购买</a>
															</li>

														</ul>
														<i class="categoryTips"></i>
													</div>
													<ul class="listFive">
														<li>
															<a href="//service.tmall.com/support/tmall/8216181.htm">交易付款</a>
														</li>
														<li>
															<a href="//service.tmall.com/support/tmall/8216182.htm">信用卡支付（买家）</a>
														</li>
														<li>
															<a href="//service.tmall.com/support/tmall/8216183.htm">找人代付</a>
														</li>
														<li>
															<a href="//service.tmall.com/support/tmall/8216184.htm">充值提现</a>
														</li>
														<li>
															<a href="//service.tmall.com/support/tmall/8216185.htm">数字证书及其它</a>
														</li>
													</ul>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">优惠卡券</a>
												<i class="arrow-s"></i>
												<div class="subcategory  isFive ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8215830.htm">淘宝VIP</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215831.htm">店铺优惠卡券</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215832.htm">红包</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8303360.htm">天猫点券卡</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8303940.htm">商品优惠券</a>
															</li>

														</ul>
														<i class="categoryTips"></i>
													</div>
													<ul class="listFive">
														<li>
															<a href="//service.tmall.com/support/tmall/8303361.htm">企业购卡</a>
														</li>
														<li>
															<a href="//service.tmall.com/support/tmall/8303362.htm">用户用卡</a>
														</li>
													</ul>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">物流信息及服务</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100214.htm">货到付款（买家）</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215859.htm">退货运费险（买家）</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8300448.htm">查看物流信息</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8300449.htm">菜鸟驿站</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8303320.htm">预约配送服务</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8304100.htm">预约快递上门取件</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8304412.htm">国际转运平台</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8306291.htm" class="fourTitle ">天猫分期</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8308434.htm" class="fourTitle ">先试后买</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9195750.htm" class="fourTitle ">电子发票</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/8215556.htm">天猫促销活动</a></h4>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">买家工具</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">阿里旺旺</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100462.htm">短信阿里旺旺</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100463.htm">手机阿里旺旺</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100761.htm">下载与安装</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100762.htm">登录与退出</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100763.htm">阿里旺旺界面</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100764.htm">联系人中心</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100765.htm">聊天窗口</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100767.htm">常见问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215847.htm">生活助手</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215848.htm">聊天记录</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215849.htm">安全中心</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">手机淘宝</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100844.htm">注册登录</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100845.htm">买家帮助</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100847.htm">手机资讯</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">举报</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8100245.htm" class="fourTitle ">违规商品</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8215857.htm" class="fourTitle ">举报咨询</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8300485.htm" class="fourTitle ">诈骗</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="helpList  close ">
								<h3 class="listOne J_SwitchOne"><i class="arrow-l"></i><a >商家帮助</a></h3>
								<div class="listTwo">
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a onclick="typeA('店铺管理')" href="#">店铺管理</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">店铺装修</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100846.htm">无线装修</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8101023.htm">图片空间</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8303862.htm">天猫新旺铺</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194511.htm">pc端装修</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194514.htm">微淘</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194515.htm">微海报</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194516.htm">淘宝神笔</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199167.htm">天猫旺铺智能版</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">财务信息维护</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/9194518.htm">支付宝问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196186.htm">天猫消费积分发票</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196187.htm">佣金/返点积分发票</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196188.htm">软件工具发票</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196189.htm">点券卡/集分宝发票</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196190.htm">开票信息新增及修改</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196191.htm">账房数据显示</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196192.htm">开给买家的发票</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196193.htm">技术服务年费发票</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196194.htm">公益发票</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196195.htm">电子发票业务</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9006250.htm" class="fourTitle ">店铺数据</a>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">资质信息维护</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8215853.htm">店铺信息修改</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194507.htm">类目管理</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194508.htm">品牌管理</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194509.htm">资质预警</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9210260.htm">主体变更</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">商家工具</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">营销工具</a>
												<i class="arrow-s"></i>
												<div class="subcategory  isFive ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100258.htm">限时打折</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100259.htm">搭配套餐</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100260.htm">店铺优惠券</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100261.htm">会员关系管理</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215816.htm">广告运营</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8216723.htm">搭配宝</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8303380.htm">商品优惠券</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8303973.htm">店铺优惠</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9005205.htm">特价宝</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9006262.htm">预售工具</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194610.htm">互动工具</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194612.htm">用户限购</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194613.htm">购物车营销</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194614.htm">优惠监控</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194615.htm">品牌会员中心</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194618.htm">企业采购</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194619.htm">天猫购物券</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194771.htm">赠品宝</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9195070.htm">免单工具</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9197104.htm">超值试用</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9197162.htm">积分兑换商品</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199928.htm">分享有礼</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199930.htm">阿里V</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199933.htm">淘宝直播</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199934.htm">淘宝达人</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199935.htm">淘宝vip</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199937.htm">买家秀（千牛）</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199938.htm">每日好店</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9209790.htm">单品宝</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9210048.htm">天马建站</a>
															</li>

														</ul>
														<i class="categoryTips"></i>
													</div>
													<ul class="listFive">
														<li>
															<a href="//service.tmall.com/support/tmall/9209153.htm">常态预售（定金+尾款）</a>
														</li>
														<li>
															<a href="//service.tmall.com/support/tmall/9209155.htm">发货时间（日常预售）</a>
														</li>
													</ul>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">物流工具</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100267.htm">货到付款</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8101944.htm">退货运费险</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215901.htm">保障速递服务</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8303381.htm">物流预警服务</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8309638.htm">电子面单</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194812.htm">运费模板</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194813.htm">发货、运单号</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">店铺工具</a>
												<i class="arrow-s"></i>
												<div class="subcategory  isFive ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100248.htm">服务平台/第三方软件</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8100266.htm">信用卡支付</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8101022.htm">淘宝助理</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8215817.htm">子账号</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8312519.htm">生意参谋</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9153288.htm">千牛</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194545.htm">钱盾</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194546.htm">问大家</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194611.htm">花呗分期</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194816.htm">淘宝视频</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9194818.htm">AG</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9197311.htm">账户</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9198182.htm">蚂蚁花呗</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9199647.htm">电子凭证&线下门店</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9205575.htm">店小蜜</a>
															</li>

														</ul>
														<i class="categoryTips"></i>
													</div>
													<ul class="listFive">
														<li>
															<a href="//service.tmall.com/support/tmall/8101026.htm">淘宝助理常见问题</a>
														</li>
													</ul>
												</div>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">招商入驻、续约及退出</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">商家入驻</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8100055.htm">签约协议</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8101369.htm">入驻流程</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8101370.htm">收费标准</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8101375.htm">资质材料</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8217761.htm">招商标准</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8100028.htm" class="fourTitle ">店铺续约</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8100029.htm" class="fourTitle ">退出天猫</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">商品管理</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">商品发布</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/9006251.htm">发布常规操作问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9006252.htm">新商品体系（达尔文）常见问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9006253.htm">发布规则类问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9006254.htm">商品详情页展示问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9006428.htm">服饰非标类常见问题</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/9005439.htm" class="fourTitle ">商品搜索</a>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">商品下架及删除</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/9196098.htm">商品下架</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196099.htm">商品删除</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196100.htm">违规节点</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9196101.htm">其他问题</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/9198435.htm">违规提醒</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/9209577.htm">天猫新商家</a></h4>
								</div>
							</div>
							<div class="helpList  close ">
								<h3 class="listOne J_SwitchOne"><i class="arrow-l"></i><a >天猫特色服务</a></h3>
								<div class="listTwo">
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a onclick="typeA('商家培训中心')" href="#">商家培训中心</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8100083.htm" class="fourTitle ">培训平台</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8101441.htm" class="fourTitle ">商家常见问题</a>
											</li>
											<li class="J_MenuItem">
												<a href="#" class="fourTitle ">商家服务宝典</a>
												<i class="arrow-s"></i>
												<div class="subcategory ">
													<div class="categoryFourBox">
														<ul class="listFour">
															<li>
																<a href="//service.tmall.com/support/tmall/8217522.htm">常见规则类案例分享</a>
															</li>
															<li>
																<a href="//service.tmall.com/support/tmall/8300040.htm">常见的前台交易案例</a>
															</li>

														</ul>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">淘工作</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8215863.htm" class="fourTitle ">求职</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo" style="cursor:pointer;"><i class="arrow-m"></i><a href="#">天猫会员</a></h4>
									<div class="hoverCategory J_Category " style="z-index:15;">
										<ul class="listThree">
											<li>
												<a href="//service.tmall.com/support/tmall/8100821.htm" class="fourTitle ">天猫积分</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8217750.htm" class="fourTitle ">天猫会员成长体系</a>
											</li>
											<li>
												<a href="//service.tmall.com/support/tmall/8217751.htm" class="fourTitle ">天猫会员特权</a>
											</li>
										</ul>
									</div>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/8215032.htm">天猫运营服务商</a></h4>
								</div>
							</div>
							<div class="helpList  close ">
								<h3 class="listOne J_SwitchOne"><i class="arrow-l"></i><a >其他服务</a></h3>
								<div class="listTwo">
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a onclick="typeA('网上法庭')" href="#">网上法庭</a></h4>
								</div>
							</div>
							<div class="helpList  close ">
								<h3 class="listOne J_SwitchOne"><i class="arrow-l"></i><a >大促活动专区</a></h3>
								<div class="listTwo">
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/9217860.htm">2017双12消费者专区</a></h4>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/9220837.htm">天猫车主日</a></h4>
									<h4 class="J_SwitchTwo"><i class="arrow-m"></i><a href="//service.tmall.com/support/tmall/9224420.htm">2018年618年中大促</a></h4>
								</div>
							</div>
							<div class="helpList  close ">
								<h3 class="listOne J_SwitchOne"><i class="arrow-l"></i><a >2018天猫年货节</a></h3>
								<div class="listTwo">
								</div>
							</div>
						</div>
						<!-- 主要服务 -->
						<ul class="moreService">
							<li>
								<a href="#">天猫热线:4008608608</a>
							</li>
							<li>
								<a href="#">淘宝网热线:0571-88157858</a>
							</li>
							<li>
								<a href="#">支付宝热线:95188</a>
							</li>
							<li>
								<a href="//help.alipay.com/lab/question.htm" target="_blank"><span class="alipay"></span>支付宝帮助</a>
							</li>
							<li>
								<a href="//service.taobao.com/support/help.htm" target="_blank"><span class="taobao"></span>淘宝帮助</a>
							</li>
						</ul>
						<!-- 更多服务 -->

					</div>
					<!-- 左边结束 -->
					<div class="colRight">
						<div class="searchBox">
							<span class="iconSearch"></span>
							<div class="searchMain">
								<form name="formSearch" method="post" action="//service.tmall.com/support/tmall/tmall_help_browser.htm?source_area=b2c_c2c">
									<input type="hidden" name="search" value="search" />
									<input name="sourceArea" type="hidden" value="b2c_b2c" />
									<input type="text" name="word" value="" class="inputbox" name="keyword" autocomplete="off" x-webkit-speech="" x-webkit-grammar="builtin:translate">
									<button type="submit" class="searchBut" title="立即搜索"></button>
								</form>
								<p class="keyword">

									热门搜索:
									<a href="//service.tmall.com/support/tmall/tmall_help_browser.htm?spm=3.409746.316402.1&source_area=b2c_c2c&word=%C8%EB%D7%A4">入驻</a>
									<a href="//service.tmall.com/support/tmall/tmall_help_browser.htm?spm=3.409746.316402.2&source_area=b2c_c2c&word=%CD%CB%BB%F5%B1%A3%D5%CF%BF%A8">退货保障卡</a>
									<a href="//service.tmall.com/support/tmall/tmall_help_browser.htm?spm=3.409746.316402.3&source_area=b2c_c2c&word=%BB%FD%B7%D6">积分</a>
									<a href="//service.tmall.com/support/tmall/tmall_help_browser.htm?spm=3.409746.316402.4&source_area=b2c_c2c&word=%c6%b7%c5%c6%cc%d8%c2%f4">品牌特卖</a>
									<a href="//service.tmall.com/support/tmall/tmall_help_browser.htm?spm=3.409746.316402.5&source_area=b2c_c2c&word=%D1%D3%B3%D9%B7%A2%BB%F5">延迟发货</a>
									<a href="//service.tmall.com/support/tmall/tmall_help_browser.htm?spm=3.409746.316402.6&source_area=b2c_c2c&word=%CE%A5%B1%B3%B3%D0%C5%B5">违背承诺</a>

								</p>
							</div>

						</div>
						<!-- 搜索框 -->
						<input type="hidden" name="traceId" value="">
						<input type="hidden" name="title" value="">
						<div id="Synopsis">
							<br/>
						</div>
						<div id="table-info" class="searchContent">
							<h4>
				<a href = "#" class = "title">${type}</a>
									
							</h4>
							<ul class="questionList">
							<c:forEach items="${helps}" var="help" varStatus="sta">
								<li>
									<i class="spot-y"></i>
									<a href="#" title="${help.title}">${help.title}</a>
								</li>
							</c:forEach>
							</ul>

						</div>

					</div>
				</div>
				<script src="//g.alicdn.com/crm/pc-support/0.0.5/js/helpCenter-min.js" type="text/javascript"></script>

				<script src="//g.alicdn.com/tb/support/1.4.0/robot/robot-entry.js"></script>
				<script>
					window.G_RobotConfig = {
						sourceId: 139, //*必选 有机器人维护开发提供
						autoClose: 2000, //可选 常见问题
						mainContentWidth: 1050, //可选 表示主内容区域宽度（默认取值为#conten的宽度）； 设置后可控制机器人图标一直在主内容区域外面
						bizMap: {}, //可选，由机器人维护的开发提供
						defaultClosed: true, //可选， true时为 默认一直关闭着的
						align: 'right', //可选， 默认为悬浮在右边，可选值： ‘left' 悬浮在左边； （附： 此为页面中存在#content标签时的控制方式， 如果页面没有#content标签，直接css控制机器人位置即可）
						skin: 'tmall', //可选， 默认为淘宝皮肤， 当前可选皮肤只有tmall
						robotRgn: "//tms.alicdn.com/go/rgn"
					}
				</script>
				<style>
					.g-robot-e {
						bottom: 38%!important;
						+bottom: 38%!important;
					}
				</style>

			</div>

		</div>
		<%@include file="footer.jsp"%>

	</body>

</html>