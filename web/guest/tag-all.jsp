<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web Truyen Tranh</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/account.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/res.css">
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
            integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
            crossorigin="anonymous"
        />
    <script src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/js/axios.min.js"></script>
    <style>
        /*for all*/
.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
/*--*/

.fix-dropdown{
  background-color: #2c7abe !important;
}
.bg-blue{
    background-color: #2C7ABE;
}
.navbar-brand img{
  width: 10rem;
}
.navbar-blue .navbar-brand {
    color: #fff;
  }
  
  .navbar-blue .navbar-brand:hover, .navbar-blue .navbar-brand:focus {
    color: #fff;
  }
  
  .navbar-blue .navbar-nav .nav-link {
    color: rgba(255, 255, 255, 0.5);
  }
  
  .navbar-blue .navbar-nav .nav-link:hover, .navbar-blue .navbar-nav .nav-link:focus {
    color: rgba(255, 255, 255, 0.75);
  }
  
  .navbar-blue .navbar-nav .nav-link.disabled {
    color: rgba(255, 255, 255, 0.25);
  }
  
  .navbar-blue .navbar-nav .show > .nav-link,
  .navbar-blue .navbar-nav .active > .nav-link,
  .navbar-blue .navbar-nav .nav-link.show,
  .navbar-blue .navbar-nav .nav-link.active {
    color: #fff;
  }
  
  .navbar-blue .navbar-toggler {
    color: rgba(255, 255, 255, 0.5);
    border-color: rgba(255, 255, 255, 0.1);
  }
  
  .navbar-blue .navbar-toggler-icon {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='30' height='30' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 255, 255, 0.5%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
  }
  
  .navbar-blue .navbar-text {
    color: rgba(255, 255, 255, 0.5);
  }
  
  .navbar-blue .navbar-text a {
    color: #fff;
  }
  
  .navbar-blue .navbar-text a:hover, .navbar-blue .navbar-text a:focus {
    color: #fff;
  }
/* Code cu*/
.dropbtn {
  background-color: #2C7ABE;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
  font-weight: bold;
}

.dropdown {
  position: relative;
  display: inline-block;
  background-color: #e4e4e4;
}

.first {
  font-weight: normal;
  display: none;
  position: absolute;
  background-color: #e4e4e4;
  min-width: 450px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  
}
.first a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  height: auto;
  width: 150px;
  float: left;

}

.first a:hover {
  background-color:#4da6f3;
  color: white ;
  font-style: italic;
  font-weight: bold;
}

.dropdown:hover .first {
  display: block;
}

.dropdown:hover .dropbtn {
    background-color: #C4C4C4;
    color: #2C7ABE ;
}

.sc-dr {
  right: -1rem ;
  font-weight: normal;
  display: none;
  position:absolute;
  background-color: #e4e4e4;
  min-width: 200px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  
}
.sc-dr a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  height: auto;
  width: 200px;
  float: left;

}

.sc-dr a:hover {
  background-color:#4da6f3;
  color: white ;
  font-style: italic;
  font-weight: bold;
}

.dropdown:hover .sc-dr {
  display: block;
}
/*end*/
.icon-account{
    background-image: url(/img/user-circle-solid.svg);
    background-repeat: no-repeat;
    width: 2rem;
    background-position: center center;
}

.nav-item{
    margin: 0%;
    font-weight: bold;
}
.nav-link:hover{
    background-color:#C4C4C4;
    color: #2C7ABE;
}
.nav-link {
  /*margin-bottom: -1px;*/
  color: white;
  margin: 0%;
}

a.nav-link{
  padding: 1rem;
}
.form-inline{
  padding: 0.5rem ;
}

.nav-link:hover, .my-nav-tabs .nav-link:focus {
  background-color:#C4C4C4;
  color: #2C7ABE;
}

.nav-link.active,
.nav-item.show .nav-link {
  color: white;
  background-color:#2C7ABE;
}
.navbar{
    padding-top: 0%;
    padding-bottom: 0%;
}

.img-icon{
  width: 1.8rem;
  margin-left: 1rem;
}
.my-btn-outline-success {
  background-color: white;
  color: #2C7ABE;
  border-color: #C4C4C4;
}
.search-tool input{
  width: 360px !important;
}
.my-btn-outline-success:hover {
  color: #fff;
  background-color: #c4c4c4;
  border-color: #C4C4C4;
}
.sticky-top{
  position: fixed;
  top: 0;
  width: 100%;
}
/*Search input*/
.suggest-comic {
  width: 360px;
  position: absolute;
  top: 46px;
  left: 50.1%;
  z-index: 1;
  max-height: 300px;
  overflow-y: auto;
  overflow-x: hidden;
  border: 1px solid #ebebeb;
  background-color: #fff;
  -moz-transition: all 0.3s ease-out;
  -ms-transition: all 0.3s ease-out;
  -o-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}
.suggest-comic ul{
  list-style: none;
  margin: 0rem;
  padding: 0rem;
}
.suggest-comic li{
  padding: 0.8rem;
}
.suggest-comic li:hover{
  background-color: #c0c0c0;
}
.suggest-comic a{
  color: #000;
  font-size: 0.9rem;
}
.suggest-comic a:hover{
  text-decoration: none;
}

        body {
  font-family: Tahoma, sans-serif, Helvetica !important;
  background-color: #eeeeee !important;
}
.fix {
  padding-left: 0.5rem;
  padding-right: 0.5rem;
  margin-left: 0rem;
  margin-right: 0rem;
}
.col-8 {
  padding: 0rem;
}
.col {
  padding: 1rem 0.2rem;
}
.slide-card {
  text-align: center;
  height: 210px;
  width: 170px;
  transition: all 0.5s;
}
.slide-card:hover {
  border: 3px solid #2c7abe;
  box-shadow: 3px 3px 2px 2px #c4c4c4;
}
.slide-card img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

.card-content {
  color: white;
  padding: 8px;
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.8);
  color: #fff;
  text-align: center;
}
.content {
  color: white;
  white-space: nowrap;
  width: 152px;
  overflow: hidden;
  text-overflow: ellipsis;
  padding: 0%;
  margin: 0px;
}
/*.content:hover {
  overflow: visible;
}*/
.chapter {
  color: white;
  font-style: italic;
  font-size: 0.8rem;
  margin-bottom: 0rem;
}
.chapter-update {
  padding: 0rem;
}
.chapter-update a {
  color: black;
  font-size: 0.8rem;
  padding: 0rem;
}
.time-update {
  position: bottom bottom;
  color: #c0c0c0;
  font-size: 0.8rem;
  padding: 0.2rem 0rem 0rem 0rem;
  font-style: italic;
}
.chapter-hot {
  color: black;
  font-style: italic;
  font-size: 0.8rem;
  padding-right: 1.5rem;
}
.chapter-hot:hover {
  color: black;
}

.title {
  font-size: 1rem;
  color: #2c7abe;
  font-weight: bold;
  padding-top: 1rem;
  padding-left: 0.5rem;
  padding-bottom: 0.5rem;
  border-bottom: #2c7abe solid 2px;
}
.hot-title {
  text-align: center;
  font-size: 1rem;
  color: #2c7abe;
  background-color: #ffffff;
  font-weight: bold;
  padding: 0.7rem 1rem 0.7rem 0.5rem;
  margin: 0rem;
  border-bottom: #c0c0c0 solid 2px;
  transition: all 0.5s;
}
.page-al {
  padding-left: 35%;
}
.rank {
  margin-right: 0.5rem;
}
.box {
  padding: 0rem;
  border: #c0c0c0 2px solid;
  border-radius: 5px;
  margin: 1rem 0rem 1rem 1rem;
}
.tag-row {
  background-color: #ffffff;
  border-bottom: #c0c0c0 solid 1px;
}
.tag-col {
  padding: 0.8rem 1rem;
  transition: all 0.5s;
}
.tag-col:hover {
  background-color: #c0c0c0;
}
.tag-col img {
  width: 1rem;
  margin-right: 0.3rem;
  margin-bottom: 0.1rem;
}
.tag-col a {
  color: #000000;
  font-size: 0.9rem;
}
.last-tag {
  border: none !important;
}
.fix-col-4 {
  padding: 0rem !important;
}
.hot-card {
  text-align: center;
  height: 70px;
  transition: all 0.5s;
}
.hot-card:hover {
  background-color: #c0c0c0;
}
.hot-card img {
  width: 40%;
  height: 100%;
  object-fit: contain;
}
.hot-card span {
  text-align: left;
}
.hot-content {
  margin: 0.5rem 0.5rem 0.5rem 0.5rem;
  text-align: left;
}
.title-comic-hot {
  margin-bottom: 0.3rem !important;
  color: black;
  font-size: 1rem;
  font-weight: bold;
  white-space: nowrap;
  width: 180px;
  overflow: hidden;
  text-overflow: ellipsis;
}
.rank {
  font-weight: bold;
  font-size: 1rem;
  padding: 0.5rem;
}
.mb-3 {
  margin-bottom: 0px !important;
}
.hot-card {
  border-top: none;
  border-left: none;
  border-right: none;
  border-radius: 0%;
}

