


<!doctype html>
<html>
<head>

















<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/Page/img/row.ico">

<title>Return of Warrior</title>


<!--[if lt IE 9]>
	<script src="img/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="img/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->


<link rel="stylesheet" href="/Page/css/bootstrap.min.css">


<link rel="stylesheet" href="/Page/css/bootstrap-theme.min.css">


<script src='/Page/libs/Jquery/jquery-1.9.1.min.js'></script>


<!-- <script src="/Page/js/jquery-3.1.1.min.js"></script> -->


<script src="/Page/js/bootstrap.min.js"></script>

<style type="text/css">
	@import url("/Page/css/commond.css");
</style>
<!--임시 리다이렉션-->
 <script>
 //location.href=www.rowplayon.com;
 </script>


 

 


</head>

<body style="background-color: #f4f4f4;">









<style type="text/css">
	@import url("/Page/css/menu(ko).css");
</style>
<script type="text/jscript">
$(function() {
	$('.dropdown').each(function(idx) {
		if (idx >= 8) {
			idx = idx%8;
		}
		else {
			$(this).on({
				mouseover: function() {
					$(this).children('button').dropdown('toggle');
				},
				mouseout: function() {
					$(this).children('button').dropdown('toggle');
				}
			});
		}
		$(this).on('show.bs.dropdown', {menu:idx}, function(event) {
			var idx = event.data.menu + 1;															
			$(this).children('a').children('img').attr('src', '/Page/ko/img/top/list-0' + idx + '-1.gif');
		});
		$(this).on('hide.bs.dropdown', {menu:idx}, function(event) {
			var idx = event.data.menu + 1;												            
			$(this).children('a').children('img').attr('src', '/Page/ko/img/top/list-0' + idx + '.gif'); 
		});								
	    });
});
</script>


