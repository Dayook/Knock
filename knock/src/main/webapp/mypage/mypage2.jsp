<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="today" class="java.util.Date" scope="request"/>
<fmt:formatDate var="now" value="${today }" pattern ="yyyyMMdd" />
<%@page import="java.util.List"%>
<%@page import="com.knock.model.vo.CampaignIngVO"%>
<%@ page import="com.knock.model.dao.CampaignIngDAO" %>

<c:set var="contextPath" value ="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>knockKnock</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="${contextPath }/resources/js/scripts.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${contextPath }/resources/css/styles.css" rel="stylesheet" />
  
   
   <!-- Style -->
   <style>
      .pointZone { 
         width:100%; 
         height:400px; 
         position:relative;
         margin : 0 auto;
      }
      .pointRecord{
         width : 100%;
         text-align: center;
         font-size : 15px;
         background-color : rgb(83, 83, 83);
         color:white;
      }
      .ppp{
         width:90%;
         margin : 0 auto;
         height:300px;
         position:relative;
         text-align:center;
         
      }
      #pointBar {
         width:12%;
         height:200px;
      display: inline-block;
      vertical-align:middle;
      margin-top:70px;
      margin-left:20px;
      margin-right:20px;
      position:relative;
      color:white;
      font-size:12px;

      }
      #usedPointBar{
         position:absolute;
         bottom:0;
         width:100%;
         background-color:rgb(248, 133, 133);
         margin:0;
      }
      #remainsPointBar{
         position:absolute;
         bottom:0;
         width:100%;
         background-color:rgb(248, 192, 120);
         margin:0;
      }
      #allPointBar{
         position:absolute;
         bottom:0;
         width:100%;
         background-color :rgb(203, 248, 120);
         margin:0;
      }
      .pText{
         width:90%;
         margin : 0 auto;
         text-align:center;
      
      }
      .pText p {
         width:20%;
         display:inline-block;
         vertical-align:middle;
         margin-left:10px;
      margin-right:10px;
      font-size:11px;
      font-weight:bold;
      }
         .emblemZone, .pointZone { float: left;}
   .myStatus{
         width:80%;
         height:400px;
   }
   #countEmb {
         width:100%;
         height:300px;
   }
   #embImgZone{
         width:95%;
         height:250px;
         margin:0 auto;
         
   
   } 
   #embImg{
         width:50px;
         height:50px;
         border-radius : 50%;
         border : solid 2px black;
         display:inline-block;
         margin-left:10px;
      margin-right:10px;
      overflow: hidden;
      align-items: center;
      justify-content: center;

   } 
   #embImg img{
         width: 100%;
      height:auto;
      opacity: 1;
   
   }
   
   #rank {
         width:100%;
         height:100px;
   }
   </style>
   
   <!--  -->
   </head>
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark" id="mainNav">
            <%@ include file="../common/topmenubar2.jsp" %>
        </nav> 
        <!-- nav -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
       <link href="${contextPath }/resources/css/style.css" rel="stylesheet" type="text/css">
  
  <body>
      
      <div class="wrapper d-flex align-items-stretch">
         <nav id="sidebar" class="active">
            <p><p><p><p><p><p><p><p>
        <ul class="list-unstyled components mb-5">
          <li class="active">
            <a href="${contextPath }/main.jsp"><br><br> Home</a>
          </li>
          <li>
              <a href="${contextPath }/mypage/mypage2.jsp"><br><span class="fa fa-user">&nbsp; MY PAGE </span><br></a>
          </li>
          <li>
            <a href="${contextPath }/mypage/updateMypage.jsp"><br><span class="fa fa-cogs">&nbsp; 내 정보 수정</span><br></a>
          </li>
          <li>
            <a href="${contextPath }/mypage/nowPoint2.jsp"><br><span class="fa fa-sticky-note">&nbsp; 포인트 현황</span><br> </a>
          </li>
          <li>
            <a href="${contextPath }/mypage/campaign_ing.jsp"><br><span class="fa fa-paper-plane">&nbsp; 진행 중인 캠페인</span> <br></a>
          </li>
          <li>
            <a href="${contextPath }/userctr?type=endCam.do&user_idx=${user.user_idx }"><br><span class="fa fa-paper-plane">&nbsp; 종료된 캠페인</span> <br></a>
          </li>
        </ul>

        <div class="footer">
           <p>
                 Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
               </p>
        </div>
       </nav>

        <!-- Page Content  -->
         <div id="content" class="p-4 p-md-5">
      
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="${user.user_img }" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4>${user.name }</h4>
                      <button class="btn btn-primary">Follow</button>
                      <button class="btn btn-outline-primary">Message</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
                    <span class="text-secondary">https://bootdey.com</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
                    <span class="text-secondary">@bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
                    <span class="text-secondary">bootdey</span>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${user.name }
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     ${user.email}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${user.phone }
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">NickName</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${user.nickname }
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     ${user.address}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                      <a class="btn btn-info " target="__blank" href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Edit</a>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="pointZone">
            <p class="pointRecord">[ MY POINT ]</p>
                <div class="ppp">
                   <div id="pointBar">
                      <p id="usedPointBar" style="height:${user.used_point/user.total_point*100}%;">${user.used_point }</p>
                   </div>
                   <div id="pointBar">
                      <p id="remainsPointBar" style="height:${100-(user.used_point/user.total_point*100)}%;">${user.total_point - user.used_point }</p>
                   
                   </div>
                   <div id="pointBar">
                      <p id="allPointBar"style="height:100%;">${user.total_point }</p>
                      
                   </div>

                </div>
                <div class="pText">
                   <p>사용포인트</p>
                   <p>보유포인트</p>
                   <p>총 포인트</p>
                </div>
                
            </div>
                  </div>
                </div>
                <div class="emblemZone" style="float:left; width:300px;">
               <p class="myEmblems" style="text-align:center; background-color:gray; color:white;">[ MY EMBLEM / STATUS]</p>
                
                <div class="myStatus">
                    <div id="countEmb">
                        <p>▶ EMBLEM : ${emblemCount }개</p>
                        <div id="embImgZone">
                           <c:forEach var="eImg" items="${clist }">
                              <div id="embImg">
                                 <img src="${eImg.emblem }">
                              </div>
                           </c:forEach>
                        </div>
                    </div>
                    <div id="rank">
                        <p>▶ RANK : ${rank }위</p>
                    </div>
                </div>
            </div>
              </div>
                
            </div>

        </div>
    </div></div>
   <%@ include file="/common/footer2.jsp" %>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>