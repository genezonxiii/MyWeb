$(function(){
	$("[name=q1]").click(function(){
		if ($("[name=q1]:checked").val() == 0){
			$("[name=q2]").attr("disabled", true);
			$("[name=q2]:checked").prop('checked', false);
		} else {
			$("[name=q2]").removeAttr('disabled');
		}
	});
	
	$('[name=q3]').click(function(){
		if($('[name=q3]:checked').val() == '22'){
			$('#q3_22_any_else').show().focus();
	    } else {
			$('#q3_22_any_else').hide().val('');
			$(this).focus();
	    }
	});

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
		
		if (company_name == '') {
			$('#company_name').focus();
			return false;
		} else if (company_id == '') {
			$('#company_id').focus();
			return false;
		} else if (company_address == '') {
			$('#company_address').focus();
			return false;
		} else if (company_username == '') {
			$('#company_username').focus();
			return false;
		} else if (company_position == '') {
			$('#company_position').focus();
			return false;
		} else if (company_phone == '') {
			$('#company_phone').focus();
			return false;
		} else if (company_email == '') {
			$('#company_email').focus();
			return false;
		} else if (q1 == undefined) {
			$('[name=q1]:eq(0)').focus();
			return false;
		} else if (q2.length == 0 && q1 == '1') {
			$('[name=q2]:eq(0)').focus();
			return false;
		} else if (q3 == undefined) {
			$('[name=q3]:eq(0)').focus();
			return false;
		} else if (q4 == '') {
			$('[name=q4]:eq(0)').focus();
			return false;
		} else if (q5 == undefined) {
			alert('請選擇Q5的選項，謝謝！')
			$('[name=q5]:eq(0)').focus();
			return false;
		}
		
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
			$('form')[0].reset();
			alert('感謝您撥冗填寫問卷！');
		});
	}
})