<nav class="navbar navbar-inverse navbar-static-top" role="navigation"
	style="background-image: url(/Page/img/main/top-back.gif); background-repeat: repeat; margin-bottom: 0; border: none;">
	<div class="container" style="max-width: 1000px; width: 100%;">
		<div class="navbar-header">
			
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
				aria-expanded="false" aria-controls="navbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="visible-xs-block">
				<a class="navbar-brand zero_margin zero_padding" href="/Page/ko/main.jsp">
					<img src="/Page/img/top/list-00.gif" height="50px;" />
				</a>
			</div>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<div class="hidden-xs">
				<div class="hidden-sm">
					<ul class='navbar-nav'><li id='row_li'>	<a href='/Page/ko/main.jsp'>		<img src='/Page/img/top/list-00.gif' class='img-responsive' />	</a></li><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_con'>		<button id='topmenu0_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu0' href='/Page/ko/gettingStarted/gettingStarted.jsp?p=1'>			<img src='/Page/ko/img/top/list-01.gif' id='topmenu0_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;준비하기</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;설치하기 </a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;런처</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;클라이언트 설정</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;로그인</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;캐릭터 생성</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_con'>		<button id='topmenu1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu1' href='/Page/ko/gameGuide/gameGuide.jsp?p=1'>			<img src='/Page/ko/img/top/list-02.gif' id='topmenu1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;인터페이스</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;게임 옵션</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;컨트롤</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;커뮤니케이션</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;아이템</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;전투</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;어빌리티</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;퀘스트</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;캐릭터 성장</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;거래</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_con'>		<button id='topmenu2_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu2' href='/Page/ko/gameSystem/gameSystem.jsp?p=1'>			<img src='/Page/ko/img/top/list-03.gif' id='topmenu2_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;파티</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;길드</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;길드 관리</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;대결</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;스테츄 전쟁</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;길드 전쟁</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;길드 요새</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;아이템 강화</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_con'>		<button id='topmenu3_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu3' href='/Page/ko/gameData/gameData.jsp?p=1'>			<img src='/Page/ko/img/top/list-04.gif' id='topmenu3_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=1>&nbsp;&nbsp;휴먼 종족</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=2>&nbsp;&nbsp;아칸 종족</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=3>&nbsp;&nbsp;휴먼 스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=4>&nbsp;&nbsp;아칸 스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=5>&nbsp;&nbsp;강화 정보</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_con'>		<button id='topmenu4_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu4' href='/Page/ko/forum/forum.jsp?p=1&bbs=0'>			<img src='/Page/ko/img/top/list-05.gif' id='topmenu4_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;최신 뉴스</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;뉴스 업데이트</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=21>&nbsp;&nbsp;게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=3>&nbsp;&nbsp;거래 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=8>&nbsp;&nbsp;길드 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;정보 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=5>&nbsp;&nbsp;버그 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=6>&nbsp;&nbsp;스크린 샷</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;자주하는 질문</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_con'>		<button id='topmenu5_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu5' href='/Page/ko/download/download.jsp'>			<img src='/Page/ko/img/top/list-06.gif' id='topmenu5_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/download/download.jsp>&nbsp;&nbsp;다운로드</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_con'>		<button id='topmenu6_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu6' href='/Page/ko/itemMall/itemMall.jsp?p=1'>			<img src='/Page/ko/img/top/list-07.gif' id='topmenu6_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;포인트 요금</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;구매 내역</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;아이템 목록</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;아이템 뽑기 (Beta)</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_con'>		<button id='topmenu7_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu7' href='/Page/main.jsp?language=0'>			<img src='/Page/ko/img/top/list-08.gif' id='topmenu7_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li></ul>
				</div>
				<div class="visible-sm-block">
					<ul class='navbar-nav'><li id='row_li'>	<a href='/Page/ko/main.jsp'>		<img src='/Page/img/top/list-00.gif' class='img-responsive' />	</a></li><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_1_con'>		<a id='topmenu0_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-01.gif' id='topmenu0_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;준비하기</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;설치하기 </a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;런처</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;클라이언트 설정</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;로그인</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;캐릭터 생성</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_1_con'>		<a id='topmenu1_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-02.gif' id='topmenu1_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;인터페이스</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;게임 옵션</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;컨트롤</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;커뮤니케이션</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;아이템</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;전투</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;어빌리티</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;퀘스트</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;캐릭터 성장</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;거래</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_1_con'>		<a id='topmenu2_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-03.gif' id='topmenu2_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;파티</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;길드</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;길드 관리</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;대결</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;스테츄 전쟁</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;길드 전쟁</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;길드 요새</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;아이템 강화</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_1_con'>		<a id='topmenu3_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-04.gif' id='topmenu3_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=1>&nbsp;&nbsp;휴먼 종족</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=2>&nbsp;&nbsp;아칸 종족</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=3>&nbsp;&nbsp;휴먼 스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=4>&nbsp;&nbsp;아칸 스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=5>&nbsp;&nbsp;강화 정보</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_1_con'>		<a id='topmenu4_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-05.gif' id='topmenu4_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;최신 뉴스</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;뉴스 업데이트</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=21>&nbsp;&nbsp;게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=3>&nbsp;&nbsp;거래 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=8>&nbsp;&nbsp;길드 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;정보 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=5>&nbsp;&nbsp;버그 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=6>&nbsp;&nbsp;스크린 샷</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;자주하는 질문</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_1_con'>		<a id='topmenu5_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-06.gif' id='topmenu5_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/download/download.jsp>&nbsp;&nbsp;다운로드</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_1_con'>		<a id='topmenu6_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-07.gif' id='topmenu6_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;포인트 요금</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;구매 내역</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;아이템 목록</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;아이템 뽑기 (Beta)</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_1_con'>		<a id='topmenu7_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-08.gif' id='topmenu7_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li></ul>
				</div>
			</div>
			<div class="visible-xs-block">
				<ul class='navbar-nav'><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_1_con'>		<a id='topmenu0_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-01.gif' id='topmenu0_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_1_btn'><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;준비하기</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;설치하기 </a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;런처</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;클라이언트 설정</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;로그인</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;캐릭터 생성</a></li></ul>		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_1_con'>		<a id='topmenu1_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-02.gif' id='topmenu1_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_1_btn'><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;인터페이스</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;게임 옵션</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;컨트롤</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;커뮤니케이션</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;아이템</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;전투</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;어빌리티</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;퀘스트</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;캐릭터 성장</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;거래</a></li></ul>		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_1_con'>		<a id='topmenu2_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-03.gif' id='topmenu2_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_1_btn'><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;파티</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;길드</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;길드 관리</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;대결</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;스테츄 전쟁</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;길드 전쟁</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;길드 요새</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;아이템 강화</a></li></ul>		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_1_con'>		<a id='topmenu3_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-04.gif' id='topmenu3_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_1_btn'><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=1>&nbsp;&nbsp;휴먼 종족</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=2>&nbsp;&nbsp;아칸 종족</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=3>&nbsp;&nbsp;휴먼 스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=4>&nbsp;&nbsp;아칸 스킬</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/gameData/gameData.jsp?p=5>&nbsp;&nbsp;강화 정보</a></li></ul>		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_1_con'>		<a id='topmenu4_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-05.gif' id='topmenu4_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_1_btn'><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;최신 뉴스</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;뉴스 업데이트</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=21>&nbsp;&nbsp;게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=3>&nbsp;&nbsp;거래 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=8>&nbsp;&nbsp;길드 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;정보 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=5>&nbsp;&nbsp;버그 게시판</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=6>&nbsp;&nbsp;스크린 샷</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;자주하는 질문</a></li></ul>		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_1_con'>		<a id='topmenu5_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-06.gif' id='topmenu5_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_1_btn'><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/download/download.jsp>&nbsp;&nbsp;다운로드</a></li></ul>		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_1_con'>		<a id='topmenu6_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-07.gif' id='topmenu6_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_1_btn'><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;포인트 요금</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;구매 내역</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;아이템 목록</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/ko/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;아이템 뽑기 (Beta)</a></li></ul>		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_1_con'>		<a id='topmenu7_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/ko/img/top/list-08.gif' id='topmenu7_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_1_btn'><ul><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>		</div>	</div></li></ul>
			</div>
		</div>
	</div>
