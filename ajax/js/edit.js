function edit_data(id,text,column_name) {
	$.ajax({
		url: "ajax/php/edit.php",
		method: "POST",
		data: {
			id: id,
			text: text,
			column_name: column_name
		},
		dataType: "text",
		success: function(data) {
			$('#result').html("<div class='alert alert-success alert-dismissible show'><strong>Updated successfully</strong><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>");
		}
	});
}
$(document).on('change', '.name', function() {
	var id = $(this).data("id1");
	var name = $(this).val();
	edit_data(id,name,"name");
});

function edit_json(id,key,value,column_name) {
	$.ajax({
		url: "ajax/php/edit-json.php",
		method: "POST",
		data: {
			id: id,
			key: key,
			value: value,
			column_name: column_name
		},
		dataType: "text",
		success: function(data) {
			$('#result').html("<div class='alert alert-success alert-dismissible show'><strong>Updated successfully</strong><button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button></div>");
		}
	});
}
$(document).on('change', '.screen', function() {
	var id = $(this).data("id2");
	var value = $(this).val();
	var key = '$.screen';
	edit_json(id,key,value, "attributes");
});
$(document).on('change', '.usb', function() {
	var id = $(this).data("id3");
	var value = $(this).val();
	var key = '$.ports.usb';
	edit_json(id,key,value, "attributes");
});
$(document).on('change', '.hdmi', function() {
	var id = $(this).data("id4");
	var value = $(this).val();
	var key = '$.ports.hdmi';
	edit_json(id,key,value, "attributes");
});
$(document).on('change', '.resolution', function() {
	var id = $(this).data("id5");
	var value = $(this).val();
	var key = '$.resolution';
	edit_json(id,key,value, "attributes");
});
$(document).on('change', '.left-speaker', function() {
	var id = $(this).data("id6");
	var value = $(this).val();
	var key = '$.speakers.left';
	edit_json(id,key,value, "attributes");
});
$(document).on('change', '.right-speaker', function() {
	var id = $(this).data("id7");
	var value = $(this).val();
	var key = '$.speakers.right';
	edit_json(id,key,value, "attributes");
});
