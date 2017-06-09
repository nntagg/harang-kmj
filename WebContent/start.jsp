<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- fullCalendar 2.2.5-->
    <link href="plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
    <link href="plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
     <!-- Morris chart -->
    <link href="plugins/morris/morris.css" rel="stylesheet" type="text/css" />
     <!-- jvectormap -->
    <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
     <!-- DATA TABLES -->
    <link href="plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <!-- 스킨 색상 변경 가능 : white, yellow, red, purple -->
   <body class="skin-black">
    <div class="wrapper">
      <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo"><img src="../dist/img/Logo.png" class="img-circle" alt="User Image" width="40" height="40"/>&nbsp;<b>하랑</b>대학교</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
            <!-- 포인트 확인 : 현제 보유 포인트와 상세 정보 확인 -->
            <!-- 포인트 확인 : 현제 보유 포인트와 상세 정보 확인 -->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-money"></i>&nbsp;&nbsp;
                    999999 포인트
                </a>
                <ul class="dropdown-menu">
                  <li class="header">오늘 3번의 거래 기록이 있습니다.</li>
                  <li>
                    <!-- 내부 메뉴 : 실제 메세지 데이터가 포함 -->
                    <ul class="menu">
                      <!-- 메세지 반복문 지점 시작 -->
                      <li><!-- 메세지 시작 -->
                        <a href="#">
                          <div class="pull-left">
                            <i class="fa fa-arrow-up text-green"></i>
                          </div>
                          <h4>
                                                         중고도서 거래 완료
                            <small><i class="fa fa-clock-o"></i> 2 hours</small>
                          </h4>
                           <p style="color: green">20000 포인트</p>
                        </a>
                      </li><!-- end message -->
                      <!-- 메세지 반복문 지점 끝-->
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <i class="fa fa-arrow-down text-red"></i>
                          </div>
                          <h4>
                            2017-06-20 식권 구매
                            <small><i class="fa fa-clock-o"></i> 3 hours</small>
                          </h4>
                           <p style="color: red">3000 포인트</p>
                        </a>
                      </li>
                      <li>
                         <a href="#">
                          <div class="pull-left">
                            <i class="fa fa-arrow-up text-green"></i>
                          </div>
                          <h4>
                                                        정보처리기사 포인트 승인
                            <small><i class="fa fa-clock-o"></i> 2 hours</small>
                          </h4>
                           <p style="color: green">50000 포인트</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">모든 거래 기록 보기</a></li>
                </ul>
              </li>
              <!-- 메세지 : 드롭 다운으로 메세지 출력 가능-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">4 개의 메세지가 도착했습니다.</li>
                  <li>
                    <!-- 내부 메뉴 : 실제 메세지 데이터가 포함 -->
                    <ul class="menu">
                      <!-- 메세지 반복문 지점 시작 -->
                      <li><!-- 메세지 시작 -->
                        <a href="#">
                          <div class="pull-left">
                            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                          </div>
                          <h4>
                                                            김성지
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>디자인 다했음?</p>
                        </a>
                      </li><!-- end message -->
                      <!-- 메세지 반복문 지점 끝-->
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="../dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                                                        양혜민
                            <small><i class="fa fa-clock-o"></i> 2 hours</small>
                          </h4>
                          <p>일 다 끝났는데 집에 가도 되요?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="../dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                                                            서지윤
                            <small><i class="fa fa-clock-o"></i> Today</small>
                          </h4>
                          <p>책 구매 할게요.</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                                                           박주선
                            <small><i class="fa fa-clock-o"></i> Yesterday</small>
                          </h4>
                          <p>형 나 집에 가도되?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                                                         김민준
                            <small><i class="fa fa-clock-o"></i> 2 days</small>
                          </h4>
                          <p>주말에 할게.</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">모든 메세지 보기</a></li>
                </ul>
              </li>
              <!--회원 개인정보 요약 형태 -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="../dist/img/TL.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">나현기 - 국문학과</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- 회원 사진 -->
                  <li class="user-header">
                    <img src="../dist/img/TL.jpg" class="img-circle" alt="User Image" />
                    <p>
                        나현기 - 국문학과
                      <small>Member since Nov. 2017</small>
                    </p>
                  </li>
                  <!-- 개인정보 창 -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">팔로워</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">판매</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">친구</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">내 정보 조회</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">로그아웃</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- GNB 부분 공통적으로 메뉴바 적용 가능-->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
         <!-- 사이드 바 메뉴 항목 -->
          <ul class="sidebar-menu">
            <!-- 상위 메뉴 시작 -->
            <li class="treeview">
              <a href="#">
                <i class="fa fa-eye"></i>
                <span>마이페이지</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <!-- 하위 메뉴 시작 -->
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> 개인정보조회</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 스팩 업!</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 수강 시간표!</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 포인트 거래 내역</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 학비 포인트 제로!</a></li>
                <li><a href="/HarangProject/message?cmd=MAIN"><i class="fa fa-circle-o"></i> 쪽지함</a></li>
              </ul>
              <!-- 하위 메뉴 끝 -->
            </li>
           <!-- 상위 메뉴 끝 -->
            <li class="threeview">
              <a href="#">
                <i class="fa fa-calendar"></i>
                <span>학사일정</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 1</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 2</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 3</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-share-square-o"></i>
                <span>학교시설물</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> 운동장 예약</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 스터디룸 예약</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 예약 내역</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-cutlery"></i>
                <span>하랑 레스토랑</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> 학식 메뉴 조회</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 식권 구매 내역</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-check-square-o"></i> <span>강의 평가</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 1</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 2</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 3</a></li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-briefcase"></i> <span>알바 하랑</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> 알바 모집</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 대타 모집</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 내가 쓴 글</a></li>
              </ul>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-group"></i><span>하랑 대나무 숲</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 1</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 2</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 3</a></li>
              </ul>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-book"></i> <span>하랑딘 24</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 1</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 2</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 하위메뉴 3</a></li>
              </ul>
            </li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>