</nav>







<style type="text/css">
	@import url("/Page/css/main.css");
</style>


<div class="container" align="center" style="margin-top:10px;">
	<div class="row" id="main_container" style="width:100%; color:#646464;">
		
		<div class="col-md-4 zero_padding zero_margin" align="center" id="left_container">
			



<script type="text/jscript">
$(function() {
	$('.side_menu_a').each(function(index) {
		$(this).css('color', '#646464');
		$(this).children('div').css('width', '174px');
		$(this).children('div').css('height', '36px');
		$(this).children('div').css('text-align', 'left');
		$(this).children('div').css('padding-left', '20px');
		$(this).children('div').css('padding-top', '7px');
		$(this).children('div').css('font-size', '13pt');
		var idx = index;
		
		if(idx==4)
			idx=8;
		else if(idx>=5)
			idx=idx-1;
		
		
		if (idx == 4) {
			$(this).children('div').css('background-image', "url('/Page/ko/img/side/sidebox-3.gif')");
		}
		else {
			$(this).children('div').css('background-image', "url('/Page/ko/img/side/sidebox-2.gif')");
			$(this).on({
				mouseover: function() {
					$(this).css('color', '#646464');
					$(this).children('div').css('background-image', "url('/Page/ko/img/side/sidebox-3.gif')");
				},
				mouseout: function() {
					$(this).css('color', '#646464');
					$(this).children('div').css('background-image', "url('/Page/ko/img/side/sidebox-2.gif')");
				}
			});
		}
	});
});
</script>

















