
// if (document.readyState === 'complete') {
//   console.log('document is already ready, just execute code here');
  
// } else {
//     document.addEventListener('DOMContentLoaded', function () {
//       console.log('document was not ready, place code here');
//   });
// }
  var tag = document.createElement('script');
  // 2. This code loads the IFrame Player API code asynchronously.
  tag.src = "https://www.youtube.com/iframe_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
  //Khởi tạo youtube player
  var player;
  //Lấy video ID của phim từ database
  var videoID = document.getElementById("videoID").value;
  function onYouTubeIframeAPIReady() {
    player = new YT.Player('player', {
      height: '390',
      width: '640',
      videoId: videoID,
      events: {
        'onReady': onPlayerReady,
        //'onStateChange': onPlayerStateChange
      },
      playerVars: {
        'rel': 0
      }
    });
  }
    // 4. The API will call this function when the video player is ready.
    function onPlayerReady(event) {
      event.target.setVolume(50);
      event.target.playVideo();
    }
  
    // 5. The API calls this function when the player's state changes.
    //    The function indicates that when playing a video (state=1),
    //    the player should play for six seconds and then stop.
    var done = false;
  
    function onPlayerStateChange(event) {
      // if (event.data == YT.PlayerState.PLAYING && !done) {
      //   setTimeout(stopVideo, 6000);
      //   done = true;
      // }
    }
    function stopVideo() {
      player.stopVideo();
    }
  
