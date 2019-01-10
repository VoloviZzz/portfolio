$(document).ready(function () {
  var api = {
    "api": {
    	"token":"1234",
      "ctrl":"get",
      "route":"users"
    }
  };
  $.ajax({
    type: "POST",
    url: "/api",
    data: JSON.stringify(api),
    dataType: "json",
    contentType: "application/json",
    success: function(data){
        console.log(data.ansver);
        for (var i = 0; i < data.ansver.length; i++) {

              var str  = '<tr data-id="'+data.ansver[i].id+'"';
                  if (data.ansver[i].active != 1) {
                    str += 'style="background-color: #fdc7c7;"';
                  }
                  str += '  >';
                  str += '  <td class="text-left">'+data.ansver[i].id+'</td>';
                  str += '  <td class="text-left"><a href="/profile_phone/'+data.ansver[i].phone+'">'+data.ansver[i].name+' '+data.ansver[i].surname+' '+data.ansver[i].second_name+'</a></td>';
                  str += '  <td class="text-right" >'+data.ansver[i].phone+'</td>';
                  str += '  <td class="text-center">';
                  str += '    <div class="dropdown">';
                  str += '      <button class="btn btn-primary btn-xs dropdown-toggle" data-toggle="dropdown" type="button" aria-expanded="false">';
                  str += '        Action';
                  str += '        <span class="caret"></span>';
                  str += '      </button>';
                  str += '      <ul class="dropdown-menu dropdown-menu-right">';
                  str += '        <li><a class="list" data-phone="'+data.ansver[i].phone+'">Подробнее</a></li>';
                  str += '        <li><a class="edit" data-phone="'+data.ansver[i].phone+'">Редактировать</a></li>';
                  str += '        <li role="separator" class="divider"></li>';
                  str += '        <li><a class="ban-token" data-phone="'+data.ansver[i].phone+'">Бан по токену</a></li>';
                  str += '        <li><a class="ban-login" data-phone="'+data.ansver[i].phone+'">Бан по логину</a></li>';
                  str += '      </ul>';
                  str += '    </div>';
                  str += '  </td>';
                  str += '</tr>';

          $('.table').find('tbody').append(str);
        }
        $('.list').click(function (e) {
          document.location = '/profile_phone/'+$(this).data('phone');
        });
        $('.edit').click(function (e) {
          document.location = '/edit_profile_phone/'+$(this).data('phone');
        });
        $('.ban-token').click(function (e) {
          console.log(e);
          var api = {
            "api": {
              "token":"1234",
              "ctrl":"ban_token_with_phone",
              "route":"users",
              "phone": $(this).data('phone')
            }
          };
          $.ajax({
            type: "POST",
            url: "/api",
            data: JSON.stringify(api),
            dataType: "json",
            contentType: "application/json",
            success: function(data){
                location.reload();
                }
            });
        });

        $('.ban-login').click(function (e) {
          console.log(e);
          var api = {
            "api": {
              "token":"1234",
              "ctrl":"ban_login",
              "route":"users",
              "phone": $(this).data('phone')
            }
          };
          $.ajax({
            type: "POST",
            url: "/api",
            data: JSON.stringify(api),
            dataType: "json",
            contentType: "application/json",
            success: function(data){
                location.reload();
                }
            });
        });

      }
    });




});
