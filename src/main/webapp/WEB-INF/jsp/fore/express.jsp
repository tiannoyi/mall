<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>
		 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>

<html>

	<head>
		<%@include file="../btmbtn/link.jsp"%>
		<meta charset="utf-8" />
		<meta name="renderer" content="webkit" />
		<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
		<link rel="dns-prefetch" href="//g.alicdn.com" />
		<link rel="dns-prefetch" href="//img.alicdn.com" />
		<link rel="dns-prefetch" href="//gm.mmstat.com" />
		<link rel="dns-prefetch" href="//ald.taobao.com" />
		<link rel="dns-prefetch" href="//bar.tmall.com" />
		<meta name="spm-id" content="a2d00" />
		<title>物流详情-理想生活上天猫</title>
		<link rel="shortcut icon" href="//img.alicdn.com/tfs/TB1XlF3RpXXXXc6XXXXXXXXXXXX-16-16.png" type="image/x-icon" />
		<script>
			window.g_config = window.g_config || {};
			window.g_config.devId = "pc";
			window.g_config.headerVersion = '1.0.0';
			window.g_config.loadModulesLater = true;
			window.g_config.sl = 'vm';
		</script>

		<script>
			window.g_config = window.g_config || {};
			window.g_config.removeMallBar = true
		</script>
		<!--tmall common/assets-->
		<!-- globalmodule version: 3.0.83 -->
		<link rel="stylesheet" href="//g.alicdn.com/??mui/global/3.0.31/global.css" />
		<script src="//g.alicdn.com/??kissy/k/1.4.14/seed-min.js,mui/seed/1.4.8/seed.js,mui/globalmodule/3.0.83/seed.js,mui/btscfg-g/3.0.0/index.js,mui/bucket/3.0.4/index.js,mui/globalmodule/3.0.83/global-mod-pc.js,mui/globalmodule/3.0.83/global-mod.js,mui/global/3.0.31/global-pc.js,mui/global/3.0.31/global.js"></script>
		<script src="//g.alicdn.com/secdev/pointman/js/index.js" app="tmall"></script>
		<script>
			TB.environment.isApp = true;
			TB.environment.passCookie = true;
		</script>

		<!--tmall common/assets end-->

		<link rel="stylesheet" href="//assets.alicdn.com/apps/consign/v3/??common/msg.css,common/tooltip.css?t=2013040201.css" />

		<script type="text/javascript">
			

			var isOneCity = false;

			var circleType = 10000;
			var circleCurrent = 10000;

			var startLongitude = 114.315239;
			var startLatitude = 22.764453;
			var startMatchLevel = 16;

			var endLongitude = 112.817346;
			var endLatitude = 28.341028;
			var endMatchLevel = 13;

			var isTmallOrder = "true" == "true";

			var tradeId = '153493790790927570';

			var mailNo = "71354827185054";

			var lbx = ""
			var lp = "LP00102025937516"

			var cpScoreList = [10.9671619, 11.124194641176473, 18.672583600000003, 1.7463631576923229, 19.536363149999996];
			var avgScoreList = [10.52440058, 13.752457864705883, 16.498367850000005, 5.2579397038461435, 17.761009558333342];
			var maxScore = [20, 20, 20, 20, 20];
		</script>

		<script src="//webapi.amap.com/maps?v=1.3&key=d13c68f69f40a1a4738c605129ef1cca"></script>

		<link rel="stylesheet" href="//g.alicdn.com/cn/wuliu-orderdetail/1.0.25/detail.css">
		<script src="//g.alicdn.com/cn/wuliu-orderdetail/1.0.25/detail.js" charset="utf-8"></script>
		<script src="//g.alicdn.com/cn/wuliu-orderdetail/1.0.13/echarts.js" charset="utf-8"></script>
	</head>

	<body data-spm='7723416'>

		<%@include file="../include/fore/top.jsp"%>
		<%@include file="../include/fore/simpleSearch.jsp"%>
		<!-- tms 1863309-->
		<div class="order-detail">
			<div class="detail-title">
				<span class="indent">包裹信息</span>
			</div>
			<div class="detail-complaint" id="complaintDiv"></div>
			<div class="detail-content">

				<div id="progressbar"></div>

				<div class="detail-panel">

					<div class="panel-package">

						<div class="package-status">

							<div class="status-box" id="status_list">
								<ul class="status-list">
									<li><fmt:formatDate value="${o.deliveryDate}" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;&nbsp;商家发货</li>
									<li><fmt:formatDate value="${o.confirmDate}" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;&nbsp;买家收货</li>								
								</ul>
							</div>
							
						</div>

					</div>

				</div>

			</div>
		</div>
	<%@include file="../include/fore/footer.jsp"%>