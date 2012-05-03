$(document).ready(function(){
	$('select#reservation_date_1i').change(onChangeReservationYear);
	$('select#reservation_date_2i').change(onChangeReservationMonth);
});

onChangeReservationMonth = function() {
	var currentMonth = (new Date).getMonth();
	var currentDay = (new Date).getDate();
	var numOfDate = new Array();
	numOfDate[1] = 31;
	numOfDate[2] = 28;
	numOfDate[3] = 31;
	numOfDate[4] = 30;
	numOfDate[5] = 31;
	numOfDate[6] = 30;
	numOfDate[7] = 31;
	numOfDate[8] = 31;
	numOfDate[9] = 30;
	numOfDate[10] = 31;
	numOfDate[11] = 30;
	numOfDate[12] = 31;
	var daySelect = "<option>Day</option>";
	console.log(currentMonth + " wakoko");
	if (currentMonth + 1 == $(this).val()) {
		console.log(currentDay + " wakoko");
		for (var n = currentDay; n <= numOfDate[currentMonth + 1]; n++) {
			daySelect += "<option value='" + n + "'>" + n + "</option>";
		}
	} else {
		for (var n = 1; n <= numOfDate[currentMonth + 1];  n++) {
			daySelect +="<option value='" + n + "'>" + n + "</option>";
		}
	}
	$('select#reservation_date_3i').html(daySelect);
}

onChangeReservationYear = function() {
	var currentYear = (new Date).getFullYear();
	var currentMonth = (new Date).getMonth();
	var currentDay = (new Date).getDate();
	var month = new Array();
	month[1] = "January";
	month[2] = "February";
	month[3] = "March";
	month[4] = "April";
	month[5] = "May";
	month[6] = "June";
	month[7] = "July";
	month[8] = "August";
	month[9] = "September";
	month[10] = "October";
	month[11] = "November";
	month[12] = "December";

	var monthSelect= "<option>Month</option>";
	if ($(this).val() == currentYear) {
		console.log(currentMonth);
		for (var n = currentMonth + 1; n <= 12;  n++) {
			monthSelect +="<option value='" + n + "'>" + month[n] + "</option>";
		}
	} else {
		for (var n = 1; n <= 12;  n++) {
			monthSelect +="<option value='" + n + "'>" + month[n] + "</option>";
		}
	}
	
	$('select#reservation_date_2i').html(monthSelect);
}
