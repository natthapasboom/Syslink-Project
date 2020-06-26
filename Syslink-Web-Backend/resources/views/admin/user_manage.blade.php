<?php 
  $connect = mysqli_connect("localhost","root","","makubmaka_db");
  $query = "
SELECT * FROM users";

  $result = mysqli_query($connect,$query);

  if (!$result ?? '') {
    printf("Error: %s\n", mysqli_error($connect));
    exit();
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SyslinkTech | จัดการผู้ดูแล</title>
  <link rel="icon" href="../../dist/img/SyslinkLogo.png" type="image/x-icon">

  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="../../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="../home" class="nav-link">หน้าแรก</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="#" class="nav-link">ติดต่อเรา</a>
        </li>
      </ul>



      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">

      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      @include('layouts.logo_header')


      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user (optional) -->
        @include('layouts.profile_header')


        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu"
            data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->


            <li class="nav-item has-treeview menu-open">
              <a href="#" class="nav-link active bg-danger">
                <i class="fas fa-users "></i>
                <p>
                  ข้อมูลพนักงาน
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview ">
                <li class="nav-item">
                  <a href="/home" class="nav-link">
                    <i class="fas fa-table"></i>
                    <p>ข้อมูลการเข้า-ออก</p>
                  </a>
                </li>
                {{-- <li class="nav-item">
                    <a href="../tables/data.html" class="nav-link">
                      <i class="nav-icon fas fa-plane"></i>
                      <p>ข้อมูลการลา</p>
                    </a>
                  </li> --}}

              </ul>
            </li>
            <li class="nav-item has-treeview menu-open">
              <a href="#" class="nav-link active bg-danger">
                <i class="fas fa-cog"></i>
                <p>
                  การจัดการ
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="../edit/employees" class="nav-link ">
                    <i class="fas fa-user-edit"></i>
                    <p>จัดการพนักงาน</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="../edit/users" class="nav-link active">
                    <i class="fas fa-user-cog"></i>
                    <p>จัดการผู้ดูแล</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="../edit/locations" class="nav-link">
                    <i class="fas fa-map-marked-alt"></i>
                    <p>จัดการสถานที่</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="../edit/roles" class="nav-link">
                    <i class="fas fa-address-card"></i>
                    <p>จัดการตำแหน่ง</p>
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item">

              <a href=" {{ route('logout') }}" onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();" class="nav-link">
                <i class="fas fa-sign-out-alt text-danger"></i>
                <p class="text-danger">ออกจากระบบ</p>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                  @csrf
                </form>
              </a>
            </li>
          </ul>


        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-12">
              <h1>จัดการผู้ดูแล
                <button type="button" class="btn btn-outline-primary float-right" data-toggle="modal"
                  data-target="#addmodal">
                  เพิ่มผู้ดูแล
                  <i class="fa fa-plus-circle"></i>
                </button>
              </h1>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">

              <div class="card">

                <!-- /.card-header -->
                <div class="card-body">
                  <table id="admintable" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>ไอดี</th>
                        <th>รหัสพนักงาน</th>
                        <th>ชื่อ</th>
                        <th>นามสกุล</th>
                        <th colspan="2" style="text-align: center;">แก้ไข</th>

                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                    if(mysqli_num_rows($result)>0){
                      while ($row = mysqli_fetch_array($result)) {
                        echo '
                        <tr>
                          <td>'.$row["id"].'</td>
                          <td>'.$row["username"].'</td>
                          <td>'.$row["name"].'</td>
                          <td>'.$row["surname"].'</td>
                          <td>
                              <button type="button" class="btn btn-sm bg-green editbtn">
                              <i class="fa fa-edit"; ></i>
                                </button>
                            </td> 
                            <td>
                              <button type="button" class="btn btn-sm bg-danger deletebtn">
                              <i class="fa fa-trash"></i>
                                </button>
                            </td> 
                            
                        </tr>
                          ';
                      }
                    }

                    ?>
                    </tbody>

                  </table>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->


    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->
  <script src="../../plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- DataTables -->
  <script src="../../plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../../dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="../../dist/js/demo.js"></script>
  <!-- page script -->
  <script src="../plugins/ekko-lightbox/ekko-lightbox.min.js"></script>
  <script src="../plugins/filterizr/jquery.filterizr.min.js"></script>
  <script>
    $(document).ready(function () {
    @if (count($errors) > 0)
          $('#alertmodal').modal('show');
    @endif
    $("#admintable").DataTable({
      columnDefs: [
          {
            targets:   0,
            className: 'text-center',

          },
          {
            targets:   4,
            className: 'text-center',

          },
          {
            targets: 5,
            className: 'text-center',
          },
        ],
   "info": false,
      language: {
        "infoEmpty": "",
        "emptyTable": "ไม่พบข้อมูล",
        "lengthMenu": "แสดงข้อมูล  _MENU_  รายการ",
        paginate: {
            first:    '«',
            previous: '‹',
            next:     '›',
            last:     '»'
        },
        aria: {
            paginate: {
                first:    'หน้าแรก',
                previous: 'ย้อนกลับ',
                next:     'ถัดไป',
                last:     'หน้าสุดท้าย'
            }
        }
    },
      "responsive": true,
      "autoWidth": false,
      "oLanguage": {
        "sSearch": "ค้นหา : ",
        "sLengthMenu": "แสดง _MENU_ แถว",
    },
    });

    //Edit Form Placeholder
    $('.editbtn').on('click',function(){
      $('#editmodal').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function(){
          return $(this).text();
        }).get();
    console.log(data);
    $('#username').val(data[1]);
    $('#name').val(data[2]);
    $('#surname').val(data[3]);
    $('#usersupdate').attr('action','../edit/users/update/'+data[0]);        
    
    });

    $('.deletebtn').on('click',function(){
      $('#deletemodal').modal('show');
        $tr = $(this).closest('tr');
        var data2 = $tr.children("td").map(function(){
          return $(this).text();
        }).get();
    console.log(data2);
    $('#delusername').val(data2[1]);
    $('#delname').val(data2[2]);
    $('#delsurname').val(data2[3]);
    $('#usersdelete').attr('action','../edit/users/delete/'+data[0]);        
    
  });

  });
  </script>
