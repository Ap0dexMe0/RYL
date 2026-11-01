


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
		var idx = index+1;
		if (idx == 4) {
			$(this).children('img').attr('src', '/Page/ko/img/side/04_game data/sidebox-3-' + idx + '.gif');
		}
		else {
			$(this).children('img').on({
				mouseover: function() {
					$(this).attr('src', '/Page/ko/img/side/04_game data/sidebox-3-' + idx + '.gif');
				},
				mouseout: function() {
					$(this).attr('src', '/Page/ko/img/side/04_game data/sidebox-2-' + idx + '.gif');
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
var rsaPublicKeyModulus = "9e4533f2f0bcd8d950f548d81e465f7dbacab9274bae0b3155ae3cf6b49a9dd8e8ea5228d7188c38cc3de8a1a507fab625022f9583e4af30782c640b5d843f3f3a8d42c677cabe56956f22e1c808b835126e1c7509410740d0398d0fe2bd9768da3ace797bed504b02bd84fe338bec283674f91b5d5e8731631e56b43444f371";
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
	<img src="/Page/ko/img/side/04_game data/sidebox-1-04.gif" class="img-responsive" />
	<a href="/Page/ko/gameData/gameData.jsp?p=1" class="side_menu_a"><img src="/Page/ko/img/side/04_game data/sidebox-2-1.gif" class="img-responsive" /></a>
	<a href="/Page/ko/gameData/gameData.jsp?p=2" class="side_menu_a"><img src="/Page/ko/img/side/04_game data/sidebox-2-2.gif" class="img-responsive" /></a>
	<a href="/Page/ko/gameData/gameData.jsp?p=3" class="side_menu_a"><img src="/Page/ko/img/side/04_game data/sidebox-2-3.gif" class="img-responsive" /></a>
	<a href="/Page/ko/gameData/gameData.jsp?p=4" class="side_menu_a"><img src="/Page/ko/img/side/04_game data/sidebox-2-4.gif" class="img-responsive" /></a>
	<a href="/Page/ko/gameData/gameData.jsp?p=5" class="side_menu_a"><img src="/Page/ko/img/side/04_game data/sidebox-2-5.gif" class="img-responsive" /></a>
</div>

<div id="contact" style="margin:5px 0 5px 0; width: 174px; height:49px; background-image: url(/Page/ko/img/main/mail2.gif); font-size:13px; line-height:22px;">
	<br/>master@rowplayon.com
</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin" id="center_container">
			


<style type="text/css">
	@import url("/Page/css/sub-center.css");
	@import url("/Page/css/lay_gamedata.css");
</style>

<div id="main_content">
	<img src="/Page/ko/img/in/bar04-4.gif" class="img-responsive" />
	
	<div style="border:thin solid #e8e8e8; background-color:#ffffff; padding:15px 15px 15px 15px; margin:5px 0 5px 0;">
		<!-- Contents Begin -->
		<img src="/Page/img/sub/gameData/Contents_img_04.jpg" class="img-responsive">
		
		<div role="tabpanel">

		  <!-- Nav tabs -->
		  <ul id="sub_navi" class="nav nav-tabs" role="tablist" style="border:none; background-color: #e0e0e0;">
		    <li style="width:33.3%;" role="presentation" class="active"><a href="#CommonSkills" aria-controls="CommonSkills" role="tab" data-toggle="tab">Common</a></li>
		    <li style="width:33.3%;" role="presentation"><a href="#Combatant" aria-controls="Combatant" role="tab" data-toggle="tab">Combatant</a></li>
		    <li style="width:33.3%;" role="presentation"><a href="#Officiator" aria-controls="Officiator" role="tab" data-toggle="tab">Officiator</a></li>
		  </ul>
		
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="CommonSkills">
			    



<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_13.gif" /></td>
<td width="140">Hard Hit</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">각 레벨 STR + 10</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_13.gif" /></td><td>Slug</td><td>II</td><td>STR 70+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_13.gif" /></td><td>Bash</td><td>III</td><td>STR 130+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_13.gif" /></td><td>Pummel</td><td>IV</td><td>STR 190+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">스턴되고 느려지는 적에게 강력한 근접 공격을 합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Blade Mastery</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Blade Mastery</td><td>II</td><td>STR 70+</td><td>PASSIVE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Blade Mastery</td><td>III</td><td>STR 130+</td><td>PASSIVE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Blade Mastery</td><td>IV</td><td>STR 190+</td><td>PASSIVE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">블레이드 무기를 사용하면 효과가 증가하지만 공격력을 향상시키지는 않습니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_83.gif" /></td><td>Improved Critical</td><td>I</td><td>None</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_83.gif" /></td><td>Improved Critical</td><td>II</td><td>STR 60+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_83.gif" /></td><td>Improved Critical</td><td>III</td><td>STR 108+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_83.gif" /></td><td>Improved Critical</td><td>IV</td><td>STR 156+</td><td>PASSIVE</td><td>Each level STR + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">치명타 공격 확률 및 피해 배율이 증가합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_81.gif" /></td><td>Willpower</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_81.gif" /></td><td>Willpower</td><td>II</td><td>STR 70+</td><td>PASSIVE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_81.gif" /></td><td>Willpower</td><td>III</td><td>STR 130+</td><td>PASSIVE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_81.gif" /></td><td>Willpower</td><td>IV</td><td>STR 190+</td><td>PASSIVE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">MP 회복력과 마법 저항력이 증가합니다.</td></tr>
</table>
<br /> 
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td>
<td width="140">Crusher Mastery</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">PASSIVE</td>
<td width="140">각 레벨 CON + 8</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Crusher Mastery</td><td>II</td><td>CON 60+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Crusher Mastery</td><td>III</td><td>CON 108+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_06.gif" /></td><td>Crusher Mastery</td><td>IV</td><td>CON 156+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">크러쉬 무기를 사용하면 효과가 증가합니다. (Attack Arm의 공격에는 영향을주지 않습니다.)</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_31.gif" /></td><td>Split Life</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_31.gif" /></td><td>Vital Recharge</td><td>II</td><td>CON 60+</td><td>INSTANCE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_31.gif" /></td><td>Fellowship</td><td>III</td><td>CON 108+</td><td>INSTANCE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_31.gif" /></td><td>Blood for All</td><td>IV</td><td>CON 156+</td><td>INSTANCE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">동맹국과 힘을 공유 할 수 있습니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_86.gif" /></td><td>Extra Life</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_86.gif" /></td><td>Extra Life</td><td>II</td><td>CON 60+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_86.gif" /></td><td>Extra Life</td><td>III</td><td>CON 108+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_86.gif" /></td><td>Extra Life</td><td>IV</td><td>CON 156+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">최대 힘을 ​​증가시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_56.gif" /></td><td>Harden Skin</td><td>I</td><td>None</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_56.gif" /></td><td>Skin Buff</td><td>II</td><td>CON 60+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_56.gif" /></td><td>Stone Skin</td><td>III</td><td>CON 108+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_56.gif" /></td><td>Iron Skin</td><td>IV</td><td>CON 156+</td><td>CAST</td><td>Each level CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">자신의 방어력을 증가시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_80.gif" /></td><td>Toughness</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_80.gif" /></td><td>Toughness</td><td>II</td><td>CON 60+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_80.gif" /></td><td>Toughness</td><td>III</td><td>CON 108+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_80.gif" /></td><td>Toughness</td><td>IV</td><td>CON 156+</td><td>PASSIVE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">물리 방어력을 높입니다.</td></tr>
</table>	
<br /> 
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_32.gif" /></td>
<td width="140">Flexibility</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">각 레벨 DEX + 8</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_32.gif" /></td><td>Dodge</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_32.gif" /></td><td>Evade</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_32.gif" /></td><td>Illusion</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">물리적인 공격과 기술을 피하는 데 도움이 됩니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_08.gif" /></td><td>Claw Mastery</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_08.gif" /></td><td>Claw Mastery</td><td>II</td><td>DEX 60+</td><td>PASSIVE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_08.gif" /></td><td>Claw Mastery</td><td>III</td><td>DEX 108+</td><td>PASSIVE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_08.gif" /></td><td>Claw Mastery</td><td>IV</td><td>DEX 156+</td><td>PASSIVE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">클로 무기를 사용하면 효과가 증가합니다. (Attack Arm의 공격에는 영향을주지 않습니다.)</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_82.gif" /></td><td>Evasion</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_82.gif" /></td><td>Evasion</td><td>II</td><td>DEX 60+</td><td>PASSIVE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_82.gif" /></td><td>Evasion</td><td>III</td><td>DEX 108+</td><td>PASSIVE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_82.gif" /></td><td>Evasion</td><td>IV</td><td>DEX 156+</td><td>PASSIVE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">회피할 확률을 높힙니다.</td></tr>
</table>	
<br /> 
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_57.gif" /></td>
<td width="140">Magic Missile</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">CAST</td>
<td width="140">각 레벨 INT + 10</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_57.gif" /></td><td>Dual Missile</td><td>II</td><td>INT 70+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_57.gif" /></td><td>Runed Arrow</td><td>III</td><td>INT 130+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_57.gif" /></td><td>Comet</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">적에게 마나 투사체를 발사합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_15.gif" /></td><td>Bloody Mana</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_15.gif" /></td><td>Blood Offering</td><td>II</td><td>INT 70+</td><td>INSTANCE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_15.gif" /></td><td>Blood Sacrifice</td><td>III</td><td>INT 130+</td><td>INSTANCE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_15.gif" /></td><td>Blood Bequest</td><td>IV</td><td>INT 190+</td><td>INSTANCE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">마나를 주입하는 대신에 시전자의 생명력을 소모합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_44.gif" /></td><td>Grease</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_44.gif" /></td><td>Trap</td><td>II</td><td>INT 70+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_44.gif" /></td><td>Capture</td><td>III</td><td>INT 130+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_44.gif" /></td><td>Snare</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">적들을 못움직이게 합니다. 레벨 증가에 따라 범위, 면적 및 지속 시간을 향상시킵니다. 마나에는 영향을 주지 않습니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_84.gif" /></td><td>Serenity</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_84.gif" /></td><td>Serenity</td><td>II</td><td>INT 70+</td><td>PASSIVE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_84.gif" /></td><td>Serenity</td><td>III</td><td>INT 130+</td><td>PASSIVE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_84.gif" /></td><td>Serenity</td><td>IV</td><td>INT 190+</td><td>PASSIVE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">최대 MP 증가.</td></tr>
</table>	
<br /> 
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_12.gif" /></td>
<td width="140">Life Aura</td>
<td width="20">I</td>
<td width="75">None</td>
<td width="80">CHANT</td>
<td width="140">각 레벨 WIS + 10</td>	
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_12.gif" /></td><td>Chant of Heal</td><td>II</td><td>WIS +</td><td>CHANT</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_12.gif" /></td><td>Healing Aura</td><td>III</td><td>WIS +</td><td>CHANT</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_12.gif" /></td><td>Ward of Healing</td><td>IV</td><td>WIS +</td><td>CHANT</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">파티원의 HP 및 MP 회복 속도을 증가시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_45.gif" /></td><td>Encourage</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_45.gif" /></td><td>Prayer</td><td>II</td><td>WIS +</td><td>CAST</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_45.gif" /></td><td>Bless</td><td>III</td><td>WIS +</td><td>CAST</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_45.gif" /></td><td>Benediction</td><td>IV</td><td>WIS +</td><td>CAST</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">파티의 공격력과 방어력을 증가시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_87.gif" /></td><td>Inner Sight</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_87.gif" /></td><td>Inner Sight</td><td>II</td><td>WIS +</td><td>PASSIVE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_87.gif" /></td><td>Inner Sight</td><td>III</td><td>WIS +</td><td>PASSIVE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_87.gif" /></td><td>Inner Sight</td><td>IV</td><td>WIS +</td><td>PASSIVE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">자기 성찰 및 명상 훈련을 통해 HP와 MP를 증가시킬 수 있다.</td></tr>
</table>	
		    </div>
		    <div role="tabpanel" class="tab-pane" id="Combatant">
			    


<br /> 
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_65.gif" /></td>
<td width="140">Net</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">어태커 적용 스킬</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">발목을 묶는 기술. 마법 저항의 영향을 받지 않지만 레벨 차이의 영향을 받습니다. <br />몬스터에서는 작동하지 않습니다. 육체에게 사용한 마법 부여이며 충전, 발사 및 마력 추출을 제외하고는 파괴 할 수 없습니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_69.gif" /></td><td>Blaze</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>어태커 전용 스킬</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">상태이상을 제거합니다. 그리고 방어력, 상태이상 저항력 및 이동 속도를 증가시키지만 회피력은 감소합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_35.gif" /></td><td>Drain Power</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_35.gif" /></td><td>Drain Life</td><td>II</td><td>STR 70+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_35.gif" /></td><td>Soul Bringer</td><td>III</td><td>STR 130+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_35.gif" /></td><td>Drain Blood</td><td>IV</td><td>STR 190+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">상대방을 공격시, 상대방의 HP를 흡수하고 둔화 시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_09.gif" /></td><td>Battle Song</td><td>I</td><td>None</td><td>CHANT</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_09.gif" /></td><td>Battle Cry</td><td>II</td><td>STR 70+</td><td>CHANT</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_09.gif" /></td><td>War Chant</td><td>III</td><td>STR 130+</td><td>CHANT</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_09.gif" /></td><td>Marching Song</td><td>IV</td><td>STR 190+</td><td>CHANT</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">함성을 질러서 모든 동맹국들의 공격력을 향상시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>II</td><td>STR 60+</td><td>PASSIVE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>III</td><td>STR 108+</td><td>PASSIVE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>IV</td><td>STR 156+</td><td>PASSIVE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">공격시 추가 공격과 더 많은 데미지를 주도록 합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_36.gif" /></td><td>Shockwave</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_36.gif" /></td><td>Shock Ring</td><td>II</td><td>STR 70+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_36.gif" /></td><td>Shock Rocket</td><td>III</td><td>STR 130+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_36.gif" /></td><td>Outburst</td><td>IV</td><td>STR 190+</td><td>INSTANCE</td><td>각 레벨 STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">지면을 타격함으로써 충격파가 발생합니다. 근처의 적들은 파괴되거나 둔화 시킵니다.</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_65.gif" /></td>
<td width="140">Net</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">템플러 전용 스킬</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">발목을 묶는 기술. 마법 저항의 영향을 받지 않지만 레벨 차이의 영향을 받습니다. <br />몬스터에서는 작동하지 않습니다. 육체에게 사용한 마법 부여이며 충전, 발사 및 마력 추출을 제외하고는 파괴 할 수 없습니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_68.gif" /></td><td>Charging</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>템플러 전용 스킬</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">방어력, 저항력 및 이동속도를 증가시키면서 상태이상을 제거합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_59.gif" /></td><td>Guard</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_59.gif" /></td><td>Heavy Guard</td><td>II</td><td>CON 60+</td><td>CAST</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_59.gif" /></td><td>Rune of Guarding</td><td>III</td><td>CON 108+</td><td>CAST</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_59.gif" /></td><td>Keeping Ward</td><td>IV</td><td>CON 156+</td><td>CAST</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">동맹군의 블록 속도를 변경하고 가드에는 영향을 주지 않습니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_33.gif" /></td><td>Fast Hit</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_33.gif" /></td><td>Rush</td><td>II</td><td>CON 60+</td><td>INSTANCE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_33.gif" /></td><td>Tri Rush</td><td>III</td><td>CON 108+</td><td>INSTANCE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_33.gif" /></td><td>Crazy Rush</td><td>IV</td><td>CON 156+</td><td>INSTANCE</td><td>각 레벨 CON + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">타격시 스턴되고 느려지는 강력한 공격입니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_34.gif" /></td><td>Mana Convert</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_34.gif" /></td><td>Mana Operation</td><td>II</td><td>STR 60+</td><td>INSTANCE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_34.gif" /></td><td>Vital Energy</td><td>III</td><td>STR 108+</td><td>INSTANCE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_34.gif" /></td><td>Refresh</td><td>IV</td><td>STR 156+</td><td>INSTANCE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">자신의 MP를 HP로 변환합니다.</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_66.gif" /></td>
<td width="140">Detection</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">거너 전용 스킬</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">주변의 적을 숨김상태에도 탐지합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_37.gif" /></td><td>Firing</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_37.gif" /></td><td>Discharge</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_37.gif" /></td><td>Quick Fire</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_37.gif" /></td><td>Crossfire</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">무기에서 탄약을 발사합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_23.gif" /></td><td>Camouflage</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_23.gif" /></td><td>Disguise</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_23.gif" /></td><td>No Breath</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_23.gif" /></td><td>Shadow Form</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">주변과 조화되는 임시 위장에 관한 이동, 기간 및 준비 시간을 제공합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_60.gif" /></td><td>Blast</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_60.gif" /></td><td>Heavy Blast</td><td>II</td><td>DEX 60+</td><td>CAST</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_60.gif" /></td><td>Hand Cannon</td><td>III</td><td>DEX 108+</td><td>CAST</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_60.gif" /></td><td>Charged Blast</td><td>IV</td><td>DEX 156+</td><td>CAST</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">강력한 무기 공격을 합니다.</td></tr>
</table>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="Officiator">
		    	


<br /> 
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_73.gif" /></td>
<td width="140">Dispel</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">오피세이터 전용 스킬</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">주변에 있는 모든 마법을 파괴합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_70.gif" /></td><td>Recall</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>룬 오피세이터 전용 스킬</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">시전자의 파티를 현재 위치로 텔레포트합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_61.gif" /></td><td>Rot</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_61.gif" /></td><td>Decomposition</td><td>II</td><td>INT 70+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_61.gif" /></td><td>Rune of Decay</td><td>III</td><td>INT 130+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_61.gif" /></td><td>Decay Hazard</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">적에게 독을 뿌립니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_62.gif" /></td><td>Shock</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_62.gif" /></td><td>Damage</td><td>II</td><td>INT 70+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_62.gif" /></td><td>Rune of Shock</td><td>III</td><td>INT 130+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_62.gif" /></td><td>Electroshock</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">적에게 전기 피해를 입힙니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_63.gif" /></td><td>Shackle</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_63.gif" /></td><td>Dark Cage</td><td>II</td><td>INT 70+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_63.gif" /></td><td>Rune of Shackle</td><td>III</td><td>INT 130+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_63.gif" /></td><td>Cage of Death</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">한명의 적을 못움직이게 합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_38.gif" /></td><td>Disjoint</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_38.gif" /></td><td>Cleaves</td><td>II</td><td>INT 70+</td><td>INSTANCE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_38.gif" /></td><td>Rune of Destruction</td><td>III</td><td>INT 130+</td><td>INSTANCE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_38.gif" /></td><td>Torn Asunder</td><td>IV</td><td>INT 190+</td><td>INSTANCE</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">대지의 힘을 발휘하여 적에게 피해를 입힙니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_53.gif" /></td><td>Enchant Weapon</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_53.gif" /></td><td>Enhance Weapon</td><td>II</td><td>INT 70+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_53.gif" /></td><td>Buff Weapon</td><td>III</td><td>INT 130+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_53.gif" /></td><td>Heroic Weapon</td><td>IV</td><td>INT 190+</td><td>CAST</td><td>각 레벨 INT + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">시전자의 무기를 마법으로 강화하여 공격력을 증가시킵니다.</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_73.gif" /></td>
<td width="140">Dispel</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">오피세이터 전용 스킬</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">주변에 있는 모든 마법을 파괴합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_72.gif" /></td><td>Resurrection</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>룬 오피세이터 전용 스킬</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">주변 동맹군을 부활 시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_67.gif" /></td><td>Purification</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>룬 오피세이터 전용 스킬</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">주변 동맹군에게 부과된 모든 부정적인 마법을 파괴합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_28.gif" /></td><td>Wounds Graft</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_28.gif" /></td><td>Sacred Wounds</td><td>II</td><td>WIS 70+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_28.gif" /></td><td>Divine Life</td><td>III</td><td>WIS 130+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_28.gif" /></td><td>Life Sharing</td><td>IV</td><td>WIS 190+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">시전자가 희생하여 동맹군들을 치료 시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_30.gif" /></td><td>Wounds</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_30.gif" /></td><td>Wounds</td><td>II</td><td>WIS 70+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_30.gif" /></td><td>Wounds</td><td>III</td><td>WIS 130+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_30.gif" /></td><td>Wounds</td><td>IV</td><td>WIS 190+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">시전자가 동맹군의 상처를 치료 시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_55.gif" /></td><td>Heal</td><td>I</td><td>None</td><td>CAST</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_55.gif" /></td><td>Cure Wounds</td><td>II</td><td>WIS 70+</td><td>CAST</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_55.gif" /></td><td>Recovery</td><td>III</td><td>WIS 130+</td><td>CAST</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_55.gif" /></td><td>Restoration</td><td>IV</td><td>WIS 190+</td><td>CAST</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">시전자가 동맹군을 치료 시킵니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_39.gif" /></td><td>Flash</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_39.gif" /></td><td>Flashbang</td><td>II</td><td>WIS 70+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_39.gif" /></td><td>Blind</td><td>III</td><td>WIS 130+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_39.gif" /></td><td>Curse of Light</td><td>IV</td><td>WIS 190+</td><td>INSTANCE</td><td>각 레벨 WIS + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">대상에게 피해를 입히고 기절시킵니다. 마나 보호막에 영향을 받지 않습니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_10.gif" /></td><td>Tractable Chant</td><td>I</td><td>None</td><td>CHANT</td><td>각 레벨 WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_10.gif" /></td><td>Patience Chant</td><td>II</td><td>WIS 60+</td><td>CHANT</td><td>각 레벨 WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_10.gif" /></td><td>Tractable Aura</td><td>III</td><td>WIS 108+</td><td>CHANT</td><td>각 레벨 WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_10.gif" /></td><td>Patience Aura</td><td>IV</td><td>WIS 156+</td><td>CHANT</td><td>각 레벨 WIS + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">모든 파티원의 HP 회복력과 방어력을 높입니다. </td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_11.gif" /></td><td>Rage Chant</td><td>I</td><td>None</td><td>CHANT</td><td>각 레벨 WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_11.gif" /></td><td>Impatience Chant</td><td>II</td><td>WIS 60+</td><td>CHANT</td><td>각 레벨 WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_11.gif" /></td><td>Rage Aura</td><td>III</td><td>WIS 108+</td><td>CHANT</td><td>각 레벨 WIS + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_11.gif" /></td><td>Impatience Aura</td><td>IV</td><td>WIS 156+</td><td>CHANT</td><td>각 레벨 WIS + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">모든 파티원들의 공격력과 MP 회복력을 증가시킵니다.</td></tr>
</table>
<br />
<table id="skill_list" style="background-color: #FFFFFF;">
<tr align="center">
<td width="50"><img src="/Page/img/sub/gameData/skillicon_73.gif" /></td>
<td width="140">Dispel</td>
<td width="20">&nbsp;</td>
<td width="75">None</td>
<td width="80">INSTANCE</td>
<td width="140">오피세이터 전용 스킬</td>	
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">적의 주변에있는 모든 마법을 파괴합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_66.gif" /></td><td>Detection</td><td>&nbsp;</td><td>None</td><td>INSTANCE</td><td>쉐도우 오피세이터 전용 스킬</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">숨김 상태에 있는 주변의 적을 표시합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_40.gif" /></td><td>Wounds Blast</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_40.gif" /></td><td>Smoke of Blood</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_40.gif" /></td><td>Rune of Ambush</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_40.gif" /></td><td>Death Mark</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">도망가면서 강력한 단검을 던집니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_21.gif" /></td><td>Stealth</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_21.gif" /></td><td>Infiltration</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_21.gif" /></td><td>Cloaking</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_21.gif" /></td><td>Breezing</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">적들이 탐지 못하도록 숨고 이동속도를 향상 시킵니다. 숨는기능이 끝난 경우, 몸이 그림자 속에 다시 숨을 준비하기 전에 일정 시간이 경과해야합니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_41.gif" /></td><td>Dagger Fire</td><td>I</td><td>None</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_41.gif" /></td><td>Dagger Blast</td><td>II</td><td>DEX 60+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_41.gif" /></td><td>Exploding Dagger</td><td>III</td><td>DEX 108+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_41.gif" /></td><td>Blade Swarm</td><td>IV</td><td>DEX 156+</td><td>INSTANCE</td><td>각 레벨 DEX + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">단검의 의해 효력이 발생하고 재빨리 숨을수가 있습니다.</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>I</td><td>None</td><td>PASSIVE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>II</td><td>STR 60+</td><td>PASSIVE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>III</td><td>STR 108+</td><td>PASSIVE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_93.gif" /></td><td>Skillarm Fight</td><td>IV</td><td>STR 156+</td><td>PASSIVE</td><td>각 레벨 STR + 8</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">단검에 의한 추가 공격과 더 많은 피해를 줄수 있습니다.</td></tr>
<!--Stealing
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_01.gif" /></td><td>Stealing</td><td>I</td><td>None</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_01.gif" /></td><td>Stealing</td><td>II</td><td>STR +</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_01.gif" /></td><td>Stealing</td><td>III</td><td>STR +</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td><img src="/Page/img/sub/gameData/skillicon_01.gif" /></td><td>Stealing</td><td>IV</td><td>STR +</td><td>CHANT</td><td>Each level STR + 10</td></tr>
<tr align="center"><td colspan="7" bgcolor="#eeeeee" style="border:none;">description</td></tr>
-->
</table>
		    </div>
		  </div>
		
		</div>
	      <!-- Contents End -->
	</div>
</div>
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