.title-update {
  color: black;
  margin: 0.5rem 0rem 0rem 0rem;
  font-weight: bold;
  width: 10.5rem;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
.title-update:hover {
  /*overflow: visible;*/
  color: #2c7abe;
}
.fix-a-update:hover {
  text-decoration: none;
  transition: all 0.5s;
}
.move-top {
  background-color: transparent;
  border: transparent;
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  cursor: pointer;
  padding: 0.2rem 0.4rem;
  visibility: hidden;
  opacity: 0;
  transition: all 0.5s ease-in-out;
}
.move-top.show {
  visibility: visible;
  opacity: 1;
}
.move-top img {
  width: 3rem;
}
.row-border {
  margin-top: 5rem;
  border: 2px solid #c0c0c0;
  padding-left: 1rem;
  padding-right: 1rem;
  border-radius: 5px;
  background-color: #fff;
}
.second {
  margin-top: 1rem !important;
  margin-bottom: 1rem;
  padding-left: 0rem;
  padding-right: 0rem;
}
/*Detail*/
.breadcrumb-item a {
  color: #2c7abe;
  font-weight: bold;
}
.detail-comic {
  text-align: center;
}
.detail-comic img {
  width: 100%;
}
.sub-comic {
  text-align: left;
  padding-left: 1rem;
  padding-bottom: 1rem;
}
.container-btn {
  text-align: left;
  padding: 0.5rem 0rem;
}
.detail-content {
  font-weight: bold;
  font-style: italic;
  font-size: 0.9em;
  margin: 0.5rem 0rem 0.5rem;
}
.detail-content span {
  color: #777676;
  font-weight: normal;
}
.detail-content img {
  width: 0.8rem;
  margin-bottom: 0.2rem;
  margin-right: 0.5rem;
}
.detail-comic-second {
  text-align: center;
}
.title-comic {
  font-weight: bold;
  font-size: 1.6rem;
  text-align: center;
}
.btn-list-chapter {
  padding: 0.5rem 1rem;
  margin: 0.5rem;
  font-size: 0.9rem;
  background-color: #c98e0f;
  border: none;
  border-radius: 5px;
  color: white;
  text-align: center;
  transition: all 0.5s;
}
.btn-list-chapter:hover {
  color: white;
  background-color: #d5b300;
}
.btn-list-chapter img {
  width: 1rem;
  margin-right: 0.5rem;
}
.btn-follow-chapter {
  padding: 0.5rem 1rem;
  margin: 0.5rem;
  font-size: 0.9rem;
  background-color: #42b72a;
  border-radius: 5px;
  color: white;
  text-align: center;
  transition: all 0.5s;
}
.btn-follow-chapter:hover {
  color: white;
  background-color: #43df43;
}
.btn-follow-chapter img {
  width: 1rem;
  margin-bottom: 0.2rem;
  margin-right: 0.5rem;
}

.btn-like-chapter {
  padding: 0.5rem;
  margin: 0.5rem;
  font-size: 0.9rem;
  background-color: #2c7abe;
  border-radius: 5px;
  color: white;
  text-align: center;
  transition: all 0.5s;
}
.btn-like-chapter:hover {
  color: white;
  background-color: #124a7a;
  text-decoration: none;
}
.btn-like-chapter img {
  width: 1rem;
  margin-bottom: 0.2rem;
  margin-right: 0.5rem;
}
.more-comic-info {
  text-align: left;
}
.list-chapter {
  margin: 0rem;
  padding: 0.5rem;
  font-size: 1rem;
  font-weight: bold;
  color: #2c7abe;
  border-bottom: #2c7abe solid 2px;
  transition: all 0.5s;
}
/*.list-chapter:hover {
  background-color: #c0c0c0;
}*/
.list-chapter img {
  width: 1rem;
  margin: 0.5rem;
  padding-bottom: 0.2rem;
}
.all-chapter-btn {
  text-align: center;
  font-style: italic;
  padding: 1rem;
}
.all-chapter-btn:hover {
  color: #2c7abe;
  text-decoration: underline;
}
.col-chapter {
  padding: 0rem;
}
.lst {
  font-size: 0.9rem;
  font-weight: bold;
  margin: 0rem 1rem;
}
.lst div {
  padding: 0.5rem;
}
.lst-sc {
  font-weight: normal;
  color: #999999;
  font-style: italic;
  border-top: #777676 1px dashed;
}
.lst-sc:hover {
  background-color: #c0c0c0;
}
.lst-sc a {
  color: black;
  font-style: normal;
}
.lst-sc a:hover {
  font-style: italic;
  color: #2c7abe;
}
.col-cmt {
  padding: 0rem;
}

/*Comment*/
.cmt-form {
  margin: 1rem;
}
.cmt-form p {
  font-weight: bold;
  font-style: italic;
}
.cmt-form span {
  color: #e91b0c;
}
textarea {
  width: 100%;
  height: 100px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 1px solid black;
  border-radius: 2px;
  background-color: #f8f8f8;
  resize: none;
}
.btn-send {
  font-size: 0.9rem;
  width: 5rem;
  padding: 0.3rem;
  border: #2c7abe 1px solid;
  border-radius: 5px;
  background-color: #2c7abe;
  color: white;
  text-align: center;
  transition: all 0.5s;
}
.btn-send:hover {
  border: 3px solid #2c7abe;
  box-shadow: 3px 3px 2px 2px #c4c4c4;
}
.btn-send img {
  width: 1rem;
  margin-right: 0.5rem;
}
/*Comment*/
.comment-list {
  margin: 0 1.5rem;
  padding: 0%;
}
.avt-comment {
  padding: 0%;
  margin: 0%;
}
.avt-comment img {
  width: 3rem;
  width: 100%;
  border-radius: 50%;
}
.like-comment {
  font-size: 0.9rem;
}
.like-comment img {
  width: 1rem;
  margin-bottom: 0.3rem;
}
.reply-comment {
  font-size: 0.9rem;
  font-weight: bold;
  color: #2c7abe;
  margin-right: 0.5rem;
}
.user-info-comment a {
  color: #2c7abe;
  font-weight: bold;
}
.user-info-comment a:hover {
  text-decoration: none;
  font-style: italic;
}
.member {
  /*border: #2c7abe 2px solid;
  border-radius: 5px;*/
  margin-left: 0.5rem;
  padding: 0.2rem 0.5rem;
  font-size: 0.8rem;
  color: white;
  font-weight: bold;
  background-color: #d5b300;
}
.admin {
  margin-left: 0.5rem;
  padding: 0.2rem 0.5rem;
  font-size: 0.8rem;
  color: white;
  font-weight: bold;
  background-color: #4cae4c;
}
.time-cmt {
  color: #999;
  font-style: italic;
  font-size: 0.9em;
}
.time-cmt img {
  width: 1rem;
  margin-bottom: 0.2rem;
  margin-left: 0.5rem;
  margin-right: 0.3rem;
}
.cmt {
  padding: 0.5rem;
  border: #999 2px solid;
}
.msg-comment {
  font-size: 0.9rem;
  margin-bottom: 0%;
  /*
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
  display: -webkit-box;
  Tu Tu Fix Sau*/
}
.fix-comment {
  margin-top: 0.5rem;
  margin-bottom: 0.5rem;
}
/*Tag*/
.none-mp {
  margin: 0rem !important;
  padding: 0rem !important;
}
.sub-tag {
  text-align: center;
}
.title-sub-tag {
  font-size: 1.5rem;
  margin-bottom: 0.5rem;
}
.title-sub-tag a {
  font-weight: bold;
  color: #2c7abe;
}
.content-sub-tag {
  border: #2c7abe 2px dashed;
  border-radius: 5px;
  margin: 0rem 5rem;
  padding: 0.5rem;
  font-size: 0.9rem;
}

.bg-hot-tag {
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

  filter: blur(8px);
  position: absolute;
  width: 100%;
  height: 100%;
}
/*********************************
**********************************
**********************************/

/*********************************
**********************************
**********************************/
.img-hot-tag img {
  margin: 1rem;
  width: 10rem;
}
.content-hot-tag {
  text-shadow: 1px 1px 3px #000;
}
.title-hot-tag {
  margin-top: 1rem;
  font-size: 1.5rem;
  font-weight: bold;
}
.title-hot-tag a {
  color: #fff;
}
.hot-tag {
  margin: 0.5rem;
  position: relative;
  overflow: hidden;
  color: #fff;
  z-index: 1;
}
.detail-content-hot-tag {
  font-weight: bold;
  font-style: italic;
  font-size: 0.9em;
  margin: 0.5rem 0rem 0.5rem;
}
.detail-content-hot-tag span {
  font-weight: normal;
}
.detail-content-hot-tag img {
  width: 0.8rem;
  margin-right: 0.5rem;
  margin-bottom: 0.2rem;
}
.btn-read {
  padding: 0.8rem 2rem;
  border-radius: 5px;
  background-color: #2c7abe;
  color: #fff;
  font-size: 0.9rem;
  font-weight: bold;
  transition: all 0.5s;
}
.btn-read:hover {
  color: #fff;
  font-size: 1rem;
  text-decoration: none;
  box-shadow: 2px 2px 1px 1px #777676;
}
.last {
  margin-bottom: 1.5rem;
}
/*History*/
.title-history {
  font-size: 1.5rem;
  margin-bottom: 0.5rem;
  color: #2c7abe;
  font-weight: bold;
}
.content-sub-his {
  border: #2c7abe 2px dashed;
  border-radius: 5px;
  margin: 0rem 5rem;
  padding: 0.5rem;
  font-size: 0.9rem;
}
.chapter-history {
  padding: 0rem;
}
.chapter-history a {
  color: #c0c0c0;
  font-size: 0.9rem;
  padding: 0rem;
}
.chapter-history a:hover {
  font-style: italic;
}

.mg_1 {
  margin-bottom: 0.5rem;
}
.chapter-history img {
  width: 0.8rem;
  margin-right: 0.5rem;
  margin-bottom: 0.2rem;
}

/*Reading*/
.none-padding-top {
  padding-top: 0rem !important;
}
.body-reading {
  background-color: #333 !important;
}
.sub-reading {
  text-align: left;
}
.padding-sub {
  padding-left: 2rem;
}
.content-chapter-al {
  text-align: center;
}
.chapter-content-section img {
  width: 70%;
}
.btn-list-reading {
  padding: 0.5rem 1rem;
  font-size: 0.9rem;
  background-color: #2c7abe;
  border-radius: 5px;
  color: white;
  text-align: center;
}
.btn-list-reading:hover {
  color: white;
}
.btn-list-reading img {
  width: 1rem;
}
.chapter-controller {
  text-align: center;
  margin-top: 0.2rem;
}
.direct-chapter {
  text-align: center;
  margin-top: 1rem;
  margin-bottom: 1rem;
}
/*Select*/
select {
  background: white;
  background-image: none;
  border: 2px solid;
  padding: 0.5rem 1rem;
}
select {
  flex: 1;
  padding: 0 0.5em;
  color: black;
  cursor: pointer;
}

.select {
  position: relative;
  width: 15em;
  padding: 0.3rem;
  background: #fff;
  overflow: hidden;
  border-radius: 0.25em;
  display: inline-block;
}

/* Transition */
.select:hover::after {
  color: Gainsboro;
}

.sticky {
  padding-top: 60px !important;
  padding-bottom: 0.5rem !important;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: #c0c0c0;
  box-shadow: 0 0.125rem 0.25rem rgb(0 0 0 / 8%) !important;
}

/*Login*/
.login {
  background-color: #f0f2f5;
}
.login-mg-pd {
  margin: 14rem 5rem 14rem;
}
.login-box {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 2px 4px rgb(0 0 0 / 10%), 0 8px 16px rgb(0 0 0 / 10%);
}
.brand-login {
  font-size: 1.5rem;
}
.brand-login img {
  width: 90%;
  margin: 2rem 2rem 2rem 0rem;
}
.login-form {
  text-align: center;
  width: 100%;
  height: auto;
  margin: auto;
}
.align-input {
  margin-top: 1rem;
  width: 100%;
}
.input_group input {
  height: 40px;
  font-size: 17px;
}

input[type="submit"] {
  font-size: 20px;
  font-weight: bold;
  padding: 0.8rem 10rem;
  background-color: #2c7abe;
  border-radius: 5px;
  color: white !important;
  transition: all 0.5s;
  border: none;
}
.login-btn:hover {
  background-color: #4da6f3 !important;
}

.signin-btn {
  text-align: center;
  margin-bottom: 1rem;
  transition: all 0.5s;
}
.signin-btn a:hover {
  background-color: #4cae4c !important;
  text-decoration: none;
}
.signin-btn a {
  font-size: 20px;
  font-weight: bold;
  padding: 0.8rem 3rem;
  border-radius: 5px;
  background-color: #42b72a !important;
  color: white;
}
.fg-pswd {
  text-align: center;
  padding: 0rem !important;
}
.fg-pswd a {
  color: #2c7abe;
}
/*Signup*/
.brand-signup {
  font-size: 1.5rem;
}
.brand-signup img {
  width: 90%;
  margin: 6rem 2rem 2rem 0rem;
}
.brand-forgot img {
  width: 20rem;
  margin: 4rem 2rem 2rem 0rem;
}
.surname-input {
  padding: 1rem 1rem 1rem 0rem !important;
}
.lastname-input {
  padding: 1rem 0rem 0rem !important;
}
.sub-signup {
  text-align: center;
  margin-top: 1rem !important;
  margin-bottom: 0rem !important;
  padding: 0rem !important;
}
.sub-signup h2 {
  font-weight: bold;
}
.sub-signup p {
  font-size: 0.9rem;
}
.signup-mg-pd {
  margin: 10rem 5rem 12rem;
}
.forgot-mg-pd {
  margin: 14rem 5rem 16rem;
}
input#submit.btn.btn-primary.signup-btn {
  background-color: #42b72a !important;
}
input#submit.btn.btn-primary.signup-btn:hover {
  background-color: #4cae4c !important;
}
/*User*/
.header-user {
  margin: 1rem;
  padding: 4rem 5rem 0rem;
}
.user-avt {
  text-align: right;
  padding: 0%;
}
.user-avt img {
  margin-right: 1.5rem;
  margin-bottom: 0.5rem;
  width: 5rem;
  border-radius: 50%;
}
.user-name {
  text-align: left;
}
.user-name h2 {
  margin-top: 0.6rem;
  margin-bottom: 0rem;
  color: #000;
  font-weight: bold;
}
.user-name a {
  font-weight: lighter !important;
  font-size: 1rem;
  color: #2c7abe;
}
.user-name p {
  color: #777676;
}
.user-box {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 2px 4px rgb(0 0 0 / 10%), 0 8px 16px rgb(0 0 0 / 10%);
  margin: 1rem 14rem 8rem !important;
  padding: 1rem !important;
}
.edit-user {
  text-align: right;
}
.edit-user a {
  color: #2c7abe;
}
.edit-user img {
  width: 1rem;
  margin-right: 0.3rem;
  margin-bottom: 0.2rem;
}
.edit-avt {
  font-size: 1rem;
}
.edit-avt img {
  width: 1rem;
  margin-right: 0.2rem;
  margin-bottom: 0.2rem;
}
.edit-avt a {
  color: #2c7abe;
}
/*Slider*/
.review-box {
  display: flex;
  transition: transform 0.3s linear;
}
.review-slider {
  margin-top: var(--spacing-3);
  overflow: hidden;
  position: relative;
}
.nav-slider {
  margin-left: auto;
  display: flex;
  align-items: center;
}
.nav-slider i {
  width: 2.5rem;
  height: 2.5rem;
  display: flex;
  font-size: 1.3rem;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
  border: 1px solid var(--color-dark);
  color: var(--color-red);
  cursor: pointer;
  transition: transform 0.2s linear;
}
.nav-slider i:hover {
  transform: translateX(-2px);
}
.btnLeft {
  margin-right: var(--spacing-1);
}
.review-box-slider {
  display: flex;
  overflow: hidden;
  transition: transform 0.5s cubic-bezier(0.445, 0.05, 0.55, 0.95);
}
.box-slider {
  transition: all 0.3s cubic-bezier(0.445, 0.05, 0.55, 0.95);
  border-radius: 5px;
  text-align: center;
  flex-grow: 1;
  flex-shrink: 0;
  padding: var(--spacing-3) var(--spacing-2) var(--spacing-3);
  display: flex;
  flex-direction: column;
  background-color: var(--color-white);
}