<!-- 해더  삽입  [지우지마세여]------------------------------------------------------------------------------------------------->
<!-- 페이지 헤드 라인 : 제목 -->
<head>
     <title>기본 값 페이지</title>
</head>
	  <!-- 메인 페이지 구역 , 즉 작업 구역 -->
      <div class="content-wrapper">
<!----------------------------------- 메인페이지 헤더 [작업 제목] ------------------------------------------------------------->
        <section class="content-header">
          <h1>
             	기본값 페이지 [페이지 제목]
            <small>[페이지 소개]</small>
          </h1>
          <ol class="breadcrumb">
          <!-- 페이지 기록 : 메인에서 부터 현재 페이지 까지의 경로 나열 -->
            <li><a href="#"><i class="fa fa-dashboard"></i> 메인</a></li>
            <li class="active">기본값 페이지[현재 페이지]</li>
          </ol>
        </section>
<!------------------------------------ 메인페이지 바디 [작업 내용] ------------------------------------------------------------>
        <section class="content">
          <!-- 세로 길이 수정 -->
          <div class="row">
           <!-- 너비 사이즈 수정  : col-->
           <div class="col-md-12">
        
        
        
 <h3>작업 순서</h3>
  1. 자기의 파트와 관련된 이름으로 개인 폴더를 만드세요.<br>
  2. default/default.jsp 파일을 복사 하시고. 파일명을 바꾸세요.<br>
  3. 현재 이 글이 있는 장소가 실제 작업 장소 입니다.<br>
&nbsp;&nbsp;class="content"가 있는 섹션 안입니다.<br>
&nbsp;&nbsp;여기서 페이지 디자인 작업을 하시면 되겠습니다.<br>
※내용을 숙지 하셨다면 이 내용은 지우셔도 됩니다.<br>



              </div><!-- /.col -->
           </div><!-- /.row -->
        </section><!-- /. 작업 공간 끝! -->
<!------------------------------------------------------------------------------------------------------------------->        
      </div><!-- /. 전체를 감싸주는 틀입니다. 지우지 마세여. -->
      
<!-- 푸터(footer) 삽입 [지우지 마세여] ------------------------------------------------------------------------------------------------------> 
<footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.0
        </div>
        <strong>Web Copyright &copy; 2017 The Center Team.</strong> All rights reserved.<br>
        <Strong>팀장 : 나현기, 부팀장 : 양혜민, 팀원 : 김성지, 김민준, 서지윤, 박주선 </Strong><br>
        <strong>Template Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
      </footer>
   </div><!-- ./wrapper -->
   <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- jQuery UI 1.11.1 -->
    <script src="//code.jquery.com/ui/1.11.1/jquery-ui.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    <!-- DATA TABES SCRIPT -->
    <script src="plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
    <script src="plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
     <!-- fullCalendar 2.2.5 -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.7.0/moment.min.js" type="text/javascript"></script>
    <script src="plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes 
    <script src="../dist/js/demo.js" type="text/javascript"></script>
    -->
    <!-- page script -->
    <script type="text/javascript">
      $(function () {
        $("#example1").dataTable();
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
      });
    </script>
  </body>
</html>
