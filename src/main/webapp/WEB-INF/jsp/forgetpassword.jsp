<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en-US">

<head>
<meta charset="UTF-8">
<meta name="data-spm" content="a1z5k" />
<title>阿里巴巴集团 | 账户中心</title>
<meta name="keywords"
	content="阿里巴巴集团帐号，统一登录，帐号登录，淘宝帐号，阿里云帐号，阿里巴巴国际站帐号，云邮箱帐号，YunOS帐号，1688帐号">
<meta name="description"
	content="阿里巴巴集团帐号可以一帐号登录/使用阿里旗下网站及服务，包括：网络购物，生活支付，转账缴费，理财，YunOS，云储存，云邮箱，数字音乐，移动导航，即时通讯，社交与分享等网络生活服务。">
<link rel="shortcut icon"
	href="https://h.alipayobjects.com/static/images/uc/favicon.ico?v=0.3.17"
	type="image/x-icon" />
<link rel="stylesheet"
	href="https://g.alicdn.com//cm/account/0.3.17/css/ucenter.css?v=0.3.17" />
<script type="text/javascript"
	src="https://a.alipayobjects.com/??seajs/seajs/2.1.1/sea.js,seajs/seajs-combo/1.0.0/seajs-combo.js,seajs/seajs-style/1.0.0/seajs-style.js"></script>
<script>
	(function() {
		seajs.config({
			alias : {
				'$' : 'jquery/jquery/1.9.1/jquery'
			}
		});
	})();
</script>
</head>