.slider-border {
  margin-top: 5rem;
  border: 2px solid #c0c0c0;
  padding-left: 0.5rem;
  padding-right: 0.5rem;
  padding-bottom: 2rem;
  border-radius: 5px;
  background-color: #fff;
}
.btnLeft {
  position: absolute;
  top: 50%;
  margin-top: -20px;
  margin-left: 15px;
  width: 55px;
  height: 55px;
  text-align: center;
  color: #fff;
  text-decoration: none;
  background-color: #33333360;
  transition: all 0.5s;
}
.btnLeft:hover {
  background-color: #ffffff60;
}
.btnRight {
  position: absolute;
  top: 50%;
  left: 95%;
  margin-top: -20px;
  width: 55px;
  height: 55px;
  text-align: center;
  color: #fff;
  text-decoration: none;
  background-color: #33333350;
  transition: all 0.5s;
}
.btnRight:hover {
  background-color: #ffffff60;
}
.title-history span{
  color: black;
}
/*Hieu*/
#myBtn {
  margin: 0 0 0 0;
  padding: 0 0 0 0;
  border: 0 0 0 0;
  background-color: #42b72a;
  border: none;
  color: white;
}
#myBtn:hover {
  background-color: #43df43;
}
#BtnLike {
  background-color: rgb(44, 122, 190);
  border: none;
  color: white;
}
#BtnLike:hover {
  background: #124a7a;
}

.slide-card {
  text-align: center;
  height: 210px;
  width: 170px;
  transition: all 0.5s;
}
.slide-card:hover {
  border: 3px solid #2c7abe;
  box-shadow: 3px 3px 2px 2px #c4c4c4;
}
.slide-card img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

.card-content {
  color: white;
  padding: 8px;
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.8);
  color: #fff;
  text-align: center;
}        
        
.review-box {
  display: flex;
  transition: transform 0.3s linear;
}
.review-slider {
  margin-top: var(--spacing-3);
  overflow: hidden;
  position: relative;
}
.nav-slider {
  margin-left: auto;
  display: flex;
  align-items: center;
}
.nav-slider i {
  width: 2.5rem;
  height: 2.5rem;
  display: flex;
  font-size: 1.3rem;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
  border: 1px solid var(--color-dark);
  color: var(--color-red);
  cursor: pointer;
  transition: transform 0.2s linear;
}
.nav-slider i:hover {
  transform: translateX(-2px);
}
.btnLeft {
  margin-right: var(--spacing-1);
}
.review-box-slider {
  display: flex;
  overflow: hidden;
  transition: transform 0.5s cubic-bezier(0.445, 0.05, 0.55, 0.95);
}
.box-slider {
  transition: all 0.3s cubic-bezier(0.445, 0.05, 0.55, 0.95);
  border-radius: 5px;
  text-align: center;
  flex-grow: 1;
  flex-shrink: 0;
  padding: var(--spacing-3) var(--spacing-2) var(--spacing-3);
  display: flex;
  flex-direction: column;
  background-color: var(--color-white);
}

.slider-border {
  margin-top: 5rem;
  border: 2px solid #c0c0c0;
  padding-left: 0.5rem;
  padding-right: 0.5rem;
  padding-bottom: 2rem;
  border-radius: 5px;
  background-color: #fff;
}
.btnLeft {
  position: absolute;
  top: 50%;
  margin-top: -20px;
  margin-left: 15px;
  width: 55px;
  height: 55px;
  text-align: center;
  color: #fff;
  text-decoration: none;
  background-color: #33333360;
  transition: all 0.5s;
}
.btnLeft:hover {
  background-color: #ffffff60;
}
.btnRight {
  position: absolute;
  top: 50%;
  left: 95%;
  margin-top: -20px;
  width: 55px;
  height: 55px;
  text-align: center;
  color: #fff;
  text-decoration: none;
  background-color: #33333350;
  transition: all 0.5s;
}
.btnRight:hover {
  background-color: #ffffff60;
}        
.hoc-duong{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/hoc-duong/hiyori-chan-no-onegai-wa-zettai.jpg);
}
.chuyen-sinh{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/chuyen-sinh/thanh-khu.jpg);
}
.hai-huoc{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/hai-huoc/bao-sung-tieu-manh-phi.jpg);
}
.kinh-di{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/kinh-di/tro-choi-song-trung.jpg);
}
.shounen{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/shounen/kiem-nghich-thuong-khung.jpg);
}
.xuyen-khong{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/xuyen-khong/ton-thuong.jpg);
}
.drama{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/drama/de-co-the-song-sot.jpg);
}
.hanh-dong{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/hanh-dong/terror-man-ke-khung-bo.jpg);
}
.ngon-tinh{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/ngon-tinh/danh-mon-chi-ai.jpg);
}
.truyen-mau{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/truyen-mau/nguoi-dua-thu-vo-han.jpg);
}
.gia-tuong{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/gia-tuong/the-gioi-ma-thuat-va-ke-mat-tri.jpg);
}
.phieu-luu{
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/tag/phieu-luu/cung-quy-kiem-than.jpg);
}
.time {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/clock-white.svg);
  background-repeat: no-repeat;
  position: left center;
  padding-left: 1.2rem;
  margin-left: 1rem;
  font-size: 0.8rem;
  font-style: italic;
}
.like {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/like-black.svg);
  background-repeat: no-repeat;
  position: left center;
  padding-left: 1.5rem;
  font-size: 0.8rem;
  font-style: italic;
}
.read {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/eye-white.svg);
  background-repeat: no-repeat;
  position: left center;
  padding-left: 1.5rem;
  font-size: 0.8rem;
  font-style: italic;
}
.comment {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/comment-white.svg);
  background-repeat: no-repeat;
  position: left center;
  margin-left: 0.5rem;
  padding-left: 1.5rem;
  font-size: 0.8rem;
  font-style: italic;
}
.like-white {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/like-white.svg);
  background-repeat: no-repeat;
  position: left center;
  margin-left: 0.5rem;
  padding-left: 1.2rem;
  font-size: 0.8rem;
  font-style: italic;
}
.read-black {
  background-image: url(${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/eye-black.svg);
  background-repeat: no-repeat;
  position: left center;
  padding-left: 1.5rem;
  font-size: 0.8rem;
  font-style: italic;
}
input {
  border: 1px solid transparent;
  background-color: #f1f1f1;
  padding: 10px;
  font-size: 16px;
}

input[type=text] {
  background-color: #f1f1f1;
  width: 100%;
}

input[type=submit] {
  background-color: DodgerBlue;
  color: #fff;
  cursor: pointer;
}

.autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}

.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff; 
  border-bottom: 1px solid #d4d4d4; 
}

/*when hovering an item:*/
.autocomplete-items div:hover {
  background-color: #e9e9e9; 
}

/*when navigating through the items using the arrow keys:*/
.autocomplete-active {
  background-color: DodgerBlue !important; 
  color: #ffffff; 
}
.suggest-comic {
  width: 360px;
  position: absolute;
  top: 46px;
  left: 50.1%;
  z-index: 1;
  max-height: 300px;
  overflow-y: auto;
  overflow-x: hidden;
  border: 1px solid #ebebeb;
  background-color: #fff;
  -moz-transition: all 0.3s ease-out;
  -ms-transition: all 0.3s ease-out;
  -o-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}
