<!DOCTYPE html>
<head>
  <title>Pusher Test</title>
  <script src="//js.pusher.com/2.2/pusher.min.js" type="text/javascript"></script>
  <script type="text/javascript">
    // Enable pusher logging - don't include this in production
    Pusher.log = function(message) {
      if (window.console && window.console.log) {
        window.console.log(message);
      }
    };

    var pusher = new Pusher('d2c10aba8ee2d9de4da5');
    var channel = pusher.subscribe('peter_channel');
    channel.bind('peter_event', function(data) {
      alert(data.message);
      console.log(data);
    });
  </script>
</head>