<body data-spm="7633538" class="taobao">
	<!--头部 start-->

	<div id="header">
		<div class="header-layout">
			<h1 class="logo" id="logo">
				<a href="${pageContext.request.contextPath}/forehome">淘宝</a>
			</h1>
			<h2 class="logo-title">找回密码</h2>
			<ul class="header-nav">
				<li class="nav-first"><a
					href="http://reg.taobao.com/member/new_register.jhtml"
					target="_blank"> 注册 </a></li>
				<li><a
					href="https://login.taobao.com/?redirectURL=https%3A%2F%2Fpassport.taobao.com%2Fac%2Fpassword_find.htm%3Fspm%3Da2107.1.0.0.178411d9zUTrHm%26from_site%3D0%26login_id%3D%26lang%3Dzh_CN%26app_name%3Dtaobaoindex%26tracelog%3Dsignin_main_pass"
					target="_blank"> 登录 </a></li>
				<li><a href="http://i.taobao.com/my_taobao.htm" target="_blank">
						我的 淘宝</a></li>
				<li><a
					href="http://service.taobao.com/support/main/service_center.htm"
					target="_blank"> </a></li>
			</ul>

		</div>
	</div>

	<!--CBU-->
	<link type="text/css"
		href="//g.alicdn.com/sd/ncpc/nc.css?t=5502398634000" rel="stylesheet" />
	<div id="content">
		<div class="content-layout">
			<div class="maincenter">
				<div class="maincenter-box">
					<div class="maincenter-box-tip">
						<p class="ui-tiptext ui-tiptext-message ft-14">
							<i class="ui-tiptext-icon iconfont" title=" 提示 ">&#xF046;</i>
							请输入你需要找回登录密码的账户名
						</p>
					</div>
					<form class="ui-form" id="J_Form" method="post">
						<input name='_tb_token_' type='hidden' value='7877de313eb37'>
						<input type="hidden" name="action" value="password_action" /> <input
							type="hidden" name="event_submit_do_find_password"
							value="notNull" /> <input id="fm-noc-ua" name="ua" type="hidden" />
						<input id="fm-umid-token" name="umidToken"
							value="b274294746ed5fe527b923a2e9fc76a04dc5e325" type="hidden" />
						<div class="ui-form-item     ">
							<label class="ui-label"> 登录名: </label> <input id="J-accName"
								name="_fm-p-_0-l" class="ui-input" type="text"
								placeholder=" 会员名 " value="" data-explain=""> <br />
							<br /> <label class="ui-label"> 旧密码: </label> <input
								id="oldpassword" name="_fm-p-_0-l" class="ui-input"
								type="password" placeholder=" 旧密码 " value="" data-explain="">
							<br />
							<br /> <label class="ui-label"> 新密码: </label> <input
								id="newpassword" name="_fm-p-_0-l" class="ui-input"
								type="password" placeholder=" 新密码 " value="" data-explain="">

						</div>

						<div id="_umfp"
							style="display: inline; width: 1px; height: 1px; overflow: hidden">
							<img
								src="//ynuf.alipay.com/service/clear.png?xt=b274294746ed5fe527b923a2e9fc76a04dc5e325&xa=CF_APP_GGK_HAVANAMPC" />
						</div>

						<div class="ui-form-item">
							<label class="ui-label"> 验证: </label>
							<div id="havana_nco"></div>
							<input id="ncoSign" name="ncoSig" type="hidden" /> <input
								id="ncoSessionid" name="ncoSessionid" type="hidden" /> <input
								id="ncoToken" type="hidden" name="ncoToken"
								value="b274294746ed5fe527b923a2e9fc76a04dc5e325" />
						</div>
						<div class="ui-form-item ui-form-item-last">
							<input onclick="updatePassword()" type="button" value=" 确定 "
								class="ui-button ui-button-lorange ui-button-ldisable"
								id="submitBtn" disabled />
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" charset="utf-8"
		src="//g.alicdn.com/sd/ncpc/nc.js?t=5502398634000"></script>
	<script type="text/javascript">
		//修改密码（上传帐号）
		function updatePassword() {
			var u_name = jQuery("#J-accName").val();
			var oldpassword = jQuery("#oldpassword").val();
			var newpassword = jQuery("#newpassword").val();
			if (u_name != null && u_name != "" && oldpassword != null
					&& oldpassword != "" && newpassword != null
					&& newpassword != "") {
				jQuery.post(
						"${pageContext.request.contextPath}/updatepassword", {
							"name" : u_name,
							"oldpassword" : oldpassword,
							"newpassword" : newpassword
						}, function(data) {
							if (data.isSuccess == true) {
								alert(data.message);
								window.location.reload();
								//$(location).attr('href','user/selectAll');
							} else {
								alert(data.message);
							}
						}, "json");
			} else {
				alert("用户名或密码不能为空");
			}
		}//修改密码结束

		if (top.location !== self.location) {
			top.location.href = self.location.href;
		}
		seajs
				.use(
						[ '$', 'arale/validator/0.9.5/validator' ],
						function(jQuery, Validator) {
							jQuery(function() {
								var errorIcon = '<i class="ui-tiptext-icon iconfont">&#xF045;</i>';
								var firstFocus = true;
								var firstUrl = "";
								var idValidated = false;

								function showExp(ele, msg, toggleClass) {
									var item = jQuery(ele).parent(
											".ui-form-item");
									var explain = item.find(".ui-form-explain");
									if (explain.length === 0) {
										explain = jQuery(
												'<div class="ui-form-explain"></div>')
												.appendTo(item);
									}
									var className = 'ui-form-item '
											+ toggleClass;
									explain.html(msg);
									item.attr('class', className);
								}
								;

								var validator = new Validator(
										{
											element : "#J_Form",
											autoSubmit : true,
											onItemValidate : function(element) {
												if (jQuery(element)
														.attr('type') === 'text') {
													var val = jQuery(element)
															.val();
													val = jQuery.trim(val);
													jQuery(element).val(val);
												}
											}
										});

								validator.addItem({
									element : '#J-accName',
									required : true,

									errormessageRequired : errorIcon
											+ ' 请输入登录名 '

								});

							});

						});

		var NC_Opt = {
			renderTo : 'havana_nco',
			appkey : 'CF_APP_GGK_HAVANAMPC',
			scene : 'ggk_pc',
			token : 'b274294746ed5fe527b923a2e9fc76a04dc5e325',
			trans : {
				"behaviorTraceId" : "0030003000330036003000300033003800300030"
			},
			elementID : [ "J-accName" ],
			is_Opt : '', //是否自己配置uab，通常情况下留空即可
			type : "scrape", //一定要写"scrape"，区别滑动验证码
			width : 300, //刮刮卡交互区域的像素高度，最小为300px
			height : 100, //刮刮卡交互区域的像素高度，最小为100px
			isEnabled : true,
			timeout : 3000,
			times : 3,
			foreign : 0,
			language : 'cn',
			apimap : {},
			objects : [ "//img.alicdn.com/tps/TB1BT9jPFXXXXbyXFXXXXXXXXXX-80-80.png" ],
			callback : function(data) { //成功回调
				jQuery('#submitBtn').removeAttr('disabled');
				jQuery('#submitBtn').removeClass('ui-button-ldisable');
				jQuery("#ncoSign").attr("value", data.sig);
				jQuery("#ncoSessionid").attr("value", data.sessionId);
				jQuery("#fm-noc-ua").attr("value", _n);
				jQuery
						.ajax({
							url : 'https://passport.taobao.com/ac/password/log_no_cap.do?fromSite=0&amp;appName=taobaoindex&amp;lang=zh_CN',
							data : {
								code : 'success',
							},
							dataType : 'json',
							success : function(data) {
							},
							error : function() {
							}
						});
			},
			failCallback : function(data) { //错误回调
				jQuery
						.ajax({
							url : 'https://passport.taobao.com/ac/password/log_no_cap.do?fromSite=0&amp;appName=taobaoindex&amp;lang=zh_CN',
							data : {
								code : data.code,
							},
							dataType : 'json',
							success : function(data) {
							},
							error : function() {
							}
						});
			},
			error : function(data) {
			}
		};
		var nc = new noCaptcha(NC_Opt);
	</script>

	<div id="umid"></div>
	<script type="text/javascript" charset="utf-8"
		src="https://s.tbcdn.cn/g/security/umscript/2.0.0/um.js"></script>
	<script type="text/javascript">
		var cimg = new Image(1, 1);
		cimg.onload = function() {
			cimg.onload = null;
		};
		cimg.src = "https://ynuf.alipay.com/service/clear.png?xt=b274294746ed5fe527b923a2e9fc76a04dc5e325&xa=090D1F110F18383D2A";
	</script>
	<script type="text/javascript">
		um.init({
			containers : {
				flash : document.getElementById("umid"),
				dcp : document.getElementById("umid")
			},
			enable : true,
			ratio : 1,
			timeout : 3000,
			timestamp : '1903555650555943544C607B',
			token : 'b274294746ed5fe527b923a2e9fc76a04dc5e325',
			serviceUrl : 'https://ynuf.alipay.com/service/um.json',
			proxyUrl : 'https://img.alipay.com/common/um/lsa.swf',
			appName : '090D1F110F18383D2A'
		});
	</script>

	<!-- PC 小蜜服务窗链接 -->
	<script>
		window.alicareDialogAsyncInit = function(AlicareDialog) {
			new AlicareDialog({
				position : {
					bottom : '55%',
					right : '6%'
				},

				// 配置 dialog 相对 layout 的垂直位�|;
				dialog : {
					offset : {
						y : -400
					}
				},

				// 在后台注册的页面名称, 必填�~B
				from : 'password_find'
			});
		};
	</script>
	<script src="//g.alicdn.com/crm/alicare-dialog/0.0.4/include.js"
		charset="utf-8"></script>

	<!--foot start-->
	<div id="footer">
		<div class="footer-layout">
			<div class="copyright">阿里巴巴版权所有 1999-2018</div>
		</div>
	</div>
	<!-- host: tbmpc010178016118.n.et2  -->
</body>

</html>