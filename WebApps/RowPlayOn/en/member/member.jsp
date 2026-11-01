


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
	@import url("/Page/css/menu(en).css");
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
			$(this).children('a').children('img').attr('src', '/Page/en/img/top/list-0' + idx + '-1.gif');
		});
		$(this).on('hide.bs.dropdown', {menu:idx}, function(event) {
			var idx = event.data.menu + 1;
			$(this).children('a').children('img').attr('src', '/Page/en/img/top/list-0' + idx + '.gif');
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
				<a class="navbar-brand zero_margin zero_padding" href="/Page/en/main.jsp">
					<img src="/Page/img/top/list-00.gif" height="50px;" />
				</a>
			</div>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<div class="hidden-xs">
				<div class="hidden-sm">
					<ul class='navbar-nav'><li id='row_li'>	<a href='/Page/en/main.jsp'>		<img src='/Page/img/top/list-00.gif' class='img-responsive' />	</a></li><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_con'>		<button id='topmenu0_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu0' href='/Page/en/gettingStarted/gettingStarted.jsp?p=1'>			<img src='/Page/en/img/top/list-01.gif' id='topmenu0_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;Getting Ready</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;Installation</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;Launcher</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;Client Setting</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;Login</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;Create a Character</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_con'>		<button id='topmenu1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu1' href='/Page/en/gameGuide/gameGuide.jsp?p=1'>			<img src='/Page/en/img/top/list-02.gif' id='topmenu1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;Interface</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;Game Options</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;Controls</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;Communications</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;Items</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;Combat</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;Abilities</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;Quests</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;Character Growth</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;Trades</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_con'>		<button id='topmenu2_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu2' href='/Page/en/gameSystem/gameSystem.jsp?p=1'>			<img src='/Page/en/img/top/list-03.gif' id='topmenu2_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;Party</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;Guild</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;Guild Management</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;Duel</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;Statue War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;Guild War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;Guild Fortress</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;Upgrade Items</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_con'>		<button id='topmenu3_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu3' href='/Page/en/gameData/gameData.jsp?p=1'>			<img src='/Page/en/img/top/list-04.gif' id='topmenu3_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=1>&nbsp;&nbsp;Human Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=2>&nbsp;&nbsp;Ak'kan Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=3>&nbsp;&nbsp;Human Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=4>&nbsp;&nbsp;Ak'kan Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=5>&nbsp;&nbsp;Upgrade Data</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_con'>		<button id='topmenu4_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu4' href='/Page/en/forum/forum.jsp?p=1&bbs=0'>			<img src='/Page/en/img/top/list-05.gif' id='topmenu4_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;Latest News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;Update News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;Tip and Tech</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;FAQ</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_con'>		<button id='topmenu5_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu5' href='/Page/en/download/download.jsp'>			<img src='/Page/en/img/top/list-06.gif' id='topmenu5_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/download/download.jsp>&nbsp;&nbsp;Client Download</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_con'>		<button id='topmenu6_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu6' href='/Page/en/itemMall/itemMall.jsp?p=1'>			<img src='/Page/en/img/top/list-07.gif' id='topmenu6_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;Charge Points</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;Purchase History</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;Item List</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;Drawing Game</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=5>&nbsp;&nbsp;Special Item Draw</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_con'>		<button id='topmenu7_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'></button>		<a id='topmenu7' href='/Page/main.jsp?language=0'>			<img src='/Page/en/img/top/list-08.gif' id='topmenu7_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li></ul>
				</div>
				<div class="visible-sm-block">
					<ul class='navbar-nav'><li id='row_li'>	<a href='/Page/en/main.jsp'>		<img src='/Page/img/top/list-00.gif' class='img-responsive' />	</a></li><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_1_con'>		<a id='topmenu0_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-01.gif' id='topmenu0_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;Getting Ready</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;Installation</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;Launcher</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;Client Setting</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;Login</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;Create a Character</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_1_con'>		<a id='topmenu1_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-02.gif' id='topmenu1_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;Interface</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;Game Options</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;Controls</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;Communications</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;Items</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;Combat</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;Abilities</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;Quests</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;Character Growth</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;Trades</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_1_con'>		<a id='topmenu2_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-03.gif' id='topmenu2_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;Party</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;Guild</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;Guild Management</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;Duel</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;Statue War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;Guild War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;Guild Fortress</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;Upgrade Items</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_1_con'>		<a id='topmenu3_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-04.gif' id='topmenu3_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=1>&nbsp;&nbsp;Human Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=2>&nbsp;&nbsp;Ak'kan Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=3>&nbsp;&nbsp;Human Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=4>&nbsp;&nbsp;Ak'kan Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=5>&nbsp;&nbsp;Upgrade Data</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_1_con'>		<a id='topmenu4_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-05.gif' id='topmenu4_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;Latest News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;Update News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;Tip and Tech</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;FAQ</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_1_con'>		<a id='topmenu5_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-06.gif' id='topmenu5_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/download/download.jsp>&nbsp;&nbsp;Client Download</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_1_con'>		<a id='topmenu6_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-07.gif' id='topmenu6_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;Charge Points</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;Purchase History</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;Item List</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;Drawing Game</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=5>&nbsp;&nbsp;Special Item Draw</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_1_con'>		<a id='topmenu7_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-08.gif' id='topmenu7_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_1_btn'>			<img src='/Page/img/menu/menu-top.gif' class='img-responsive' /><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>			<img src='/Page/img/menu/menu-fin.gif' class='img-responsive' />		</div>	</div></li></ul>
				</div>
			</div>
			<div class="visible-xs-block">
				<ul class='navbar-nav'><li class='topmenu0_li'>	<div class='dropdown' id='topmenu0_1_con'>		<a id='topmenu0_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-01.gif' id='topmenu0_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu0_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=1>&nbsp;&nbsp;Getting Ready</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=2>&nbsp;&nbsp;Installation</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=3>&nbsp;&nbsp;Launcher</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=4>&nbsp;&nbsp;Client Setting</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=5>&nbsp;&nbsp;Login</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gettingStarted/gettingStarted.jsp?p=6>&nbsp;&nbsp;Create a Character</a></li></ul>		</div>	</div></li><li class='topmenu1_li'>	<div class='dropdown' id='topmenu1_1_con'>		<a id='topmenu1_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-02.gif' id='topmenu1_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu1_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=1>&nbsp;&nbsp;Interface</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=2>&nbsp;&nbsp;Game Options</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=3>&nbsp;&nbsp;Controls</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=4>&nbsp;&nbsp;Communications</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=5>&nbsp;&nbsp;Items</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=6>&nbsp;&nbsp;Combat</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=7>&nbsp;&nbsp;Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=8>&nbsp;&nbsp;Abilities</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=9>&nbsp;&nbsp;Quests</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=10>&nbsp;&nbsp;Character Growth</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameGuide/gameGuide.jsp?p=11>&nbsp;&nbsp;Trades</a></li></ul>		</div>	</div></li><li class='topmenu2_li'>	<div class='dropdown' id='topmenu2_1_con'>		<a id='topmenu2_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-03.gif' id='topmenu2_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu2_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=1>&nbsp;&nbsp;Party</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=2>&nbsp;&nbsp;Guild</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=3>&nbsp;&nbsp;Guild Management</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=4>&nbsp;&nbsp;Duel</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=5>&nbsp;&nbsp;Statue War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=6>&nbsp;&nbsp;Guild War</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=7>&nbsp;&nbsp;Guild Fortress</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameSystem/gameSystem.jsp?p=8>&nbsp;&nbsp;Upgrade Items</a></li></ul>		</div>	</div></li><li class='topmenu3_li'>	<div class='dropdown' id='topmenu3_1_con'>		<a id='topmenu3_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-04.gif' id='topmenu3_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu3_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=1>&nbsp;&nbsp;Human Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=2>&nbsp;&nbsp;Ak'kan Classes</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=3>&nbsp;&nbsp;Human Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=4>&nbsp;&nbsp;Ak'kan Skills</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/gameData/gameData.jsp?p=5>&nbsp;&nbsp;Upgrade Data</a></li></ul>		</div>	</div></li><li class='topmenu4_li'>	<div class='dropdown' id='topmenu4_1_con'>		<a id='topmenu4_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-05.gif' id='topmenu4_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu4_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=0>&nbsp;&nbsp;Latest News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=1>&nbsp;&nbsp;Update News</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=4>&nbsp;&nbsp;Tip and Tech</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/forum/forum.jsp?p=1&bbs=7>&nbsp;&nbsp;FAQ</a></li></ul>		</div>	</div></li><li class='topmenu5_li'>	<div class='dropdown' id='topmenu5_1_con'>		<a id='topmenu5_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-06.gif' id='topmenu5_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu5_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/download/download.jsp>&nbsp;&nbsp;Client Download</a></li></ul>		</div>	</div></li><li class='topmenu6_li'>	<div class='dropdown' id='topmenu6_1_con'>		<a id='topmenu6_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-07.gif' id='topmenu6_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu6_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=1>&nbsp;&nbsp;Charge Points</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=2>&nbsp;&nbsp;Purchase History</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=3>&nbsp;&nbsp;Item List</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=4>&nbsp;&nbsp;Drawing Game</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/en/itemMall/itemMall.jsp?p=5>&nbsp;&nbsp;Special Item Draw</a></li></ul>		</div>	</div></li><li class='topmenu7_li'>	<div class='dropdown' id='topmenu7_1_con'>		<a id='topmenu7_1_btn' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>			<img src='/Page/en/img/top/list-08.gif' id='topmenu7_1_img' class='img-responsive' />		</a>		<div class='dropdown-menu' role='menu' aria-labelledby='topmenu7_1_btn'><ul style='min-height: 105px;'><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=0>&nbsp;&nbsp;ENG</a></li><li role='presentation'><a role='menuitem' tabindex='-1' href=/Page/main.jsp?language=1>&nbsp;&nbsp;KOR</a></li></ul>		</div>	</div></li></ul>
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
			



<style type="text/css">
	@import url("/Page/css/main-left.css");
</style>



















<script type="text/javascript" src="/Page/RSA/jsbn.js"></script>
<script type="text/javascript" src="/Page/RSA/rsa.js"></script>
<script type="text/javascript" src="/Page/RSA/prng4.js"></script>
<script type="text/javascript" src="/Page/RSA/rng.js"></script>
<script type="text/javascript">
var rsaPublicKeyModulus = "8553a3e682ccd3ee2267bde20eb6d8051c8cddcd283c26b26ce2171b480ba472b200e10562e2e775358d9ab29a9027e1a72f2a30cad2f8c804251ef5f5d64a2d59a55446d040fec6bc5c57e81c9c456675e079df996d37ce633482ab95ead5eddcccf401debe667db1d6c6cdef47179a568b3fc4c6dfe79bd2168972f1d52a0d";
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



<script>
var myWindow9=null;
//myWindow.focus();
function CouponProcess()
{
	myWindow9=window.open('/Page/'+'coupon/input_coupon.jsp','Coupon','width=320, height=240');
}


</script>

<div id="img_btn_container" class="zero_padding zero_margin side_img_btns">
	<a href="#" onclick='CouponProcess()'><img src="/Page/en/img/main/coupon_eng.gif" class="img-responsive zero_margin" style="width: 174px; float:left;" /></a>
	<a href="/Page/en/member/member.jsp?p=1"><img src="/Page/en/img/main/free_registration.gif" class="img-responsive zero_margin" style="width: 174px; float:left;" /></a>
	<a href="/Page/en/gameGuide/gameGuide.jsp?p=1"><img src="/Page/en/img/main/beginner's_guide.gif" class="img-responsive zero_margin" style="width: 174px; float:left;" /></a>
	<a href="/Page/en/download/download.jsp"><img src="/Page/en/img/main/client_download.gif" class="img-responsive zero_margin" style="width: 174px; float:left;" /></a>
</div>
<div id="info_container" align="center" class="side_under_login">
	
	<div id="clock" style="margin:36px 0 5px 0; padding:5px 5px 5px 5px; width: 174px; background-color:white; border-radius:0 0 0 0; border-width: thin; border-style: solid; border-color: #e0e0e0; font-size:13px;"></div>
	<script>
	function getWorldTime(tzOffset) {
		var now = new Date();
		var tz = now.getTime() + (now.getTimezoneOffset() * 60000) + (tzOffset * 3600000);
		now.setTime(tz);
		var s =
			leadingZeros(now.getHours(), 2) + ' : ' +
			leadingZeros(now.getMinutes(), 2) + ' : ' +
			leadingZeros(now.getSeconds(), 2);
		return s;
	}
	function leadingZeros(n, digits) {
		var zero = '';
		n = n.toString();
		if (n.length < digits) {
			for (i = 0; i < digits - n.length; i++)
				zero += '0';
		}
		return zero + n;
	}
	function startTime() {
		document.getElementById('clock').innerHTML = "Current Time(GMT+8)<br/>" + getWorldTime(+8);
		var t = setTimeout(startTime, 500);
	}
	$(document).ready(function() {
		startTime();
	});
	</script>
	<!-- 시간 정보 -->
	<table id="time_info" style="margin:5px 0 5px 0; padding:5px 0 0 0; font-size:13px; width: 174px; border:#e0e0e0 thin solid; text-align: center;">
		<tr style="background-color: #e3e3e3;">
			<td style="padding:5px 0 5px 0;"><b style="font-size:14px;">TIME INFORMATION<br/>WORLD (GMT+8)</b></td>
		</tr>
		<tr style="background-color: #ffffff;" align="center">
			<td style="padding:5px 0 5px 0;">
				<b style="font-size:14px;">STATUE WAR TIME</b><br/>
				10:00 / 15:00<br/>
				21:00 / 24:00<br/>
				04:00     
				<hr style="color:#B9B5B6; background-color:#B9B5B6; border-style:solid; border-width:1px; max-width:148px;
							width:84.571428571428571428571428571429%; margin:5px 0 5px 0; padding:0 0 0 0;">
				<b style="font-size:14px;">GUILD WAR TIME</b><br/>
				Every Sunday<br/>
				19:00<br/>
			</td>
		</tr>
	</table>
	
	<table id="server_status" style="margin:5px 0 5px 0; padding:10px 0 0 0; line-height:1em; font-size:13px; width: 174px; border:#e0e0e0 thin solid; text-align: center;">
		<tr style="background-color: #e3e3e3;">
			<td style="padding:10px 0 10px 0;"><b style="font-size:14px;">SERVER STATUS</b></td>
		</tr>
		<tr style="background-color: #ffffff;" align="center">
			<td>
				<table style="text-align:left; width:85%; margin:10px 25px 0 25px;">
					
				</table>
			</td>
		</tr>
		<tr style="background-color: #ffffff;">
			<td>
				<div style="border:#e0e0e0 thin solid; border-radius: 5px; margin: 5px; padding:5px 1px 5px 1px;">
					<b>Server Maintenance</b><br/>
					Fri.08:00 / 09:00(GMT+8)
				</div>
			</td>
		</tr>
	</table>
	
	
	<div id="contact" style="margin:5px 0 5px 0; width: 174px; height:49px; background-image: url(/Page/img/main/mail2.gif); font-size:13px; line-height:22px;">
		<br/>rowmaster@youxiland.com 
	</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin" id="center_container">
			



<style type="text/css">
	@import url("/Page/css/sub-center.css");
	@import url("/Page/css/lay_member.css");
	@import url("/Page/css/common_font.css");
</style>

<script type="text/javascript">
function id_check()
{
	var id = document.regi_form.ID.value;
	var frm = document.regi_form;
	if(!frm.ID.value) {
		alert("Please enter ID");
		frm.ID.focus();
		return;
	}
	else if (frm.ID.value.length<6 || frm.ID.value.length>12) {
		alert('Account ID must be more than 6 characters and not exceed 12 characters.');
		return;
	}
	else if (chkValueID(frm.ID.value)!=true) {
		alert('ID may consist of a-z, 0-9');
		return;
	}
	window.open("/Page/member/idcheck.jsp?id="+id, "idcheck", "width=290, height=160");
}

function change_id() { document.regi_form.chkID.value=""; }
function change_nick(){ document.regi_form.chkNick.value=""; }

function nick_check()
{
	var nick = document.regi_form.name3.value;
	var frm = document.regi_form;
	if(!frm.name3.value) {
		alert("Please enter Nickname");
		frm.name3.focus();
		return;
	}
	else if (frm.name3.value.length<6 || frm.name3.value.length>12) {
		alert('Nickname must be more than 6 characters and not exceed 12 characters.');
		return;
	}
	else if (chkValueID(frm.name3.value)!=true) {
		alert('Nickname may consist of a-z, 0-9');
		return;
	}
	window.open("/Page/member/nickcheck.jsp?nick="+nick, "nickcheck", "width=290, height=160");
}

function mail_check()
{
	var mail = document.regi_form.email1.value + '@' + document.regi_form.email2.value;
	var frm = document.regi_form;
	if (fnCheckMail(mail)) {
		window.open("/Page/member/mailcheck.jsp?mail="+mail, "mailcheck", "width=290, height=160");
	}
	else {
		return;
	}
}

function chkValueID(str) 
{
	var ref="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var sLength=str.length;
	var chr, idx, idx2;

	for(var i=0; i<sLength; i++) {
		chr=str.charAt(i);
		idx=ref.indexOf(chr);
		if(idx==-1) {
			return 0;
		}
	}
	
	return 1;
}

function fnCheckMail(str) {
	if (str == "") return false;	
	
	var txtMailAccount = document.regi_form.email1.value;
	var txtMailDomain = document.regi_form.email2.value;
	if (txtMailAccount.indexOf('@') >= 0) {
		alert('Not a valid email format');
		document.regi_form.email1.value = "";
		document.regi_form.email1.focus();
		return false;
	}
	else if (txtMailDomain.indexOf('@') >= 0 || txtMailDomain.indexOf('.') < 0) {
		alert('Not a valid email format');
		document.regi_form.email2.value = "";
		document.regi_form.email2.focus();
		return false;
	}
	
	var t = str;
	
	var Alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	var Digit = '1234567890';
	var Symbol='_-';
	var check = '@.' + Alpha + Digit + Symbol;
	
	for (i=0; i < t.length; i++)
	   if(check.indexOf(t.substring(i,i+1)) < 0) 	{
		return false;
		}
	
	var check = '.';
	var b = 0;	
	for (i=0; i < t.length; i++)
		if(check.indexOf(t.substring(i,i+1)) >= 0) 	b = i;

	if (b != 0 && b != t.length-1 ) {
		return true;
	} else {
		return false;
	}
}

function fnChkNumber(value) {
	var temp = new String(value)
		
	if(temp.search(/\D/) != -1) {
		return false;
	}
	return true;
}

function resist_check() {

	var txtMail = document.regi_form.email1.value + '@' + document.regi_form.email2.value;
	var frm = document.regi_form;

	if ($('input:checkbox[name="mailing"]').is(":checked"))
	{
		frm.mailing_hidden.value = '1';
	}
	else
	{
		frm.mailing_hidden.value = '0';
	}
	
	if (!frm.ID.value) {
		alert('Please insert ID');
		return;
	} else if (frm.ID.value.length<6 || frm.ID.value.length>12) {
		alert('Account ID must be more than 6 characters and not exceed 12 characters.');
	} else if (chkValueID(frm.ID.value)!=true) {
		alert('Account ID may consist of a-z, 0-9');				
	} else if (frm.chkID.value=="") {
		alert('Please check if your account ID is available.');				

	} else if (!frm.pass.value) {
		alert('Please enter password');
	//} else if (chkValueID(frm.pass.value)!=true) {
	//	alert('Must not contain any special characters');				
	} else if (frm.pass.value.length<6 || frm.pass.value.length>12) {
		alert('Password must be more than 6 characters and not exceed 12 characters.');
	} else if (!frm.pass2.value) {
		alert('Please enter the password again to confirm');
	} else if (frm.pass.value!=frm.pass2.value) {
		alert('Confirm password does not match with your password.');	

	} else if (!frm.name3.value) {
		alert('Please enter Nickname');
	} else if (frm.name3.value.length<6 || frm.name3.value.length>12) {
		alert('Nickname must be more than 6 characters and not exceed 12 characters.');
	} else if (chkValueID(frm.name3.value)!=true) {
		alert('Nickname may consist of a-z, 0-9');				
	} else if (frm.chkNick.value=="") {
		alert('Please check if your nickname is available.');				
		
	} else if (fnChkNumber(frm.birth_year.value)==false)  {
		alert('Year of birth must be a 4 digit number.');

	} else if (!txtMail) {
		alert('Please enter E-mail');
	} else if (fnCheckMail(txtMail)==false) {
		alert('Not a valid email format');
	} 
	else {
		frm.action="/Page/en/member/createId.jsp";
		frm.submit();
	}
}		

function reset() {
	var frm = document.regi_form;

	frm.ID.value = "";
	frm.pass.value = "";
	frm.pass2.value = "";
	frm.name3.value = "";
	frm.chkNick.value = "";				
	frm.birth_year.value = "";
	frm.email1.value = "";
	frm.email2.value = "";
}		
</script>

<div id="main_content">
	<img src="/Page/en/img/sub/member/member_03.gif" class="img-responsive" />
	
	<div style="border:thin solid #e8e8e8; background-color:#ffffff; padding:15px 15px 15px 15px; margin:5px 0 5px 0;">
		<!-- Main contents Area Begin -->
		<div id="contents">
		
		<table style="width:100%; height:600px; border:none;">
		<tr>
		<td valign="top">
		<img src="/Page/en/img/sub/member/contents_img_06.gif" class="img-responsive"><br>
	
		<div align="left" style="margin-bottom:10px; color:#646464;">
			<b style="font-size: 14pt;">Account Information</b>
		</div>
		<div style="width:100%; padding:5px 0px 15px 0px;">
	
		<!-- Account Info Begin -->
		<div style="padding:7px 7px 7px 7px; border-radius:5px; border-width: thin; border-style: solid; border-color: #e0e0e0; font-size: 10pt; color:#000000;">
		<table style="width:100%; border:none;">
		<tr>
		<td style="width:100%;" align="center" bgcolor="#FFFFFF">
	
		<div align="center">
		<form name="regi_form" method="post">
		<input type="hidden" name="p" value='3'/>
		<input type="hidden" name="chkID">
		<input type="hidden" name="chkNick">
		<input type="hidden" name="chkMail">
		<input type="hidden" name="birth_month" value="31">
		<input type="hidden" name="birth_day" value="12">
		<input type="hidden" name="birth_year" value="2008">
		<input type="hidden" name="address" value="None">
		<input type="hidden" name="mailing_hidden" value="1">
		<table style="width:100%; border:none; font-size:12px;">
		<tr height="3"><td bgcolor="#990000" style="width:20%;"></td><td bgcolor="#666666"></td></tr>
		<tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px"><b>Account ID*</b></div></td>
			<td><div style="padding:5px"><input type="text" name="ID" class="sb_input" style="width:80%" onChange="change_id()" maxlength="24"> 
	        <a href="javascript:id_check();"><img src="/Page/en/img/sub/member/btn3_idcheck.gif" style="cursor: hand" /></a><br>
			<div class="t7_gray">Please enter your desired ID consist of English letters and numbers only.<br>(Minimum of 6 characters to Maximum 12 characters)</div>
	        </div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr>
	
		<tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px"><b>Password*</b></div></td>
			<td><div style="padding:5px"><input type="password" name="pass" class="sb_input" style="width:80%"><br>
			</div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr>
	
		<tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px"><b>Confirm Password*</b></div></td>
			<td><div style="padding:5px"><input type="password" name="pass2" class="sb_input" style="width:80%"><br>
			<div class="t7_gray">Enter the password again to confirm.</div>
			</div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr>
	
		<tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px">First Name</div></td>
			<td><div style="padding:5px"><input type="text" name="name1" class="sb_input" style="width:80%"></div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr>
		
		<tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px">Last Name</div></td>
			<td><div style="padding:5px"><input type="text" name="name2" class="sb_input" style="width:80%"></div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr>
	
		<tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px"><b>Nickname*</b></div></td>
			<td><div style="padding:5px"><input type="text" name="name3" class="sb_input" style="width:80%" onChange="change_nick()">
			<a href="javascript:nick_check();"><img src="/Page/en/img/sub/member/btn3_nickcheck.gif" style="cursor: hand" /></a><br>
			<div class="t7_gray">Please enter your desired nickname. <br> Post messages on ROW bulletin boards using this nickname.</div>
			</div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr>
	
		<tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px">Gender</div></td>
			<td><div style="padding:5px"><input type="radio" name="sex" value="M" checked="checked"> Male <input type="radio" name="sex" value="F"> Female
			</div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr>
	
		<!-- <tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px"><b>Nation*</b></td>
			<td><div style="padding:5px">test</div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr> -->
	
		<tr>
			<td bgcolor="#EEEEEE"><div style="padding:5px">E-mail</div></td>
			<td><div style="padding:5px"><input type="text" name="email1" class="sb_input" style="width:35%"> @ <input type="text" name="email2" class="sb_input" style="width:35%"><br/>
			<input type="checkbox" checked="checked" name="mailing" value="1"><font style="font-size:12px">I prefer to recieve news and event information via e-mail.</font>
			<div class="t7_gray">Please enter a valid email address.</div>
			</div></td>
		</tr>
		<tr height="1"><td bgcolor="#808080"> </td><td bgcolor="#808080"></td></tr>
	
		<tr><td colspan="2"><div align="justify" class="g8_gray">
		<span style="color: #990000">* Fields are required.</span><br>
		<div class="t7_gray">Optional information is mainly used for marketing and promotional purposes such as giving out gifts, holding regional events, and supporting other languages.</div>
		</div></td></tr>
	
		</table>
		</form>
		</div>
		<!-- Account Info End -->
	
		</td>
		</tr>
		</table>
		</div>
		</div>
	
		<div style="width:100%;" align="center">
		<a href="JavaScript:resist_check()"><img src="/Page/en/img/sub/member/btn2_submit.gif"></a> &nbsp;&nbsp;
		<a href="JavaScript:reset()"><img src="/Page/en/img/sub/member/btn2_reset.gif"></a>				
		</div>
	
		</td>
		</tr>
		</table>
		
		</div>
		<!-- Main contents Area End -->
	</div>
</div>
		</div>
		
		
		<div class="col-md-4 zero_padding zero_margin right_side" align="center" id="right_container">
			






<div style="float:left;">
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="http://rowplayon.com/Page/en/forum/forum.jsp?p=2&bbs=4&offset=1726"><img src="/Page/img/main/Item_Recovery.jpg" class="img-responsive" /></a>
	</div>
	
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="/Page/en/forum/forum.jsp?p=2&bbs=4&offset=172"><img src="/Page/img/main/menu3-global.png" class="img-responsive" /></a>
	</div>
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="/Page/en/forum/forum.jsp?p=2&bbs=4&offset=220"><img src="/Page/img/main/menu4-global.jpg" class="img-responsive" /></a>
	</div>
	
	<div id="ranking" style="max-width:175px; width:94.594594594594594594594594594595%; margin:3px 5px 3px 5px; line-height:1em;">
		<img src="/Page/img/main/ranking-top.gif" class="img-responsive" onclick='RankingWin()' style="cursor: pointer"/>
	</div>
	
	
	<div id="ranking" style="max-width:175px; width:94.594594594594594594594594594595%; margin:3px 5px 3px 5px; line-height:1em;">
		<img src="/Page/img/main/HIGH-WAR-STATUS-global.jpg" class="img-responsive" onclick='PlayerWin()' style="cursor: pointer"/>
	</div>
	
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; margin:0 5px 5px 5px;">
		<a href="/Page/en/itemMall/itemMall.jsp?p=3"><img src="/Page/img/main/item4.jpg" class="img-responsive" /></a>
	</div>
	
	<div style="max-width:175px; width:94.594594594594594594594594594595%; ">
		<a href="http://rowplayon.com/Page/en/forum/forum.jsp?p=2&bbs=7&offset=2384"><img src="/Page/img/main/Account-Protection.jpg" class="img-responsive" /></a>
	</div>
	
	
	<div id="best_item" style="max-width:175px; width:94.594594594594594594594594594595%;
		background-image:url(/Page/img/main/box3.gif); background-size:100% 100%; margin:5px 5px 0 5px; padding:5px 5px 0 5px;">
		<b>Best Selling Item</b><br/>
		<ul class="media-list" style="margin:15px 0 0 0; padding:0 0 0 0;">
				<li class='media' style='height:52px; margin:5px 0 5px 0;'>
		<a href='/Page/en/itemMall/itemMall.jsp?p=3&kind=1'>
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
		<a href='/Page/en/itemMall/itemMall.jsp?p=3&kind=3'>
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
		<a href='/Page/en/itemMall/itemMall.jsp?p=3&kind=5'>
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
</div>
<script>
myWindow=null;

function RankingWin()
{
	myWindow=window.open('/Page/'+'/rank.jsp','Ranking','width=500,height=320');
}
function PlayerWin()
{
	myWindow=window.open('/Page/'+'/player.jsp','Player','width=500,height=320');
}


</script>
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
			<b><a href="http://www.youxiland.com/" target="_blank">Company Information</a> | <a href="#" onclick="privacy()">Privacy Policy</a> | <a href="#" onclick="agree()">Service Agreement</a> | <a href="#" onclick="roc()">Rules of Conduct</a></b><br/>
			COPYRIGHT &copy; Youxiland Co., Ltd. ALL RIGHTS RESERVED.
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