<script type="text/javascript" src="/Page/RSA/jsbn.js"></script>
<script type="text/javascript" src="/Page/RSA/rsa.js"></script>
<script type="text/javascript" src="/Page/RSA/prng4.js"></script>
<script type="text/javascript" src="/Page/RSA/rng.js"></script>
<script type="text/javascript">
var rsaPublicKeyModulus = "9bcb1966b8168588b03b0351ec2249fcb4e27623efa0826b612a7bdcc28bb9bc054b72c2dce19fb2bdcb6c793314c1f9f6bcdc13d22fa28796f24d835fe5324c229b0d64fb0ff184890ed8ae91b8ee121879eb50d4a3c2292ce8344f5318d1ef2fc6fe3cf831393b2196421120b5586d3086e9c6618cfa2ba55e19bcfb46d7ed";
var rsaPublicKeyExponent = "10001";
function fnRsaEnc(value, rsaPublicKeyModulus, rsaPpublicKeyExponent) 
{
    var rsa = new RSAKey();
    rsa.setPublic(rsaPublicKeyModulus, rsaPpublicKeyExponent);
    var encValue = rsa.encrypt(value);     // 사용자ID와 비밀번호를 RSA로 암호화한다.
    return encValue;
}



</script>


<style type="text/css">
	@import url("/Page/css/login.css");
</style>

<script>
function login() {
	
	var errorMessage = null;
	var objFocus = null;
	var formLogin = document.loginForm;

	formLogin.chkIDandPW.value = "Yes";
	
	if (formLogin.account.value.length == 0) {
		errorMessage = "Please enter ID";
		objFocus = formLogin.account;
	} else if (formLogin.passwd.value.length == 0) {
		errorMessage = "Please enter password";
		objFocus = formLogin.passwd;
	}

	if(errorMessage != null) {
		alert(errorMessage);
		objFocus.focus();
		return false;
	}
	//alert("o	");
	formLogin.passwd.value = fnRsaEnc(formLogin.passwd.value, rsaPublicKeyModulus, rsaPublicKeyExponent);
	//alert(formLogin.passwd.value);
	return true;
}
function logout() {
	//alert('Successfully logged out!');
	var formLogout=document.logoutForm;
	formLogout.submit();
}
function Set_Login_Point(_point)
{
	$("#login_point").html(_point);
}
</script>

<div align="center" id="login_container" style="margin:0 5px 5px 5px; padding:4px 4px 4px 4px; border:thin solid #D9D9D9;">

	<form action='' method='post' name='loginForm' id='loginForm' style='margin:0 0 0 0; padding:0 0 0 0;' onSubmit='return login()'>
	<input id='chkIDandPW' name='chkIDandPW' type='hidden' />
		<table id='login_table'>
			<tr>
				<td id='login_input_td'>
					<div class='input-group' id='login_input_group' style='width:100%; margin:1px 1px 1px 1px;'>
						<input type='text' class='form-control' name='account' placeholder='user id' style='border-radius:0; padding:0 0 0 0;'><br/>
						<input type='password' class='form-control' name='passwd' id='passwd' placeholder='password' style='border-radius:0; padding:0 0 0 0;'>
					</div>
				</td>
				<td id='login_btn_td'>
					<div class='btn-group' role='group' id='login_btn_group' style='width:100%;'>
						<button type='submit' class='btn btn-danger'
							style='border-radius:0; font-size:13px; background-color:#AA0000; background-image:none;'>LOG IN</button>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan='2' id='login_text_td' style='text-align:center; font-size:13px;'>
					<a href='/Page/en/member/member.jsp?p=1'>Join Member</a> | <a onclick='alert("Send email to master@rowplayon.com")'>Find ID/PW</a>
				</td>
			</tr>
		</table>
	</form>
	
</div>


<div class="side_under_login">