</body>

</html>


<div class="modal fade" id="editmodal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">แก้ไขข้อมูลผู้ดูแล</h4>
        <button type="button" class="close" data-dismiss="editmodal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="../edit/users/update" method="POST" id="usersupdate">
        @csrf
        {{ method_field('PUT') }}

        <div class="modal-body">
          <div class="form-group">
            <label>รหัสผู้ดูแล</label>
            <input type="text" id="username" name="username" class="form-control " maxlength="7" placeholder="*">
          </div>
          <div class="form-group">
            <label>รหัสผ่านใหม่</label>
            <input type="password" id="password" name="password" class="form-control " maxlength="30" placeholder="*">
          </div>
         
          <div class="form-group">
            <label>ชื่อ</label>
            <input type="text" id="name" name="name" class="form-control " maxlength="20" placeholder="*">
          </div>
          <div class="form-group">
            <label>นามสกุล</label>
            <input type="text" id="surname" name="surname" class="form-control" maxlength="20" placeholder="*">
          </div>
        </div>
        <div class="modal-footer justify-content-end">
          <button type="submit" class="btn bg-green" name="updatedata">บันทึก</button>
        </div>
      </form>

    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="addmodal">
  <div class="modal-dialog ">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">เพิ่มผู้ดูแล</h4>
        <button type="button" class="close" data-dismiss="addmodal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="../edit/users/create" method="POST">
        @csrf
        <div class="modal-body">
          <div class="form-group">
            <label>รหัสผู้ดูแล</label>
            <input autofocus type="text" id="addusername" name="username" class="form-control" maxlength="7">
          </div>
          <div class="form-group">
            <label>รหัสผ่าน</label>
            <input type="password" id="addpassword" name="password" class="form-control" maxlength="30">
          </div>
          <div class="form-group">
            <label>ชื่อ</label>
            <input type="text" id="addname" name="name" class="form-control" maxlength="20">
          </div>
          <div class="form-group">
            <label>นามสกุล</label>
            <input type="text" id="addsurname" name="surname" class="form-control" maxlength="20">
          </div>
        </div>
        <div class="modal-footer justify-content-end">
          <button type="submit" class="btn bg-green" name="createdata">บันทึก</button>
        </div>
      </form>

    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="deletemodal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">ลบผู้ดูแล</h4>
        <button type="button" class="close" data-dismiss="deletemodal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="../edit/users/delete" method="POST" id="usersdelete">
        @csrf
        {{ method_field('delete') }}
        <div class="modal-body">
          <div class="form-group">
            <label>รหัสผู้ดูแล</label>
            <input disabled type="text" id="delusername" name="username" class="form-control " maxlength="7" placeholder="*">
          </div>
          <div class="form-group">
            <label>ชื่อ</label>
            <input disabled type="text" id="delname" name="name" class="form-control " maxlength="20" placeholder="*">
          </div>
          <div class="form-group">
            <label>นามสกุล</label>
            <input disabled type="text" id="delsurname" name="surname" class="form-control" maxlength="20" placeholder="*">
          </div>
        </div>
        <div class="modal-footer justify-content-between">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">ย้อนกลับ</button>
        <button type="submit" class="btn btn-danger">ยืนยัน</button>

        </div>
      </form>

    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


@include('layouts.alert_dialog')