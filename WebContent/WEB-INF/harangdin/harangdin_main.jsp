<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ include file="../include/header.jsp" %>
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
             	중고도서 거래 게시판
          </h1>
          <ol class="breadcrumb">
          <!-- 페이지 기록 메인에서 부터 현재 페이지 까지의 경로 나열 -->
            <li><a href="#"><i class="fa fa-dashboard"></i> 메인</a></li>
            <li class="active">하랑딘 24</li>
          </ol>
        </section>
<!------------------------------------ 메인페이지 바디 [작업 내용] ------------------------------------------------------------>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header"></div>
					<!-- box-header -->
					<div class="box-body">
							<div class="row">
								<div class="col-sm-12">
								<div class="col-xs-6 input-group no-margin">
							<div class="input-group-btn">
								<button type="button" class="btn btn-info.btn-flat">
									<i class="fa fa-search"></i>
								</button>
							</div>
							<!-- /btn-group -->
							<input type="text" class="form-control">
						</div>
						<div class="col-xs-1 no-margin pull-right">
						<button type="button" class="btn btn-block btn-default" >등록</button>
						</div>
									<table id="example2" class="table table-bordered table-hover dataTable">
											<tr role="row">
												<th style="width: 50px">거래번호</th>
												<th style="width: 40%">도서명</th>
												<th>저자</th>
												<th>출판사</th>
												<th>희망 포인트</th>
											</tr>

											<c:forEach items="${harangdinmain}" var="i" varStatus="k">
											
											<tr>
												<td>${i.b_num }</td>
												<td>${i.b_name }</td>
												<td>${i.b_writer }</td>
												<td>${i.b_pub }</td>
												<td>${i.b_want }</td>
											</tr>
											
											</c:forEach>
									</table>
								</div>
							</div> <!-- row -->
							<div class="row">
								<div class="col-sm-5"></div>
								<div class="col-sm-7">
									<div class="dataTables_paginate paging_simple_numbers">
										<ul class="pagination">
											<li><a href="#">Previous</a></li>
											<li><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a>
											<li><a href="#">Next</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div><!-- body -->
					</div>
				</div>
			</div><!-- row -->
	</section>

	<!-- /. 작업 공간 끝! -->
	<!------------------------------------------------------------------------------------------------------------------->
	</div><!-- /. 전체를 감싸주는 틀입니다. 지우지 마세여. -->
      
<!-- 푸터(footer) 삽입 [지우지 마세여] ------------------------------------------------------------------------------------------------------> 
<%@ include file="../include/footer.jsp" %>