<div id="side_menu" align="center" class="zero_margin zero_padding" style="width:174px;">
	<img src="/Page/ko/img/side/05_06/sidebox-1-05.gif" class="img-responsive" />
	<!-- <a href="page1.jsp" class="side_menu_a"><img src="/Page/img/side/07_item mall/sidebox-2-1.gif" class="img-responsive" /></a> -->
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=0" class="side_menu_a"><div>최신 뉴스</div></a>
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=1" class="side_menu_a"><div>뉴스 업데이트</div></a>
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=21" class="side_menu_a"><div>게시판</div></a>
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=3" class="side_menu_a"><div>거래 게시판</div></a>
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=8" class="side_menu_a"><div>길드 게시판</div></a>
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=4" class="side_menu_a"><div>정보 게시판</div></a>
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=5" class="side_menu_a"><div>버그 게시판</div></a>
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=6" class="side_menu_a"><div>스크린 샷</div></a>
	<a href="/Page/ko/forum/forum.jsp?p=1&bbs=7" class="side_menu_a"><div>자주하는 질문</div></a>
</div>

<div id="contact" style="margin:5px 0 5px 0; width: 174px; height:49px; background-image: url(/Page/ko/img/main/mail2.gif); font-size:13px; line-height:22px;">
	<br/>rowmaster@youxiland.com 
</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin" id="center_container">
			Plase ENG!
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin right_side" align="center" id="right_container">
			






<div style="float:left;">
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="/Page/ko/itemMall/itemMall.jsp?p=3"><img src="/Page/img/main/item4.jpg" class="img-responsive" /></a>
	</div>
	
	<div id="best_item" style="max-width:175px; width:94.594594594594594594594594594595%;
		background-image:url(/Page/img/main/box3.gif); background-size:100% 100%; margin:5px 5px 0 5px; padding:5px 5px 0 5px;">
		<b>베스트 셀러 상품</b><br/>
		<ul class="media-list" style="margin:15px 0 0 0; padding:0 0 0 0;">
				<li class='media' style='height:52px; margin:5px 0 5px 0;'>
		<a href='/Page/ko/itemMall/itemMall.jsp?p=3&kind=1'>
			<div class='media-left'>
				<img src='/Page/img/main/best_01.gif' style='padding:0px 0px 0px 5px'>
			</div>
			<div class='media-body' style='text-align:left;'>
				<div style='font-size:9pt;'><b>Gold Box</b></div>
				<div style='font-size:8pt;'>EXP/Drop +50%</div>
			</div>
		</a>
	</li>
	<li class='media' style='height:52px; margin:5px 0 5px 0;'>
		<a href='/Page/ko/itemMall/itemMall.jsp?p=3&kind=3'>
			<div class='media-left'>
				<img src='/Page/img/main/best_04.gif' style='padding:0px 0px 0px 5px'>
			</div>
			<div class='media-body' style='text-align:left;'>
				<div style='font-size:9pt;'><b>Holy Orb of Exp</b></div>
				<div style='font-size:8pt;'>EXP +30% / 1hour</div>
			</div>
		</a>
	</li>
	<li class='media' style='height:52px; margin:5px 0 5px 0;'>
		<a href='/Page/ko/itemMall/itemMall.jsp?p=3&kind=5'>
			<div class='media-left'>
				<img src='/Page/img/main/best_02.gif' style='padding:0px 0px 0px 5px'>
			</div>
			<div class='media-body' style='text-align:left;'>
				<div style='font-size:9pt;'><b>Stone of Rebirth</b></div>
				<div style='font-size:8pt;'>Redistribute stat points</div>
			</div>
		</a>
	</li>

		</ul>
	</div>
