<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>進擊新南向 擁抱大市場 問卷調查</title>
</head>
<body>
	<p>
	參與「進擊新南向 擁抱大市場」國際論壇的業者有福了~經濟部國際貿易局為協助廠商出口，
	規劃辦理許多海外拓銷活動，為服務參與本次論壇有志拓展東協、印度市場的業者，
	特提供「拓銷資源快速導航」，只要花2分鐘填寫線上問卷，就可以立即獲得符合公司需求的拓銷資源建議報告
	，讓您一次掌握各項拓銷資源，加速海外布局!!
	</p>
	<form action="quest">
		<div class="company_info">
			<label for="company_name">公司名稱</label><input id="company_name">
			<label for="company_id">統編</label><input id="company_id">
			<label for="company_address">地址</label><input id="company_address">
			<label for="company_username">填寫人</label><input id="company_username">
			<label for="company_position">職位</label><input id="company_position">
			<label for="company_phone">電話：(市話/手機擇一填寫即可）</label><input id="company_phone">
			<label for="company_email">E-mail</label><input id="company_email">
		</div>
		
		<div class="quest">
			<p>Q1：貴公司近3年是否出口至東協、印度市場？</p>
			<input id="q1_y" name="q1" type="radio" value="1">
			<label for="q1_y">是</label>
			<input id="q1_n" name="q1" type="radio" value="0">
			<label for="q1_n">否(直接跳至Q3)</label>
		</div>
		
		<div class="quest">
			<p>Q2：貴公司近3年曾出口東協、印度哪些國家?(複選 )</p>
			<input id="q2_01" name="q2" type="checkbox" value="印尼"><label for="q2_01">印尼</label>
			<input id="q2_02" name="q2" type="checkbox" value="越南"><label for="q2_02">越南</label>
			<input id="q2_03" name="q2" type="checkbox" value="馬來西亞"><label for="q2_03">馬來西亞</label>
			<input id="q2_04" name="q2" type="checkbox" value="泰國"><label for="q2_04">泰國</label>
			<input id="q2_05" name="q2" type="checkbox" value="菲律賓"><label for="q2_05">菲律賓</label>
			<input id="q2_06" name="q2" type="checkbox" value="新加坡"><label for="q2_06">新加坡</label>
			<input id="q2_07" name="q2" type="checkbox" value="緬甸"><label for="q2_07">緬甸</label>
			<input id="q2_08" name="q2" type="checkbox" value="寮國"><label for="q2_08">寮國</label>
			<input id="q2_09" name="q2" type="checkbox" value="柬普寨"><label for="q2_09">柬普寨</label>
			<input id="q2_10" name="q2" type="checkbox" value="汶萊"><label for="q2_10">汶萊</label>
			<input id="q2_11" name="q2" type="checkbox" value="印度"><label for="q2_11">印度</label>
		</div>
		
		<div class="quest">
			<p>Q3：請問 貴公司的主力出口產品類別為：（單選）</p>
			<input id="q3_01" name="q3" type="radio" value="01"><label for="q3_01">01：調製食品；飲料及菸類</label>
			<input id="q3_02" name="q3" type="radio" value="02"><label for="q3_02">02：礦產品</label>
			<input id="q3_03" name="q3" type="radio" value="03"><label for="q3_03">03：化學品</label>
			<input id="q3_04" name="q3" type="radio" value="04"><label for="q3_04">04：塑膠、橡膠及其製品</label>
			<input id="q3_05" name="q3" type="radio" value="05"><label for="q3_05">05：皮革、毛皮製品</label>
			<input id="q3_06" name="q3" type="radio" value="06"><label for="q3_06">06：木材、木製品及編結品，合板</label>
			<input id="q3_07" name="q3" type="radio" value="07"><label for="q3_07">07：紡織品（含合成纖維製品、棉製品、人造纖維製品、羊毛製品、人造毛皮及其製品）</label>
			<input id="q3_08" name="q3" type="radio" value="08"><label for="q3_08">08：鞋、帽、雨傘、羽毛製品，人造花，人髮製品</label>
			<input id="q3_09" name="q3" type="radio" value="09"><label for="q3_09">09：石料、水泥、陶瓷、玻璃及其製品</label>
			<input id="q3_10" name="q3" type="radio" value="10"><label for="q3_10">10：基本金屬及其製品</label>
			<input id="q3_11" name="q3" type="radio" value="11"><label for="q3_11">11：電子</label>
			<input id="q3_12" name="q3" type="radio" value="12"><label for="q3_12">12：機械</label>
			<input id="q3_13" name="q3" type="radio" value="13"><label for="q3_13">13：電機</label>
			<input id="q3_14" name="q3" type="radio" value="14"><label for="q3_14">14：資通信</label>
			<input id="q3_15" name="q3" type="radio" value="15"><label for="q3_15">15：家電</label>
			<input id="q3_16" name="q3" type="radio" value="16"><label for="q3_16">16：車輛、航空器、船舶及有關運輸設備</label>
			<input id="q3_17" name="q3" type="radio" value="17"><label for="q3_17">17：精密儀器，鐘錶，樂器</label>
			<input id="q3_18" name="q3" type="radio" value="18"><label for="q3_18">18：玩具遊戲品與運動用品及其零、附件</label>
			<input id="q3_19" name="q3" type="radio" value="19"><label for="q3_19">19：家具</label>
			<input id="q3_20" name="q3" type="radio" value="20"><label for="q3_20">20：美妝保養品</label>
			<input id="q3_21" name="q3" type="radio" value="21"><label for="q3_21">21：服務業</label>
			<input id="q3_22" name="q3" type="radio" value="22"><label for="q3_22">22：其他</label>
		</div>
		
		<div class="quest">
			<p>Q4.請問您認為 貴公司拓展東協、印度需要那些拓銷資源？(複選題，至多5項)</p>
			<input id="q4_01" name="q4" type="checkbox" value="01"><label for="q4_01">海外展團拓銷（如參展/拓銷團、參展補助等）</label>
			<input id="q4_02" name="q4" type="checkbox" value="02"><label for="q4_02">買主採購機會（如採購洽談會或媒合會）</label>
			<input id="q4_03" name="q4" type="checkbox" value="03"><label for="q4_03">海外據點服務(如貿協海外據點服務、駐外開發市場商機)</label>
			<input id="q4_04" name="q4" type="checkbox" value="04"><label for="q4_04">海外行銷通路(如申請海外市行銷通路補助)</label>
			<input id="q4_05" name="q4" type="checkbox" value="05"><label for="q4_05">網路行銷(如刊登電子型錄、視訊洽談會等)</label>
			<input id="q4_06" name="q4" type="checkbox" value="06"><label for="q4_06">商情資訊(如查詢各國市場調查、商情報導等)</label>
			<input id="q4_07" name="q4" type="checkbox" value="07"><label for="q4_07">人才培育及媒合（如課程訓練、人材媒合等）</label>
			<input id="q4_08" name="q4" type="checkbox" value="08"><label for="q4_08">輔導諮詢（如提供行銷諮詢服務、清真推廣等）</label>
			<input id="q4_09" name="q4" type="checkbox" value="09"><label for="q4_09">貿易金融（如出口融資、貸款等）</label>
			<input id="q4_10" name="q4" type="checkbox" value="10"><label for="q4_10">形象推廣（如記者會、技術論壇等）</label>
			<input id="q4_11" name="q4" type="checkbox" value="11"><label for="q4_11">綠色產業專案計畫</label>
			<input id="q4_12" name="q4" type="checkbox" value="12"><label for="q4_12">紡織產業專案計畫</label>
			<input id="q4_13" name="q4" type="checkbox" value="13"><label for="q4_13">消費品拓展專案計畫</label>
			<input id="q4_14" name="q4" type="checkbox" value="14"><label for="q4_14">服務業專案計畫</label>
			<input id="q4_15" name="q4" type="checkbox" value="15"><label for="q4_15">爭取國外政府採購專案計畫</label>
			<input id="q4_16" name="q4" type="checkbox" value="16"><label for="q4_16">清真產品推廣計畫</label>
		</div>

		<div class="quest">
			<p>Q5：請問您是否願意後續專人連絡以進一步提供政府拓銷資源說明?</p>
			<input id="q5_y" name="q5" type="radio" value="1"><label for="q5_y">願意</label>
			<input id="q5_n" name="q5" type="radio" value="0"><label for="q5_n">不願意</label>
		</div>
		
		<input type="submit" value="送出" /> 
	</form>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script>
		$(function(){
			$("[name=q4]").click(function(){
				if ($("[name=q4]:checked").size()>5){
					alert('複選題，至多5項');
					return false;
				}
			});
			
			$( "form" ).submit(function( event ) {
			  submitForm();
			  event.preventDefault();
			});
			
			submitForm = function(){
				var company_name = $('#company_name').val(),
					company_id = $('#company_id').val(),
					company_address = $('#company_address').val(),
					company_username = $('#company_username').val(),
					company_position = $('#company_position').val(),
					company_phone = $('#company_phone').val(),
					company_email = $('#company_email').val(),
					q1 = $('[name=q1]:checked').val(),
					q2 = "",
					q3 = $('[name=q3]:checked').val(),
					q4 = "",  
					q5 = $('[name=q5]:checked').val();
				
				let ar_q2 = [], ar_q4 = [];
				$('[name=q2]:checked').each(function(){
					ar_q2.push($(this).prop("value"));
				});
				q2 = ar_q2.join(",");
				$('[name=q4]:checked').each(function(){
					ar_q4.push($(this).prop("value"));
				});
				q4 = ar_q4.join(",");
				
				var data = {
					company_name: company_name,
					company_id: company_id,
					company_address: company_address,
					company_username: company_username,
					company_position: company_position,
					company_phone: company_phone,
					company_email: company_email,
					q1: q1,
					q2: q2,
					q3: q3,
					q4: q4,
					q5: q5
				};
				
				$.post('quest', data, function(){
					alert('感謝您撥冗填寫問卷！');
				});
			}
		})
	</script>
</body>
</html>