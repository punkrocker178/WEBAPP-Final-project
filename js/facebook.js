window.fbAsyncInit = function () {
  FB.init({
    appId: '379041069305688',
    cookie: true,
    xfbml: true,
    version: 'v3.2'
  });

  FB.AppEvents.logPageView();

};

function checkLoginState() {
  FB.getLoginStatus(function (response) {
    statusChangeCallback(response);
  });
}

function statusChangeCallback(response) {
  console.log("statusChangeCallback");
  //console.log(response);
  // The response object is returned with a status field that lets the
  // app know the current login status of the person.
  if (response.status === 'connected') {
    // Logged into your app and Facebook.
    //alert('Welcome! Fetching data...');
    //Yêu cầu ng dùng nhập mật khẩu để tạo tài khoản 
    FB.api('/me', {
      fields: "name,email,birthday,gender"
    }, function (response) {
        $.post("register.php",{func: 'userIsExist' , email : response.email},function(data){
          console.log(data);
          if(data == null){
            fbRegister(response);
          }else{
            fbLogin(response);
          }
        },"json")
    });
  } else {
    // The person is not logged into your app or we are unable to tell.
    console.log('Please login');
  }
}

function fbLogin(response) {
  $.post("login.php", {
    userFB: response
  },function(data){
    if(data == true){
        $("#loginModal").modal("hide");
				setTimeout(function () {
					window.location = "http://localhost/WEBAPP-Final-project/index.php";
        }, 2000);
        $("#loginSuccess").modal();
    }
  },"json")
}

function fbRegister(response) {
  $("#passwordFB").modal({
    show: true,
    backdrop: "static",
    keyboard: false
  });
  $("#continueBtn_FB").click(function () {
      var password = $("#passwordFB1").val();
      var passwordConfirm = $("#passwordFBConfirm").val();
      $.post("register.php", {
        email: response.email,
        name: response.name,
        fb_birthday: response.birthday,
        gender: response.gender,
        sdt: "0",
        passwordRegister: password,
        passwordConfirmation: passwordConfirm
      },function(data){
        if(data==true){
          $("#registerModal").modal('hide');
          setTimeout(function () {
            window.location = "http://localhost/WEBAPP-Final-project/index.php";
          }, 2000);
          $("#registerSuccess").modal();
        }
      },"json");
    });
  }


  (function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {
      return;
    }
    js = d.createElement(s);
    js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));