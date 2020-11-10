<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Message Transaction</h1></i>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <div class="row" id="message">
                  <div class="col-7">
                    <div class="card">
                      <div class="card-body">
                        asdsadsad
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-6">
                    <input type="text" class="form-control" id="text-input">
                  </div>
                  <div class="col-1">
                    <button class="btn btn-success" type="button" onclick="sendMessage()"><i class="fas fa-send"></i> Kirim</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <script>
    var socket = '';
    window.addEventListener("load", function(){

    socket = new WebSocket('ws://echo.websocket.org');

    socket.onerror = function(error) {
      console.log('WebSocket Error: ' + error);
    };
    socket.onmessage = function(event) {
      alert('asdas');
      var message = '<div class="col-7">'+
                    '<div class="card">'+
                      '<div class="card-body">'+
                       event.data+
                      '</div>'+
                    '</div>'+
                  '</div>';
      $('#message').append(message);
    };
    }, false);
    function sendMessage(){
      var message = '<div class="col-7">'+
                    '<div class="card">'+
                      '<div class="card-body">'+
                       $('#text-input').val()+
                      '</div>'+
                    '</div>'+
                  '</div>';
      var text_message = $('#text-input').val();
      $('#message').append(message);
      socket.send(text_message);
    }
    // Handle any errors that occur.
  </script>