.suggest-comic ul{
  list-style: none;
  margin: 0rem;
  padding: 0rem;
}
.suggest-comic li{
  padding: 0.8rem;
}
.suggest-comic li:hover{
  background-color: #c0c0c0;
}
.suggest-comic a{
  color: #000;
  font-size: 0.9rem;
}
.suggest-comic a:hover{
  text-decoration: none;
}
.search-tool input{
  width: 360px !important;
}
.account {
  background-color: #f8f9fa !important; }
.account-cont{
  padding: 0rem !important;
}
.box-account{
  margin-left: 0.5rem !important;
  margin-right: 1rem !important;
}
.box{
  box-shadow: 0 2px 4px #c4c4c4, 0 8px 16px #c4c4c4;
  border-radius: 10px; }
.changepw-box{
  padding: 0rem 2rem;
  background-color: #fff;
  margin: 1rem;
  box-shadow: 0 2px 4px #c4c4c4, 0 8px 16px #c4c4c4;
  border-radius: 10px; }
  .follow-box{
  padding: 0rem 2rem;
  background-color: #fff;
  margin: 1rem;
  box-shadow: 0 2px 4px #c4c4c4, 0 8px 16px #c4c4c4;
  border-radius: 10px; }
.changepw-form{
  padding: 0rem;
}
.account-menu {
  width: 90%;
  background-color: white;
  padding: 0;
  border-radius: 12px;
  padding-bottom: 1rem; }

.account-title {
  font-size: 1rem;
  padding: 1rem 2rem; }
.changepw-title {
  text-align: center;
  font-size: 1rem;
  padding: 1rem 2rem; }
.account-list {
  width: 100%;
  padding: 0rem; }
  .account-list li {
    list-style-type: none; }

.account-list a {
  color: #464c55af;
  font-size: 1rem;
  font-weight: normal;
  text-decoration: none; }

.account-list-item {
  padding: 1rem 2rem;
  height: 3.5rem; }

a .account-list-item.active,
a .account-list-item.active {
  background-color: #464c5521; }

.account-list-item.active,
.account-list-item.active {
  color: #464c55;
  font-weight: bold; }

a .account-list-item:hover,
a .account-list-item:focus {
  background-color: #464c5521; }

.account-list-item:hover,
.account-list-item:focus {
  color: #464c55;
  font-weight: bold; }

.account-list-item.active {
  background-color: #464c5521; }

.account-list-item.active a {
  color: #464c55;
  font-weight: bold; }

.account-list-item a {
  color: #464c55af;
  font-size: 1rem;
  font-weight: normal; }

.account-list-item a:hover {
  text-decoration: none; }

.c-red {
  color: red; }

.c-red:hover {
  color: red; }

.c-light-text {
  color: #AEB0B5; }

.account-infor {
  margin: 1rem 0rem;
}

.text-center {
  text-align: center !important; }

.img-upload {
  height: 500px;
  margin: 0rem 0rem;
  border-right: 1px solid rgba(151, 151, 151, 0.514); }

.img-upload img {
  width: 150px;
  height: 150px;
  display: inline-block;
  border-style: none;
  background-color: #02749213;
  border-radius: 50%;
  margin: 0 28%;
  margin-top: 100px; }

.img-upload p {
  font-size: 15px;
  font-weight: lighter;
  margin: auto;
  width: 250px;
  margin-top: 10px; }

.img-upload input {
  display: inline-block;
  border: none;
  background: transparent;
  color: transparent;
  margin: 0 34%;
  margin-top: 20px;
  margin-bottom: 100px; }

.img-upload input::-webkit-file-upload-button {
  visibility: hidden; }

.img-upload input::before {
  content: "Thay đổi";
  color: #555555;
  padding: 5px 15px;
  border-radius: 7px;
  font-weight: lighter;
  font-size: 14px;
  border: 1px solid rgba(139, 139, 139, 0.644); }

.label-for-input {
  color: #555555;
  padding: 5px 15px;
  border-radius: 7px;
  font-weight: lighter;
  font-size: 14px;
  border: 1px solid rgba(139, 139, 139, 0.644);
  margin-top: 1rem; }
.label-for-input:hover{
  border: 1px solid #2c7abe;
  color: #2c7abe;
}

.infor-form button.btn-submit {
  transition: all 0.5s;
  border-radius: 8px;
  padding: 0.5rem;
  background-color: #2c7abe;
  width: 100%;
  margin-bottom: 5%;
  color: #fff;
  font-weight: bold; }
.btn-submit:hover{
  box-shadow: 0 2px 4px rgb(0 0 0 / 10%), 0 8px 16px rgb(0 0 0 / 10%);
  background-color: #124a7a !important;
}
.infor-form h3.title {
  margin: 30px 0px 50px;
  font-family: inherit;
  font-weight: bold; }
.infor-form .form-check-label {
  margin-right: 4rem;
  margin-top: 1rem; }

.form__input {
  border: none;
  background-color: rgba(73, 73, 73, 0.075);
  height: 3rem;
  border-radius: 8px; }

.form__input:focus,
.form__input:active {
  background-color: #02749213;
  border: solid 1.5px #027492;
  box-shadow: none; }

input:focus {
  outline: none; }

.title {
  position: relative;
  margin-bottom: 1rem !important;
  /* margin-left: 45px; */ }
@media screen and (min-width: 320px) and (max-width: 424px) {
  .dn{
    font-size: 0.7rem !important;
  }
    .move-top img{
    right: 0 !important;
    width: 1.2rem;
  }
  .mb-ds{
    display: none;
  }
  /*Login*/
  .col{
    padding: 0.5rem 0rem;
  }
  .login-mg-pd{
    margin: 4rem 0rem 5rem;
  }
  .brand-login img{
    margin: 1rem 1rem 1rem 0rem;
  }
  .al-login{
    width: 100% !important;
    margin-bottom: 3rem;
  }
  .al-login input{
    font-size: 0.5rem !important;
    height: 20px;
  }
  .login-btn{
    font-size: 0.6rem !important;
    padding: 0.3rem 1rem !important;
  }
  .fg-pswd{
    padding-top: 0rem !important;
    font-size: 0.5rem;
  }
  .fg-pswd p{
    font-size: 0.5rem;
  }
  .signin-btn {
    padding: 0rem !important;
  }
  .signin-btn a{
    font-size: 0.6rem !important;
    padding: 0.3rem 1rem !important;
  }
  /*End Login*/
  /*Sign Up*/
  .sub-signup h2{
    font-size: 0.9rem;
  }
  .sub-signup p{
    font-size: 0.7rem;
    margin-bottom: 0.5rem !important;
  }
  .signup-mg-pd{
    margin: 4rem 0rem 6rem;
  }
  .brand-signup img{
    margin: 4rem 1rem 1rem 0rem;
  }
  .name-form{
    margin-bottom: 0.5rem !important;
  }
  .align-input{
    margin-top: 0.5rem;
  }
  .sc-input input{
    font-size: 0.8rem !important;
  }
  .surname-input{
    padding: 0rem !important;
  }
  .surname-input input{
    font-size: 0.5rem !important;
    height: 20px;
  }
  .lastname-input{
    padding: 0rem 0rem 0rem 0.5rem !important;
  }
  .lastname-input input{
    font-size: 0.5rem !important;
    height: 20px;
  }
  .signup-btn{
    font-size: 0.7rem !important;
    padding: 0.3rem 1rem !important;
  }
  /*End Sign Up*/
  /*Header*/
  .nav{
    font-size: 0.7rem;
  }
  .dropbtn{
    font-size: 0.7rem;
  }
  .img-icon{
    width: 0.8rem;
    margin-left: 0.2rem;
  }
  .first{
    font-size: 0.6rem;
    min-width: 180px;
  }
  .first a{
   width: 90px;
   padding: 0.5rem; 
  }
  .sc-dr{
    right: -1rem;
    font-size: 0.6rem;
    min-width: 100px;
  }
  .sc-dr a{
    width: 100px;
    padding: 0.5rem;
  }
  .disappear {
    display: none !important;
  }
  .home{
    display: none !important;
  }
  .last-row{
    display: none !important;
  }
  .search-tool{
    display: none !important;
  }
  .navbar-brand img{
    width: 5rem;
  }
  /*End header*/
  
  /*Index*/
  .title{
    font-size: 0.7rem;
    padding-top: 0.5rem;
    margin-bottom: 0rem !important;
  }
  /*Slider*/
  p{
    font-size: 0.7rem;
  }
  .content{
    width: 85px;
  }
  .card-content{
   padding: 0.2rem 0.2rem;
  }
  .time{
    display: none;
  }
  .slide-card {
    height: 100px;
    width: 90px;
  }
  .chapter{
    font-size: 0.7rem !important;
  }
  .btnRight{
    left: 85%;
  }
  .slider-border{
    margin-top: 4rem;
    padding-bottom: 1rem;
  }
  /*End Slider*/
  /*Main Section*/
  .fix{
    margin: 0rem !important;
    padding: 0rem !important;
  }
  .title-update{
    padding-left: 0.2rem;
    width: 95px;
    font-size: 0.6rem !important;
  }
  .chapter-update a{
    font-size: 0.5rem;
  }
  .time-update{
    margin-top: 0.5rem;
    font-size: 0.5rem;
  }
  .page-al{
    padding-left: 15%;
  }
  .pagination{
    font-size: 0.6rem;
  }
  .read{
    font-size: 0.6rem;
    margin-left: 0rem;
    padding-left: 1rem;
  }
  .like-white{
    display: none;
  }
  /*End MainSection*/
  /*Top Comic*/
  .hot-title{
    font-size: 0.6rem;
  }
  .hot-card{
    height: 50px;
  }
  .rank{
    font-size: 0.7rem;
    margin: 0rem !important;
    padding: 0rem 0.5rem 0rem 0rem!important;
  }
  /*End Top Comic*/
  /*Box Tag*/
  .tag-row a{
    font-size: 0.7rem;
  }
  .tag-col{
    margin: 0rem 0rem !important;
    padding: 0rem 0.2rem !important;
  }
  .tag-col img{
    display: none;
  }
  /*End Box Tag*/
  /*End Index*/
  
  /*Detail*/
  .detail-comic-second{
    padding: 0.2rem !important;
  }
  .breadcrumb{
    font-size: 0.7rem;
    padding: 0.2rem 0.5rem;
    margin-bottom: 0.5rem;
  }
  .title-comic{
    font-size: 0.7rem;
    margin-bottom: 0rem;
  }
  hr{
    margin: 0.2rem 0rem !important;
  }
  .more-comic-info{
    font-size: 0.5rem;
    margin-bottom: 0.2rem;
  }
  .detail-comic{
    padding: 0rem !important;
  }
  .sub-comic{
    padding-left: 0rem !important;
  }
  .detail-content img{
    width: 0.4rem;
    margin-right: 0.2rem;
  }
  .detail-content{
    font-size: 0.5rem;
    margin: 0.2rem;
  }
  .container-btn{
    padding: 0rem !important;
    margin: 0rem !important;
  }
  .btn-list-chapter{
    font-size: 0.5rem;
    padding: 0.3rem 0.2rem;
    margin: 0rem 1.2rem 0rem 0rem;
  }
  .btn-list-chapter img{
    width: 0.5rem;
    margin-right: 0.2rem;
  }
  .btn-follow-chapter{
    font-size: 0.5rem;
    padding: 0.3rem 0.2rem;
    margin: 0rem;
  }
  .btn-follow-chapter img{
    width: 0.5rem;
    margin-right: 0.2rem;
  }
  .btn-like-chapter{
    font-size: 0.5rem;
    padding: 0.3rem 0.2rem;
    margin: 0rem;
  }
  .btn-like-chapter img{
    width: 0.5rem;
  }
  .pd-bt{
    padding-bottom: 0.5rem;
  }
  .list-chapter{
    font-size: 0.7rem;
    padding: 0rem;
  }
  .lst{
    font-size: 0.4rem;
  }
  .col-3{
    padding-left: 0.2rem !important;
    padding-right: 0rem !important;
  }
  .all-chapter-btn{
    font-size: 0.6rem;
    margin: 0rem !important;
    padding: 0rem !important;
  }
  textarea{
    font-size: 0.6rem;
    padding: 0.5rem;
    height: 60px;
  }
  .btn-send{
    font-size: 0.6rem;
    padding: 0.2rem !important;
    margin: 0rem !important;
    width: 50px !important;
  }
  .btn-send img{
    width: 0.5rem;
  }
  .user-info-comment{
    font-size: 0.7rem;
  }
  .member{
    font-size: 0.5rem !important;
    margin: 0rem;
    padding: 0.2rem;
  }
  .admin{
    font-size: 0.5rem !important;
    margin: 0rem;
    padding: 0.2rem;
  }
  .user-info-comment span{
    font-size: 0.6rem;
  }
  .time-cmt{
    display: none;
  }
  .msg-comment{
    font-size: 0.7rem;
  }
  .reply-comment{
    font-size: 0.6rem;
  }
  .reply-lv1{
    display: none;
  }
  .like-comment{
    font-size: 0.6rem;
  }
  .like-comment img{
    width: 0.5rem;
  }
  /*End detail*/

  /*History*/
  .title-history{
    font-size: 0.9rem;
  }
  .content-sub-his{
    font-size: 0.6rem;
    margin: 0.5rem;
  }
  .chapter-history a{
    font-size: 0.6rem;
  }
  /*End History*/

  /*Account*/
  .navbar{
    padding: 0rem;
  }
  .col-6{
    padding: 0.5rem;
  }
  .changepw{
    padding: 0rem!important;
    background-color: #F8F9FA;
  }
  .account-menu{
    padding-bottom: 0rem !important;
  }
  .account-title{
    font-size: 0.6rem;
    padding: 0.5rem 0.3rem;
    margin-bottom: 0rem !important;
  }
  .changepw-title{
    padding-top: 0rem !important;
    font-size: 0.6rem;
    margin-bottom: 0rem !important;
    padding-bottom: 0.5rem;
  }
  .account-list-item{
    font-size: 0.4rem;
    padding: 0.3rem 0rem;
    height: 20px;
  }
  .img-upload{
    padding-top: 1rem;
    height: 200px;
  }
  .img-upload img {
    width: 60px;
    height: 60px;
    margin: 2rem 0rem;
  }
  .img-upload p{
    font-size: 0.4rem;
    margin: -1rem 0rem -0.5rem ;
    width: 120px;
  }
  .label-for-input{
    font-size: 0.5rem;
  }
  .title-form{
    font-size: 0.6rem;
  }
  .form__input{
    height: 25px;
    font-size: 0.5rem;
    padding: 0.2rem;
  }
  .form-group{
    margin-bottom: 0rem !important;
  }
  .btn-submit{
    margin-top: 0.5rem;
    font-size: 0.6rem;
    padding: 0.3rem !important;
  }
  .follow-box{
    padding: 0.5rem !important;
  }
  .account-infor{
    padding-bottom: 2rem !important;
  }
  /*End account*/

  /*Reading*/
  .title-sub-tag{
    font-size: 0.7rem;
  }
  .btn-list-reading{
    padding: 0.2rem 0.4rem;
  }
  .btn-list-reading img{
    width: 0.5rem;
    padding-bottom: 0.2rem;
  }
  .select{
    font-size: 0.6rem;
  }
  .padding-sub{
    padding-left: 1rem !important;
  }
  /*End Reading*/

  /*Tag*/
  .content-sub-tag{
    font-size: 0.5rem;
    margin: 0rem 0.5rem;
  }
  .img-hot-tag img {
    margin: 0.5rem 0.2rem;
    width: 5rem;
  }
  .content-hot-tag{
    padding-left: 1.5rem;
    padding-bottom: 0.5rem;
  }
  .title-hot-tag{
    font-size: 0.8rem;
    margin: 0.5rem 0rem;
  }
  .detail-content-hot-tag{
    font-size: 0.65rem;
  }
  .detail-content-hot-tag img{
    width: 0.5rem;
    margin-right: 0.1rem;
  }
  .chapter-update{
    padding: 0.2rem;
  }
  .time-update{
    margin-top: 0.8rem !important;
    padding: 0rem !important;
  }
  .btn-read{
    font-size: 0.7rem;
    padding: 0.2rem 1rem;
  }
  .last {
    margin-bottom: 0.2rem;
  }
  /*End Tag*/
  /*Footer*/
  .footer{
    font-size: 0.5rem;
  }
  .logo-footer{
    width: 6rem;
    margin: 1rem 0rem 0rem;
  }
  .title-footer{
    font-size: 0.6rem;
    margin-top: 1rem;
  }
  .col-footer{
    padding: 0rem 0.2rem !important;
    margin-top: 0rem;
  }
  .col-footer p{
    font-size: 0.6rem;
    margin: 0.2rem !important;
  }
  .icon-footer{
    width: 0.8rem;
    padding-right: 0.2rem;
    margin-bottom: 0.2rem;
    margin-right: 0rem;
  }
  .copy-right{
    padding: 0.3rem;
  }
  .text-3{
    font-size: 0.5rem;
  }
  /*End footer*/
}
/**/
@media screen and (min-width: 425px) and (max-width: 767px) {
  .dn{
    font-size: 0.8rem !important;
  }
    .move-top img{
    width: 2rem;
  }
  /*Login*/
  .login-mg-pd{
    margin: 8rem 0rem 10rem;
  }
  .brand-login img{
    margin: 1rem 1rem 1rem 0rem;
  }
  .al-login{
    width: 100% !important;
    margin-bottom: 3rem;
  }
  .al-login input{
    font-size: 0.8rem !important;
    height: 30px;
  }
  .login-btn{
    font-size: 0.8rem !important;
    padding: 0.5rem 2rem !important;
  }
  .fg-pswd{
    padding-top: 0.5rem !important;
    font-size: 0.6rem;
  }
  .signin-btn {
    padding: 0rem !important;
  }
  .signin-btn a{
    font-size: 0.8rem !important;
    padding: 0.5rem 2rem !important;
  }
  /*End Login*/
  /*Sign Up*/
  .sub-signup h2{
    font-size: 1rem;
  }
  .sub-signup p{
    font-size: 0.8rem;
    margin-bottom: 0.5rem !important;
  }
  .signup-mg-pd{
    margin: 8rem 0rem 10rem;
  }
  .brand-signup img{
    margin: 6rem 1rem 1rem 0rem;
  }
  .name-form{
    margin-bottom: 0.5rem !important;
  }
  .align-input{
    margin-top: 0.5rem;
  }
  .sc-input input{
    font-size: 0.8rem !important;
  }
  .surname-input{
    padding: 0rem !important;
  }
  .surname-input input{
    font-size: 0.8rem !important;
  }
  .lastname-input{
    padding: 0rem 0rem 0rem 0.5rem !important;
  }
  .lastname-input input{
    font-size: 0.8rem !important;
  }
  .signup-btn{
    font-size: 0.8rem !important;
    padding: 0.5rem 2rem !important;
  }
  /*End Sign Up*/
  /*Header*/
  .nav{
    font-size: 0.8rem;
  }
  .dropbtn{
    font-size: 0.8rem;
  }
  .img-icon{
    width: 1rem;
  }
  .first{
    font-size: 0.6rem;
    min-width: 240px;
  }
  .first a{
   width: 120px;
   padding: 12px; 
  }
  .sc-dr{
    right: -1rem;
    font-size: 0.6rem;
    min-width: 120px;
  }
  .sc-dr a{
    width: 120px;
    padding: 12px;
  }
  .disappear {
    display: none !important;
  }
  .home{
    display: none !important;
  }
  .last-row{
    display: none !important;
  }
  .search-tool{
    display: none !important;
  }
  .navbar-brand img{
    width: 6rem;
  }
  /*End header*/
  
  /*Index*/
  .title{
    font-size: 0.9rem;
  }
  /*Slider*/
  p{
    font-size: 0.8rem;
  }
  .content{
    width: 120px;
  }
  .card-content{
   padding: 0.5rem 0.2rem;
  }
  .time{
    display: none;
  }
  .slide-card {
    height: 160px;
    width: 130px;
  }
  .chapter{
    font-size: 0.7rem !important;
  }
  .btnRight{
    left: 85%;
  }
  .slider-border{
    margin-top: 4rem;
    padding-bottom: 1rem;
  }
  /*End Slider*/
  /*Main Section*/
  .title-update{
  width: 120px;
  }
  .chapter-update a{
    font-size: 0.65rem;
  }
  .time-update{
    margin-top: 0.2rem;
    font-size: 0.65rem;
  }
  .page-al{
    padding-left: 25%;
  }
  .pagination{
    font-size: 0.8rem;
  }
  .read{
    font-size: 0.6rem;
    margin-left: 0rem;
    padding-left: 1rem;
  }
  .like-white{
    font-size: 0.6rem;
    margin-left: 0.3rem;
    padding-left: 0.8rem;
  }
  /*End MainSection*/
  /*Top Comic*/
  .hot-title{
    font-size: 0.8rem;
  }
  /*End Top Comic*/
  /*Box Tag*/
  .tag-row a{
    font-size: 0.8rem;
  }
  .tag-col{
    margin: 0rem 0rem !important;
    padding: 0.2rem 0rem !important;
  }
  .tag-col img{
    width: 0.8rem;
    padding-left: 0.2rem;
    margin: 0rem 0.2rem;
  }
  /*End Box Tag*/
  /*End Index*/
  
  /*Detail*/

  .breadcrumb{
    font-size: 0.8rem;
  }
  .title-comic{
    font-size: 0.8rem;
  }
  hr{
    margin: 0.2rem 0rem !important;
  }
  .more-comic-info{
    font-size: 0.6rem;
  }
  .detail-comic{
    padding: 0rem !important;
  }
  .sub-comic{
    padding-left: 0rem !important;
  }
  .detail-content img{
    width: 0.5rem;
    margin-right: 0.2rem;
  }
  .detail-content{
    font-size: 0.6rem;
  }
  .container-btn{
    padding: 0rem;
    margin: 0rem;
  }
  .btn-list-chapter{
    font-size: 0.6rem;
    padding: 0.3rem 0.5rem;
  }
  .btn-list-chapter img{
    width: 0.5rem;
  }
  .btn-follow-chapter{
    font-size: 0.6rem;
    padding: 0.3rem 0.6rem;
  }
  .btn-follow-chapter img{
    width: 0.5rem;
  }
  .btn-like-chapter{
    font-size: 0.6rem;
    padding: 0.3rem 0.6rem;
  }
  .btn-like-chapter img{
    width: 0.5rem;
  }
  .pd-bt{
    padding-bottom: 0.5rem;
  }
  .list-chapter{
    font-size: 0.8rem;
    padding: 0 0.5rem;
  }
  .lst{
    font-size: 0.6rem;
  }
  .col-3{
    padding-left: 0rem !important;
  }
  .all-chapter-btn{
    font-size: 0.6rem;
    margin: 0rem !important;
    padding: 0.5rem !important;
  }
  textarea{
    font-size: 0.8rem;
    padding: 0.5rem;
    height: 80px;
  }
  .btn-send{
    font-size: 0.8rem;
    padding: 0.2rem;
  }
  .user-info-comment{
    font-size: 0.8rem;
  }
  .member{
    margin: 0rem;
    padding: 0.2rem;
  }
  .admin{
    margin: 0rem;
    padding: 0.2rem;
  }
  .user-info-comment span{
    font-size: 0.6rem;
  }
  .time-cmt{
    display: none;
  }
  .msg-comment{
    font-size: 0.8rem;
  }
  .reply-comment{
    font-size: 0.6rem;
  }
  .reply-lv1{
    display: none;
  }
  .like-comment{
    font-size: 0.6rem;
  }
  .like-comment img{
    width: 0.5rem;
  }
  /*End detail*/

  /*History*/
  .title-history{
    font-size: 0.9rem;
  }
  .content-sub-his{
    font-size: 0.6rem;
    margin: 0.5rem;
  }
  .chapter-history a{
    font-size: 0.6rem;
  }
  /*End History*/

  /*Account*/
  .changepw{
    padding: 1rem 0rem 3rem!important;
    background-color: #F8F9FA;
  }
  .account-menu{
    padding-bottom: 0rem !important;
  }
  .account-title{
    font-size: 0.7rem;
    padding: 0.5rem 0.3rem;
    margin-bottom: 0rem !important;
  }
  .changepw-title{
    padding-top: 0rem !important;
    font-size: 0.8rem;
    margin-bottom: 0rem !important;
    padding-bottom: 0.5rem;
  }
  .account-list-item{
    font-size: 0.6rem;
    padding: 0.5rem 0rem;
    height: 30px;
  }
  .img-upload{
    height: 300px;
  }
  .img-upload img {
    width: 80px;
    height: 80px;
    margin: 2rem 0rem;
  }
  .img-upload p{
    font-size: 0.6rem;
    margin: -1rem 0rem -0.5rem ;
    width: 160px;
  }
  .label-for-input{
    font-size: 0.6rem;
  }
  .title-form{
    font-size: 0.8rem;
  }
  .form__input{
    height: 2rem;
    font-size: 0.7rem;
    padding: 0.2rem;
  }
  .form-group{
    margin-bottom: 0rem !important;
  }
  .btn-submit{
    margin-top: 1rem;
    font-size: 0.7rem;
    padding: 0.3rem !important;
  }
  .follow-box{
    padding: 0.5rem !important;
  }
  .account-infor{
    padding-bottom: 2rem !important;
  }
  /*End account*/

  /*Reading*/
  .title-sub-tag{
    font-size: 0.9rem;
  }
  .btn-list-reading{
    padding: 0.4rem 0.8rem;
  }
  .btn-list-reading img{
    width: 0.8rem;
    padding-bottom: 0.2rem;
  }
  .select{
    font-size: 0.8rem;
  }
  .padding-sub{
    padding-left: 1rem !important;
  }
  /*End Reading*/

  /*Tag*/
  .content-sub-tag{
    font-size: 0.8rem;
    margin: 0rem 0.5rem;
  }
  .img-hot-tag img {
    margin: 0.5rem;
    width: 6rem;
  }
  .content-hot-tag{
    padding-left: 1.5rem;
    padding-bottom: 0.5rem;
  }
  .title-hot-tag{
    font-size: 0.8rem;
    margin: 0.5rem 0rem;
  }
  .detail-content-hot-tag{
    font-size: 0.65rem;
  }
  .detail-content-hot-tag img{
    width: 0.5rem;
    margin-right: 0.1rem;
  }
  .btn-read{
    font-size: 0.8rem;
    padding: 0.2rem 1rem;
  }
  .last {
    margin-bottom: 0.2rem;
  }
  /*End Tag*/
  /*Footer*/
  .footer{
    font-size: 0.6rem;
  }
  .logo-footer{
    width: 8rem;
    margin: 1rem 0rem;
  }
  .title-footer{
    font-size: 0.8rem;
  }
  .col-footer{
    padding: 0rem 0.5rem !important;
  }
  .icon-footer{
    width: 0.8rem;
    padding-right: 0.2rem;
    margin-bottom: 0.2rem;
    margin-right: 0rem;
  }
  .copy-right{
    padding: 0.5rem;
  }
  .text-3{
    font-size: 0.7rem;
  }
  /*End footer*/
}

@media screen and (min-width: 768px) and (max-width: 991px) {
  .dn{
    font-size: 0.9rem !important;
  }
    .move-top img{
    width: 2.5rem;
  }
  /*Login*/
  .brand-login p{
    font-size: 0.9rem;
  }
  .login-mg-pd{
    margin: 8rem 0rem 10rem;
  }
  .brand-login img{
    margin: 2rem 1rem 1rem 0rem;
  }
  .al-login{
    width: 100% !important;
    margin-bottom: 3rem;
  }
  .al-login input{
    font-size: 0.9rem !important;
  }
  .login-btn{
    font-size: 0.9rem !important;
    padding: 0.5rem 2rem !important;
  }
  .fg-pswd{
    padding-top: 0.5rem !important;
    font-size: 0.8rem;
  }
  .signin-btn {
    padding: 0rem !important;
  }
  .signin-btn a{
    font-size: 0.9rem !important;
    padding: 0.5rem 2rem !important;
  }
  /*End Login*/
  /*Sign Up*/
  .brand-signup p{
    font-size: 0.9rem;
  }
  .sub-signup h2{
    font-size: 1.5rem;
  }
  .sub-signup p{
    font-size: 0.9rem;
    margin-bottom: 0.5rem !important;
  }
  .signup-mg-pd{
    margin: 8rem 0rem 10rem;
  }
  .brand-signup img{
    margin: 6rem 1rem 1rem 0rem;
  }
  .name-form{
    margin-bottom: 0.5rem !important;
  }
  .align-input{
    margin-top: 0.5rem;
  }
  .sc-input input{
    font-size: 0.8rem !important;
  }
  .surname-input{
    padding: 0rem !important;
  }
  .surname-input input{
    font-size: 0.9rem !important;
    height: 40px;
  }
  .lastname-input{
    padding: 0rem 0rem 0rem 0.5rem !important;
  }
  .lastname-input input{
    font-size: 0.9rem !important;
    height: 40px;
  }
  .signup-btn{
    font-size: 0.9rem !important;
    padding: 0.5rem 2rem !important;
  }
  /*End Sign Up*/
  /*Header*/
  .nav{
    font-size: 0.9rem;
  }
  .dropbtn{
    font-size: 0.9rem;
  }
  .img-icon{
    width: 1.5rem;
  }
  .first{
    font-size: 0.8rem;
    min-width: 280px;
  }
  .first a{
   width: 140px;
   padding: 12px; 
  }
  .sc-dr{
    right: -1rem;
    font-size: 0.8rem;
    min-width: 150px;
  }
  .sc-dr a{
    width: 150px;
    padding: 12px;
  }
  .home{
    display: none !important;
  }
  .search-tool{
    margin: 0rem !important;
    display: inline-block !important;
  }
  .search-tool input{
    height: 30px !important;
    font-size: 0.8rem;
    width: 200px !important;
  }
  .suggest-comic{
    width: 200px;
    left: 48%;
    top: 40px;
    max-height: 240px;
  }
  .suggest-comic li{
    padding: 0.3rem;
  }
  .suggest-comic a{
    font-size: 0.8rem;
  }
  .my-btn-outline-success{
    padding: 0.1rem 0.5rem;
  }
  .disappear {
    display: block !important;
  }
  .navbar-brand img{
    width: 6rem;
  }
  /*End header*/
  
  /*Index*/
  .title{
    font-size: 0.9rem;
  }
  /*Slider*/
  p{
    font-size: 0.8rem;
  }
  .content{
    width: 120px;
  }
  .card-content{
   padding: 0.5rem 0.2rem;
  }
  .slider-border{
    margin-top: 5rem !important;
  }
  .time{
    display: none;
  }
  .slide-card {
    height: 160px;
    width: 130px;
  }
  .chapter{
    font-size: 0.7rem !important;
  }
  .btnRight{
    left: 90%;
  }
  .slider-border{
    margin-top: 4rem;
    padding-bottom: 1rem;
  }
  /*End Slider*/
  /*Main Section*/
  .title-update{
  width: 130px;
  }
  .chapter-update a{
    font-size: 0.7rem;
  }
  .time-update{
    margin-top: 0.2rem;
    font-size: 0.7rem;
  }
  .page-al{
    padding-left: 30%;
  }
  .pagination{
    font-size: 0.9rem;
  }
  .read{
    font-size: 0.6rem;
    margin-left: 0rem;
    padding-left: 1rem;
  }
  .like-white{
    font-size: 0.6rem;
    margin-left: 0.3rem;
    padding-left: 0.8rem;
  }
  .last-card{
    display: none !important;
  }
  /*End MainSection*/
  /*Top Comic*/
  .hot-title{
    font-size: 0.8rem;
  }
  .rank{
    margin: 0rem;
    padding: 0rem ;
  }
  .title-comic-hot{
    font-size: 0.8rem !important;
    width: 120px;
  }
  .read-black{
    display: none !important;
  }
  .chapter-hot{
    padding: 0rem;
    font-size: 0.65rem;
  }
  .hot-card img{
    width: 50%;
  }
  /*End Top Comic*/
  /*Box Tag*/
  .tag-row a{
    font-size: 0.8rem;
  }
  .tag-col{
    margin: 0rem 0rem !important;
    padding: 0.5rem 0rem!important;
  }
  .tag-col img{
    width: 0.8rem;
    padding-left: 0.2rem;
    margin: 0rem 0.2rem;
  }
  /*End Box Tag*/
  /*End Index*/
  
  /*Detail*/

  .breadcrumb{
    font-size: 0.8rem;
  }
  .title-comic{
    font-size: 0.8rem;
    margin-bottom: 0.5rem;
  }
  hr{
    margin: 0.5rem 0rem !important;
  }
  .more-comic-info{
    font-size: 0.8rem;
  }
  .detail-comic{
    padding: 0rem !important;
  }
  .sub-comic{
    padding-left: 0rem !important;
  }
  .detail-content img{
    width: 0.7rem;
    margin-right: 0.2rem;
  }
  .detail-content{
    font-size: 0.7rem;
  }
  .container-btn{
    padding: 0rem;
    margin: 0rem;
  }
  .btn-list-chapter{
    font-size: 0.8rem;
    padding: 0.2rem 0.5rem;
    margin: 0rem 3rem 0rem 0rem!important;
  }
  .btn-list-chapter img{
    width: 0.8rem;
  }
  .btn-follow-chapter{
    font-size: 0.8rem;
    padding: 0.2rem 0.8rem;
    margin: 0rem !important;
  }
  .btn-follow-chapter img{
    width: 0.8rem;
  }
  .btn-like-chapter{
    font-size: 0.8rem;
    padding: 0.2rem 0.6rem;
    margin-left: 0rem;
  }
  .btn-like-chapter img{
    width: 0.8rem;
  }
  .pd-bt{
    padding-bottom: 0rem;
  }
  .list-chapter{
    font-size: 0.9rem;
    padding: 0rem 0.5rem;
  }
  .lst{
    font-size: 0.7rem;
  }
  .col-3{
    padding-left: 0rem !important;
  }
  .all-chapter-btn{
    font-size: 0.7rem;
    margin: 0rem !important;
    padding: 0.5rem !important;
  }
  textarea{
    font-size: 0.8rem;
    padding: 0.5rem;
    height: 80px;
  }
  .btn-send{
    font-size: 0.8rem;
    padding: 0.2rem;
  }
  .user-info-comment{
    font-size: 0.8rem;
  }
  .member{
    margin: 0rem;
    padding: 0.2rem;
  }
  .admin{
    margin: 0rem;
    padding: 0.2rem;
  }
  .time-cmt{
    font-size: 0.7rem;
  }
  .user-info-comment span{
    font-size: 0.8rem;
  }
  .msg-comment{
    font-size: 0.8rem;
  }
  .reply-comment{
    font-size: 0.7rem;
  }
  .reply-lv1{
    display: none;
  }
  .like-comment{
    font-size: 0.7rem;
  }
  .like-comment img{
    width: 0.8rem;
  }
  /*End detail*/

  /*History*/
  .title-history{
    font-size: 1rem;
  }
  .content-sub-his{
    font-size: 0.8rem;
    margin: 0.5rem;
  }
  .chapter-history a{
    font-size: 0.8rem;
  }
  /*End History*/

  /*Account*/
  .changepw{
    padding: 1rem 0rem 3rem!important;
    background-color: #F8F9FA;
  }
  .account-menu{
    padding-bottom: 0rem !important;
  }
  .account-title{
    font-size: 0.8rem !important;
    padding: 0.5rem 0.3rem;
    margin-bottom: 0rem !important;
  }
  .changepw-title{
    padding-top: 0.5rem !important;
    font-size: 0.9rem;
    margin-bottom: 0rem !important;
    padding-bottom: 0.5rem;
  }
  .account-list-item{
    font-size: 0.7rem;
    padding: 0.5rem;
    height: 30px;
  }
  .img-upload{
    height: 400px;
  }
  .img-upload img {
    width: 120px;
    height: 120px;
    margin: 2rem 0rem;
  }
  .img-upload p{
    font-size: 0.6rem;
    margin: -1rem 0rem -0.5rem 0.5rem ;
    width: 240px;
  }
  .label-for-input{
    font-size: 0.7rem;
  }
  .title-form{
    font-size: 0.8rem;
  }
  .form__input{
    height: 2rem;
    font-size: 0.8rem;
    padding: 0.2rem 0.2rem 0.2rem 0.5rem;
  }
  .form-group{
    margin-bottom: 0rem !important;
  }
  .btn-submit{
    margin-top: 1rem;
    font-size: 0.8rem;
    padding: 0.3rem !important;
  }
  .follow-box{
    padding: 0.5rem !important;
    margin-bottom: 5rem;
  }
  /*End account*/

  /*Reading*/
  .title-sub-tag{
    font-size: 1rem;
  }
  .btn-list-reading{
    padding: 0.4rem 0.8rem;
  }
  .btn-list-reading img{
    width: 0.8rem;
    padding-bottom: 0.2rem;
  }
  .select{
    font-size: 0.8rem;
  }
  .padding-sub{
    padding-left: 1rem !important;
  }
  .user-info-comment a{
    font-size: 0.9rem;
  }
  /*End Reading*/

  /*Tag*/
  .content-sub-tag{
    font-size: 0.8rem;
    margin: 0rem 0.5rem;
  }
  .img-hot-tag img {
    margin: 0.5rem 0.5rem 0.5rem 1.5rem;
    width: 6rem;
  }
  .content-hot-tag{
    padding-left: 0rem;
    padding-bottom: 0.5rem;
  }
  .title-hot-tag{
    font-size: 0.8rem;
    margin: 0.5rem 0rem;
  }
  .detail-content-hot-tag{
    font-size: 0.7rem;
  }
  .detail-content-hot-tag img{
    width: 0.7rem;
    margin-right: 0.2rem;
  }
  .btn-read{
    font-size: 0.8rem;
    padding: 0.2rem 1rem;
  }
  .last {
    margin-bottom: 0.2rem;
  }
  /*End Tag*/
  /*Footer*/
  .footer{
    font-size: 0.8rem;
  }
  .logo-footer{
    width: 8rem;
    margin: 1rem 0rem;
  }
  .title-footer{
    font-size: 1rem;
  }
  .col-footer{
    padding: 0rem 0.5rem !important;
  }
  .icon-footer{
    width: 1rem;
    padding-right: 0.2rem;
    margin-bottom: 0.2rem;
    margin-right: 0rem;
  }
  .copy-right{
    padding: 0.6rem;
  }
  .text-3{
    font-size: 0.8rem;
  }
  /*End footer*/
}

@media screen and (min-width: 992px) and (max-width: 1199px) {
  .dn{
    font-size: 0.9rem !important;
  }
   .move-top img{
    width: 3rem;
  }
  /*Login*/
  .brand-login{
    padding: 2rem;
  }
  .brand-login p{
    font-size: 1rem;
  }
  .login-mg-pd{
    margin: 10rem 6rem 12rem;
  }
  .brand-login img{
    margin: 2rem 1rem 1rem 0rem;
  }
  .al-login{
    width: 100%;
    margin-bottom: 3rem;
  }
  .al-login input{
    font-size: 0.9rem !important;
  }
  .login-btn{
    font-size: 0.9rem !important;
    padding: 0.5rem 2rem !important;
  }
  .fg-pswd{
    padding-top: 0rem !important;
    font-size: 0.8rem;
  }
  .signin-btn {
    padding: 0rem !important;
  }
  .signin-btn a{
    font-size: 0.9rem !important;
    padding: 0.5rem 2rem !important;
  }
  /*End Login*/
  /*Sign Up*/
  .brand-signup{
    padding: 2rem;
  }
  .brand-signup p{
    font-size: 1rem;
  }
  .sub-signup h2{
    font-size: 1.5rem;
  }
  .sub-signup p{
    font-size: 1rem;
    margin-bottom: 0.5rem !important;
  }
  .signup-mg-pd{
    margin: 8rem 0rem 10rem;
  }
  .brand-signup img{
    margin: 6rem 1rem 1rem 0rem;
  }
  .name-form{
    margin-bottom: 0.8rem !important;
  }
  .align-input{
    margin-top: 0.8rem;
  }
  .sc-input input{
    font-size: 0.8rem !important;
  }
  .surname-input{
    padding: 0rem !important;
  }
  .surname-input input{
    font-size: 0.9rem !important;
    height: 40px;
  }
  .lastname-input{
    padding: 0rem 0rem 0rem 0.5rem !important;
  }
  .lastname-input input{
    font-size: 0.9rem !important;
    height: 40px;
  }
  .signup-btn{
    font-size: 0.9rem !important;
    padding: 0.5rem 2rem !important;
  }
  /*End Sign Up*/
  /*Header*/
  .nav{
    font-size: 0.9rem;
  }
  .dropbtn{
    font-size: 0.9rem;
  }
  .img-icon{
    width: 1.5rem;
  }
  .first{
    font-size: 0.8rem;
    min-width: 280px;
  }
  .first a{
   width: 140px;
   padding: 12px; 
  }
  .sc-dr{
    right: -1rem;
    font-size: 0.8rem;
    min-width: 150px;
  }
  .sc-dr a{
    width: 150px;
    padding: 12px;
  }
  .home{
    display: none !important;
  }
  .search-tool{
    margin: 0rem !important;
    display: inline-block !important;
  }
  .search-tool input{
    height: 30px !important;
    font-size: 0.9rem;
    width: 300px !important;
  }
  .suggest-comic{
    width: 300px;
    left: 47%;
    top: 40px;
    max-height: 240px;
  }
  .suggest-comic li{
    padding: 0.4rem;
  }
  .suggest-comic a{
    font-size: 0.8rem;
  }
  .my-btn-outline-success{
    padding: 0.1rem 0.5rem;
  }
  .disappear {
    display: block !important;
  }
  .navbar-brand img{
    width: 8rem;
  }
  /*End header*/
  
  /*Index*/
  .title{
    font-size: 0.9rem;
  }
  /*Slider*/
  p{
    font-size: 0.8rem;
  }
  .content{
    width: 120px;
  }
  .card-content{
   padding: 0.5rem 0.2rem;
  }
  .slider-border{
    margin-top: 5rem !important;
  }
  .time{
    display: none;
  }
  .slide-card {
    height: 160px;
    width: 130px;
  }
  .chapter{
    font-size: 0.7rem !important;
  }
  .btnRight{
    left: 92%;
  }
  .slider-border{
    margin-top: 4rem;
    padding-bottom: 1rem;
  }
  /*End Slider*/
  /*Main Section*/
  .title-update{
    width: 130px;
  }
  .chapter-update a{
    font-size: 0.7rem;
  }
  .time-update{
    margin-top: 0.2rem;
    font-size: 0.7rem;
  }
  .page-al{
    padding-left: 30%;
  }
  .pagination{
    font-size: 0.9rem;
  }
  .read{
    font-size: 0.6rem;
    margin-left: 0rem;
    padding-left: 1rem;
  }
  .like-white{
    font-size: 0.6rem;
    margin-left: 0.3rem;
    padding-left: 0.8rem;
  }
  /*End MainSection*/
  /*Top Comic*/
  .hot-title{
    font-size: 0.8rem;
  }
  .rank{
    margin: 0rem;
    padding: 0rem ;
  }
  .title-comic-hot{
    font-size: 0.8rem !important;
    width: 170px;
  }
  .read-black{
    margin: 0rem;
    padding-right: 0.5rem;
    font-size: 0.8rem;
  }
  .chapter-hot{
    padding: 0rem;
    font-size: 0.8rem;
  }
  .hot-card img{
    width: 50%;
  }
  /*End Top Comic*/
  /*Box Tag*/
  .tag-row a{
    font-size: 0.8rem;
  }
  .tag-col{
    margin: 0rem !important;
    padding: 0.5rem 0.5rem!important;
  }
  .tag-col img{
    width: 0.8rem;
    margin: 0rem 0.5rem;
  }
  /*End Box Tag*/
  /*End Index*/
  
  /*Detail*/
  .breadcrumb{
    font-size: 0.8rem;
  }
  .title-comic{
    font-size: 1rem;
    margin-bottom: 0.5rem;
  }
  hr{
    margin: 0.5rem 0rem 1rem !important;
  }
  .more-comic-info{
    font-size: 0.9rem;
  }
  .detail-comic{
    padding: 0rem !important;
  }
  .sub-comic{
    padding-top: 0.5rem;
    padding-left: 0.5rem !important;
  }
  .detail-content img{
    width: 0.7rem;
    margin-right: 0.2rem;
  }
  .detail-content{
    font-size: 0.8rem;
  }
  .container-btn{
    padding: 0rem;
    margin: 0rem 0rem 1rem;
  }
  .btn-list-chapter{
    font-size: 0.9rem;
    padding: 0.5rem 0.5rem;
    margin: 0rem !important;
  }
  .btn-list-chapter img{
    width: 0.8rem;
  }
  .btn-follow-chapter{
    font-size: 0.9rem;
    padding: 0.5rem 0.8rem;
    margin: 0rem !important;
  }
  .btn-follow-chapter img{
    width: 0.8rem;
  }
  .btn-like-chapter{
    font-size: 0.9rem;
    padding: 0.5rem 0.6rem;
    margin-left: 0rem;
  }
  .btn-like-chapter img{
    width: 0.8rem;
  }
  .pd-bt{
    padding-bottom: 0rem;
  }
  .list-chapter{
    font-size: 0.9rem;
    padding: 0rem 0.5rem;
  }
  .lst{
    font-size: 0.8rem;
  }
  .col-3{
    padding-left: 0rem !important;
  }
  .all-chapter-btn{
    font-size: 0.8rem;
    margin: 0rem !important;
    padding: 0.5rem !important;
  }
  textarea{
    font-size: 0.8rem;
    padding: 0.5rem;
    height: 80px;
  }
  .btn-send{
    font-size: 0.8rem;
    padding: 0.2rem;
  }
  .user-info-comment{
    font-size: 0.8rem;
  }
  .member{
    margin: 0rem;
    padding: 0.2rem;
  }
  .admin{
    margin: 0rem;
    padding: 0.2rem;
  }
  .time-cmt{
    font-size: 0.7rem;
  }
  .user-info-comment span{
    font-size: 0.8rem;
  }
  .msg-comment{
    font-size: 0.8rem;
  }
  .reply-comment{
    font-size: 0.7rem;
  }
  .reply-lv1{
    display: none;
  }
  .like-comment{
    font-size: 0.7rem;
  }
  .like-comment img{
    width: 0.8rem;
  }
  /*End detail*/

  /*History*/
  .title-history{
    font-size: 1rem;
  }
  .content-sub-his{
    font-size: 0.8rem;
    margin: 0.5rem;
  }
  .chapter-history a{
    font-size: 0.8rem;
  }
  .time-update{
    padding-top: 0rem;
  }
  /*End History*/

  /*Account*/
  .changepw{
    padding: 1rem 0rem 3rem!important;
    background-color: #F8F9FA;
  }
  .account-menu{
    padding-bottom: 0rem !important;
  }
  .account-title{
    font-size: 0.9rem !important;
    padding: 0.5rem 0.3rem;
    margin-bottom: 0rem !important;
  }
  .changepw-title{
    padding-top: 0.5rem !important;
    font-size: 0.9rem;
    margin-bottom: 0rem !important;
    padding-bottom: 0.5rem;
  }
  .account-list-item{
    font-size: 0.8rem;
    padding: 0.5rem;
    height: 40px;
  }
  .img-upload{
    height: 400px;
  }
  .img-upload img {
    width: 120px;
    height: 120px;
    margin: 2rem 0rem;
  }
  .img-upload p{
    font-size: 0.8rem;
    margin: -1rem 0rem -0.5rem 0.5rem ;
    width: 330px;
  }
  .label-for-input{
    font-size: 0.8rem;
  }
  .title-form{
    font-size: 0.8rem;
  }
  .form__input{
    height: 2rem;
    font-size: 0.8rem;
    padding: 0.2rem 0.2rem 0.2rem 0.5rem;
    height: 40px;
  }
  .form-group{
    margin-bottom: 0rem !important;
  }
  .btn-submit{
    margin-top: 1rem;
    font-size: 0.8rem;
    padding: 0.5rem !important;
  }
  .follow-box{
    padding: 0.5rem !important;
    margin-bottom: 5rem;
  }
  /*End account*/

  /*Reading*/
  .title-sub-tag{
    font-size: 1rem;
  }
  .btn-list-reading{
    padding: 0.4rem 0.8rem;
  }
  .btn-list-reading img{
    width: 0.8rem;
    padding-bottom: 0.2rem;
  }
  .select{
    font-size: 0.8rem;
  }
  .padding-sub{
    padding-left: 1rem !important;
  }
  .user-info-comment a{
    font-size: 0.9rem;
  }
  /*End Reading*/

  /*Tag*/
  .content-sub-tag{
    font-size: 0.8rem;
    margin: 0rem 0.5rem;
  }
  .img-hot-tag img {
    margin: 0.5rem 0.5rem 0.5rem 1.5rem;
    width: 9rem;
  }
  .content-hot-tag{
    padding-left: 0rem;
    padding-bottom: 0.5rem;
  }
  .title-hot-tag{
    font-size: 1.2rem;
    margin: 0.8rem 0rem 1rem;
  }
  .detail-content-hot-tag{
    font-size: 0.8rem;
  }
  .detail-content-hot-tag img{
    width: 0.9rem;
    margin-right: 0.5rem;
  }
  .last{
    margin-bottom: 1rem !important;
  }
  .btn-read{
    font-size: 0.8rem;
    padding: 0.5rem 1rem;
  }
  .last {
    margin-bottom: 0.2rem;
  }
  /*End Tag*/
  /*Footer*/
  .footer{
    font-size: 0.9rem;
  }
  .logo-footer{
    width: 10rem;
    margin: 1rem 0rem;
  }
  .content-footer{
    padding: 0rem;
  }
  .title-footer{
    font-size: 1rem;
  }
  .col-footer{
    padding: 0rem 0.5rem !important;
  }
  .col-footer p{
    margin: 0.5rem 0rem !important;
  }
  .icon-footer{
    width: 1rem;
    padding-right: 0.2rem;
    margin-bottom: 0.2rem;
    margin-right: 0rem;
  }
  .copy-right{
    padding: 0.7rem;
  }
  .text-3{
    font-size: 0.9rem;
  }
  /*End footer*/
}

/*Guest*/
.dn{
  font-size: 1rem;
  padding: 0.5rem 0rem !important;
  margin: 0.5rem 0.3rem;
  border-radius: 10px;
  transition: all 0.5s;
}
.dn:hover{
  text-decoration: underline;
  background-color: #2c7abe;
  color: #fff;
}

/*Active header*/
.active-header{
  text-decoration: underline !important;
}
</style>
    
</head
<body>
    <!-- Header -->
    <header>
        <!--Navbar-->
        <div class="navbar sticky-top navbar-blue bg-blue shadow-sm">
            <div class="container d-flex justify-content-between">
                <!--Logo-->
                <a href="${pageContext.request.contextPath}" class="navbar-brand d-flex align-items-center">
                    <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/logo-phattruyen-02.png" alt="logo">
                </a>
                <!--Link-->
                <ul class="nav">
                    <li class="nav-item home">
                        <a class="nav-link active-header" href="${pageContext.request.contextPath}">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a href="tag-all"><button class="dropbtn">Thể loại</button></a>
                            <div class="dropdown-content first">
                                <a href="tag?tag=chuyen-sinh">Chuyển sinh</a>
                                <a href="tag?tag=drama">Drama</a>
                                <a href="tag?tag=gia-tuong">Giả tưởng</a>
                                <a href="tag?tag=hai-huoc">Hài hước</a>
                                <a href="tag?tag=hanh-dong">Hành động</a>
                                <a href="tag?tag=hoc-duong">Học đường</a>
                                <a href="tag?tag=kinh-di">Kinh dị</a>
                                <a href="tag?tag=ngon-tinh">Ngôn tình</a>
                                <a href="tag?tag=phieu-luu">Phiêu lưu</a>
                                <a href="tag?tag=shounen">Shounen</a>
                                <a href="tag?tag=truyen-mau">Truyện màu</a>
                                <a href="tag?tag=xuyen-khong">Xuyên không</a>
                            </div>
                        </div>
                    </li>
                
                
                    <li class="nav-item">
                        <a class="nav-link" href="history">Lịch sử</a>
                    </li>
                </ul>

                <!--Search-->
                
                <form class="form-inline my-2 my-lg-0 search-tool" action="search" method="get">
                    <input id="searchNameComics" class="form-control mr-sm-2" type="search" placeholder="Tìm theo tên truyện" aria-label="Search" name="q">
                    <button class="btn my-btn-outline-success my-2 my-sm-0" type="submit">
                        <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/search-blue.svg" style="width: 18px;" alt="">
                    </button>
                </form>
                
                <!--Notice & Account-->
                <!--Member-->
                <c:choose>
                    <c:when test="${Authentication != null}">
                    <div id="isMember" style="display: block">
                        <a href=""> <img class="img-icon" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/bell-white.svg" alt=""></a>
                        <div class="dropdown fix-dropdown">
                            <a href=""> <img class="img-icon" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/user-circle-white.svg" alt=""></a>
                            <div class="dropdown-content sc-dr">
                                <a href="info">Thông tin tài khoản</a>
                                <a href="follow">Truyện đang theo dõi</a>
                                <a href="change-password">Đổi mật khẩu</a>
                                <a href="logout">Đăng xuất</a>
                            </div>
                        </div>
                    </div>
                    </c:when>
                    <c:otherwise>
                    <!--Guest-->
                    <div id="isGuest" style="display: block">
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link dn" href="login">Đăng nhập</a>
                            </li>

                        </ul>
                    </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </header>
    <!--Main-->
    <div class="container" style="margin-top: 56px;">
        <div>
            <div class="row fix">
                <div class="col-8 row-border second">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb" style="border-radius: 0rem;">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">Trang chủ</a></li>
                            <li class="breadcrumb-item"><a href="tag-all">Thể loại</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><c:out value="${tagDescriptions.tagName}"/></li>
                        </ol>
                    </nav>
                    <!--Sub-->
                    <div class="row sub-tag none-mp">
                        <div class="col none-mp">
                            <p class="title-sub-tag">Truyện theo thể loại <a href=""><c:out value="${tagDescriptions.tagName}"/></a></p>
                            <p class="content-sub-tag"><c:out value="${tagDescriptions.descriptionTag}"/></p> 
                        </div>
                    </div>
                    <!--Hot-->
                    
                   
                    <!--Row 1-->
                    <div class="row fix">
                        <c:forEach items="${comics}" var="comic">
                        <div class="col">
                            <a href="detail?id=${comic.id}" >
                                <div class="card slide-card">
                                    <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${comic.thumbnail}" alt="...">
                                    <div class="card-content">
                                        <span class="read">${comic.views}</span><span class="comment">123.456</span>
                                    </div>
                                </div>
                            </a>
                            <div>
                                <a href="detail?id=${comic.id}" class="fix-a-update">
                                    <p class="title-update">${comic.title}</p>
                                </a>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 299</a></div>
                                    <div class="col-6 time-update">6 phút trước</div>
                                </div>
                                <div class="row none-mp">
                                    <div class="col-6 chapter-update"><a href="#">Chapter 298</a></div>
                                    <div class="col-6 time-update">1 giờ trước</div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>                        
                    </div>

                    <!--Row 2-->
                    <div class="row none-mp fix">
    
                    </div>
                    
                    <!--Row 3-->
                    <div class="row none-mp fix">
    
                    </div>

                    <!--End -->

                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <!--Page Navigation-->
                    <div class="page-al">
                        <nav aria-label="Page navigation" >
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>

                                <li class="page-item"><a class="page-link" href="tag-all?page=1">1</a></li>
                                <li class="page-item"><a class="page-link" href="tag-all?page=2">2</a></li>
                                <li class="page-item"><a class="page-link" href="tag-all?page=3">3</a></li>

                                <li class="page-item">
                                    <a class="page-link" href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                </div>
                
                <div class="col-4 fix-col-4">
                    <div class="box">
                        <p class="hot-title">TOP TRUYỆN NỔI BẬT</p>
                        <!-- tét-->


                            <div title="${listTop10.get(0).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">01</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(0).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(0).id}">
                                            <p class="title-comic-hot">${listTop10.get(0).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(0).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>       

                            <div title="${listTop10.get(1).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">02</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(1).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(1).id}">
                                            <p class="title-comic-hot">${listTop10.get(1).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(1).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>                                              
                                              
                            <div title="${listTop10.get(2).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">03</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(2).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(2).id}">
                                            <p class="title-comic-hot">${listTop10.get(2).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(2).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>                                                  

                            <div title="${listTop10.get(3).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">04</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(3).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(3).id}">
                                            <p class="title-comic-hot">${listTop10.get(3).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(3).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>                                              
                                            
                            <div title="${listTop10.get(4).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">05</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(4).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(4).id}">
                                            <p class="title-comic-hot">${listTop10.get(4).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(4).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>                                              
                                            
                            <div title="${listTop10.get(5).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">06</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(5).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(5).id}">
                                            <p class="title-comic-hot">${listTop10.get(5).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(5).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>                                              
                                            
                            <div title="${listTop10.get(6).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">07</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(6).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(6).id}">
                                            <p class="title-comic-hot">${listTop10.get(6).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(6).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>                                              
                                            
                            <div title="${listTop10.get(7).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">08</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(7).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(7).id}">
                                            <p class="title-comic-hot">${listTop10.get(7).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(7).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>                                              
                                     
                            <div title="${listTop10.get(8).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">09</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(8).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(8).id}">
                                            <p class="title-comic-hot">${listTop10.get(8).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(8).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>                                              
                                            
                            <div title="${listTop10.get(9).title}" class="card mb-3 hot-card">
                            <div class="row no-gutters">
                                <div class="col-md-4">
                                    <span class="rank">10</span>
                                    <img class="img-hot" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}${listTop10.get(9).thumbnail}" alt="...">
                                </div>
                                <div class="col-md-8 disappear">
                                    <div class="hot-content">
                                        <a href="detail?id=${listTop10.get(9).id}">
                                            <p class="title-comic-hot">${listTop10.get(9).title}</p>
                                        </a>
                                        <div class="row none-mp">

                                            <div class="col-6 none-mp">
                                                <span class="read-black">${listTop10.get(9).views}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>          
                                            </div>

                    
                    <!--Box Tab-->
                    <div class="box">
                        <p class="hot-title">THỂ LOẠI TRUYỆN </p>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href="tag?tag=chuyen-sinh"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Chuyển Sinh</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href="tag?tag=drama"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Drama</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href="tag?tag=gia-tuong"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Giả Tưởng</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href="tag?tag=hai-huoc"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Hài Hước</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href="tag?tag=hanh-dong"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Hành Động</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href="tag?tag=hoc-duong"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Học Đường</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href="tag?tag=kinh-di"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Kinh Dị</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href="tag?tag=ngon-tinh"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Ngôn Tình</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row">
                            <div class="col-6 tag-col">
                                <a href="tag?tag=phieu-luu"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Phiêu Lưu</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href="tag?tag=shounen"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Shounen</a>
                            </div>
                        </div>
                        <div class="row none-mp tag-row last-tag">
                            <div class="col-6 tag-col">
                                <a href="tag?tag=truyen-mau"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Truyện Màu</a>
                            </div>
                            <div class="col-6 tag-col">
                                <a href="tag?tag=xuyen-khong"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/tags-black.svg" alt="">Xuyên Không</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!--Ontop Button-->
    
            <button id="on-top" class="move-top" onclick="scrollToTop()"><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/arrow-alt-circle-up-regular.svg" alt=""></button>
    
    <!--Footer-->
    <footer class="footer">
        <div class="container">
                <div class="row">
                    <div class="col-4 col-footer">
                        <div><img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/index/logo-phattruyen-02.png" class="logo-footer"></div>
                        <p class="content-footer">Website đọc truyện online chất lượng cao. Mang đến cho bạn những trải nghiệm 
                            tuyệt vời nhất.</p>
                        <p>Cảm ơn bạn vì đã chọn <a href="${pageContext.request.contextPath}">Phatttruyen</a>!</p>

                    </div>
                    <div class="col-lg-4 col-footer">
                        <p class="title-footer">Về chúng tôi</p>
                        <p class="link-footer"><a href="">Giới thiệu</a></p>   
                        <p class="link-footer"><a href="">Điều khoản chính sách</a></p>     
                        <p class="link-footer"><a href="">Giải quyết khiếu nại, tranh chấp</a></p>    
                    </div>

                    <div class="col-lg-4 col-footer">
                        <p class="title-footer">Liên hệ với chúng tôi</p>
                        <p>Dữ liệu thu thập từ các nguồn công khai trên Internet. Nếu có nhu cầu liên hệ hoặc gỡ bỏ truyện hoặc 
                            khúc mắc gì có thể đọc thêm về chúng tôi.</p>
                        <p>
                            <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/phone-white.svg" alt="" class="icon-footer">
                            <a href="">08. 09289489</a>
                        </p>
                        <p>
                            <img src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/img/icon/envelope-open-text-white.svg" alt="" class="icon-footer">
                            <a class="text-mail" href="">phattruyen@gmail.com</a>
                        </p>
                    </div>

                </div>
        </div>
        <div class="copy-right">
            Trường Đại Học Công Nghệ Thông Tin - ĐHQG TP.HCM <br>
            @2021 POWERED BY PHATTRUYEN
        </div>
    </footer>
    
    <script type="text/javascript" src="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}/${pageContext.request.contextPath}/assets/js/myjs.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/vendor/jquery.slim.min.js"><\/script>')</script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>
    <script>

    function autocomplete(inp, arr) {
        
        var currentFocus;
        
        inp.addEventListener("input", function (e) {
            var a, b, i, val = this.value;
            /*close any already open lists of autocompleted values*/
            closeAllLists();
            if (!val) { return false; }
            currentFocus = -1;
            /*create a DIV element that will contain the items (values):*/
            a = document.createElement("DIV");
            a.setAttribute("id", this.id + "autocomplete-list");
            a.setAttribute("class", "autocomplete-items suggest-comic");
            /*append the DIV element as a child of the autocomplete container:*/
            this.parentNode.appendChild(a);
            /*for each item in the array...*/
            
            for (i = 0; i < arr.length; i++) {
                /*check if the item starts with the same letters as the text field value:*/
                if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                    /*create a DIV element for each matching element:*/
                    b = document.createElement("DIV");
                    /*make the matching letters bold:*/
                    b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                    b.innerHTML += arr[i].substr(val.length);
                    /*insert a input field that will hold the current array item's value:*/
                    b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                    /*execute a function when someone clicks on the item value (DIV element):*/
                    
                    b.addEventListener("click", function (e) {
                        /*insert the value for the autocomplete text field:*/
                        inp.value = this.getElementsByTagName("input")[0].value;
                        /*close the list of autocompleted values,
                        (or any other open lists of autocompleted values:*/
                        closeAllLists();
                    });
                    a.appendChild(b);
                }
                
            }
            console.log(inp)
        });
        /*execute a function presses a key on the keyboard:*/
        inp.addEventListener("keydown", function (e) {
            var x = document.getElementById(this.id + "autocomplete-list");
            if (x) x = x.getElementsByTagName("div");
            if (e.keyCode == 40) {
                /*If the arrow DOWN key is pressed,
                increase the currentFocus variable:*/
                currentFocus++;
                /*and and make the current item more visible:*/
                addActive(x);
            } else if (e.keyCode == 38) { //up
                /*If the arrow UP key is pressed,
                decrease the currentFocus variable:*/
                currentFocus--;
                /*and and make the current item more visible:*/
                addActive(x);
            } else if (e.keyCode == 13) {
                /*If the ENTER key is pressed, prevent the form from being submitted,*/
                e.preventDefault();
                if (currentFocus > -1) {
                    /*and simulate a click on the "active" item:*/
                    if (x) x[currentFocus].click();
                }
            }
        });
        function addActive(x) {
            /*a function to classify an item as "active":*/
            if (!x) return false;
            /*start by removing the "active" class on all items:*/
            removeActive(x);
            if (currentFocus >= x.length) currentFocus = 0;
            if (currentFocus < 0) currentFocus = (x.length - 1);
            /*add class "autocomplete-active":*/
            x[currentFocus].classList.add("autocomplete-active");
        }
        function removeActive(x) {
            /*a function to remove the "active" class from all autocomplete items:*/
            for (var i = 0; i < x.length; i++) {
                x[i].classList.remove("autocomplete-active");
            }
        }
        function closeAllLists(elmnt) {
            /*close all autocomplete lists in the document,
            except the one passed as an argument:*/
            var x = document.getElementsByClassName("autocomplete-items");
            for (var i = 0; i < x.length; i++) {
                if (elmnt != x[i] && elmnt != inp) {
                    x[i].parentNode.removeChild(x[i]);
                }
            }
        }
        /*execute a function when someone clicks in the document:*/
        document.addEventListener("click", function (e) {
            closeAllLists(e.target);
        });
    }

//    let dataUsers = [
//    {title: "abc"}, {title: "adb"}, {title: "bcs"}]
    
    


    $(document).ready(async function (){
        let dataUsers = [];

         axios.get('http://localhost:8080/webtruyentranh/api/comics')
        .then(function (response){
            var data = [];
            
            response.data.forEach((x,i) => {
                data[i] = x;
                //console.log(x);
            });
            dataUsers = data;
            
            console.log(dataUsers);
            autocomplete(document.getElementById("searchNameComics"), dataUsers.map(x => {return x.title;}));
            
            

            
        })
        .catch(function (error) {console.log(error);});
        
        
    });
    
    </script>
</body>
</html>