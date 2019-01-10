new Site();
var socket = io('http://elmsoftware.ru:8081/');
$(document).ready(function () {
	setTimeout(function () {
		var map = new Map('map', 11, 53.378831, 58.980377);
		map.setCenter('53.380831, 58.912577');
		map.addMarker(53.378831, 58.980377);
	}, 200);


	  socket.on('connect', function(){
			console.log('connect');
		});

		socket.on('message', function(data){
			console.log('-----------');
			console.log(data);
		});
	  socket.on('disconnect', function(){
			console.log('disconnect');
		});

		$('.LADA').click(function () {
			if ($('.avenue-messenger').css('display') == 'none') {
				$('.avenue-messenger').show(300);
				$('.description').hide(200);
			}
		});
		$('.End.Chat').click(function () {
			$('.avenue-messenger').hide(300);
			$('.description').show().delay(500);
		});






});







//-------------------chat---------------------------
var $messages = $('.messages-content'),
d, h, m,
i = 0;

$(window).load(function() {
	$messages.mCustomScrollbar();
	setTimeout(function() {
		if (localStorage.getItem('messages') == null || localStorage.getItem('messages') == '[]') {
				fakeMessage();
		}else {
			JSON.parse(localStorage.getItem('messages')).reverse().forEach(elem => {
				console.log(elem);
				if (elem.lada) {
					$('<div class="message new"><figure class="avatar"><img src="uploads/lada.png" /></figure>' + elem.lada + '</div>').prependTo($('.mCSB_container')).addClass('new');
				}else {
					$('<div class="message message-personal">' + elem.user + '</div>').prependTo($('.mCSB_container')).addClass('new');
				}
			});
		}
	}, 200);
});


function updateScrollbar() {
	$messages.mCustomScrollbar("update").mCustomScrollbar('scrollTo', 'top', {
		scrollInertia: 10,
		timeout: 200
	});
}

function setDate(){
	d = new Date()
	if (m != d.getMinutes()) {
		m = d.getMinutes();
		$('<div class="timestamp">' + d.getHours() + ':' + m + '</div>').appendTo($('.message:last'));
		$('<div class="checkmark-sent-delivered">&check;</div>').appendTo($('.message:last'));
		$('<div class="checkmark-read">&check;</div>').appendTo($('.message:last'));
	}
}

function insertMessage() {
	msg = $('.message-input').val();
	if ($.trim(msg) == '') {
		return false;
	}
	$('.new').removeClass('new');
	$('<div class="message message-personal">' + msg + '</div>').prependTo($('.mCSB_container')).addClass('new');
	setDate();
	$('.message-input').val(null);
	updateScrollbar();
	socket.emit('message', msg);
}
socket.on('message', function(data){
	console.log(data);
	fakeMessage(data);
});

$('.message-submit').click(function() {
	insertMessage();
});

$(window).on('keydown', function(e) {
	if (e.which == 13) {
		insertMessage();
		return false;
	}
})

var Fake = [
	'Привет, я нейросеть по имени Лада. Вова меня создал на основе dialogflow от Google. Я ещё очень молодая ИНС, но со мной лучше не шутить.'
];

function fakeMessage(text) {
	$('<div class="message loading new"><figure class="avatar"><img src="uploads/lada.png" /></figure><span></span></div>').prependTo($('.mCSB_container'));
	updateScrollbar();
	setTimeout(function() {
		$('.message.loading').remove();
		if (text) {
			$('<div class="message new"><figure class="avatar"><img src="uploads/lada.png" /></figure>' + text + '</div>').prependTo($('.mCSB_container')).addClass('new');
			save_messages();
		}else {
			$('<div class="message new"><figure class="avatar"><img src="uploads/lada.png" /></figure>' + Fake[0] + '</div>').prependTo($('.mCSB_container')).addClass('new');
		}
		setDate();
		updateScrollbar();
	}, 100);

}

function save_messages() {
	console.log('сообщения сохраняются');
	var array_messages = [];
	$('.message').each(function () {
		if ($(this).hasClass('message-personal')) {
			array_messages.push({
				user: $(this).text()
			});
		}else {
			array_messages.push({
				lada: $(this).text()
			});
		}
	});
	localStorage.setItem('messages', JSON.stringify(array_messages));
}


$('.button').click(function(){
	$('.menu .items span').toggleClass('active');
	 $('.menu .button').toggleClass('active');
});












//-----------------------------------------------------------