</div>
<div style="float:left;">
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="#ServerMergeGuide"><img src="/Page/img/main/server_merge_guide.gif" class="img-responsive" /></a>
	</div>
	
	<div id="ranking" style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 0 5px; line-height:1em;">
		<img src="/Page/img/main/ranking-top.gif" class="img-responsive" />
		<table style="width:100%; background:url(/Page/img/main/ranking-list.gif) repeat-y;
			background-size:100% 100%; margin:0 0 2px 0; font-size:8pt;">
			<tr style='text-align:center;'>
				<td style='width:17.241379310344827586206896551724%;'>LVL</td>
				<td style='width:49.425287356321839080459770114943%;'>NAME</td>
				<td style='width:29.885057471264367816091954022989%;'>FAME</td>
			</tr>
			<tr><td colspan="3" height="1" style="background-color: #e2e2e2;"></td></tr>
				<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>95</td>
		<td style='width:49.425287356321839080459770114943%;'>HANIPMAN</td>
		<td style='width:29.885057471264367816091954022989%;'>12727</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>95</td>
		<td style='width:49.425287356321839080459770114943%;'><MK>kr--tanker</td>
		<td style='width:29.885057471264367816091954022989%;'>12674</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>95</td>
		<td style='width:49.425287356321839080459770114943%;'><KR>MK-jump</td>
		<td style='width:29.885057471264367816091954022989%;'>12625</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>95</td>
		<td style='width:49.425287356321839080459770114943%;'>TamSa</td>
		<td style='width:29.885057471264367816091954022989%;'>12580</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>95</td>
		<td style='width:49.425287356321839080459770114943%;'>cp-3</td>
		<td style='width:29.885057471264367816091954022989%;'>12577</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>94</td>
		<td style='width:49.425287356321839080459770114943%;'>_J---I--S--0--0</td>
		<td style='width:29.885057471264367816091954022989%;'>12466</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>93</td>
		<td style='width:49.425287356321839080459770114943%;'>-FrosTzy_Bs-J</td>
		<td style='width:29.885057471264367816091954022989%;'>12431</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>95</td>
		<td style='width:49.425287356321839080459770114943%;'>_Ssalulabi_</td>
		<td style='width:29.885057471264367816091954022989%;'>12336</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>95</td>
		<td style='width:49.425287356321839080459770114943%;'>ZANEIXI</td>
		<td style='width:29.885057471264367816091954022989%;'>12281</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>
	<tr style='text-align:center;'>
		<td style='width:17.241379310344827586206896551724%;'>95</td>
		<td style='width:49.425287356321839080459770114943%;'>kimpro</td>
		<td style='width:29.885057471264367816091954022989%;'>12179</td>
	</tr>
	<tr><td colspan='3' height='1' style='background-color: #e2e2e2;'></td></tr>

			<tr><td colspan="3" height="2" style="background-color: #e2e2e2;"></td></tr>
		</table>
	</div>
</div>
		</div>
	</div>
</div>






<div class="panel-footer" align="center" style="color:#646464; background-color: #e3e3e3;">
	<div style="max-width:1000px; width:100%; height:50px;">
		<div class="col-md-2">
			<img src="/Page/img/footer/logo_f.png" class="img-responsive" />
		</div>
		<div class="col-md-8">
			<script type="text/javascript">
			var winopts= "width=600,height=500,toolbar=no,location=no,directories=no, status=no, menubar=no,scrollbars=yes,resizable=no";
			function privacy() {
				var popWindow = window.open('/Page/member/privacy.html','privacy', winopts);
				return true;
			}
			function agree() {
				var popWindow = window.open('/Page/member/agree.html','agree', winopts);
				return true;
			}
			function roc() {
				var popWindow = window.open('/Page/member/RoC.html','roc', winopts);
				return true;
			}
			</script>
			<b><a href="http://www.youxiland.com/" target="_blank">회사 정보</a> | <a href="#" onclick="privacy()">개인 정보 보호 정책</a> | <a href="#" onclick="agree()">서비스 협정</a> | <a href="#" onclick="roc()">규칙 사항</a></b><br/>
			COPYRIGHT &copy; Youxiland Co., Ltd.  ALL RIGHTS RESERVED.
		</div>
		<!-- <div class="col-md-2">
			<select name="select" class="sb_submit2" onChange="window.open(this.options[this.selectedIndex].value,'_blank','toolbar=yes,location=yes,directories=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes');this.selectedIndex=0;">
				<option>---Family Site ---</option>
				<option value="http://www.youxiland.com/">Youxiland Digital</option>
			</select>
		</div> -->
	</div>
</div>


</body>
</html>