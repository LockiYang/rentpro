<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!-- 广告 -->
        <div id="ad-slide" class="alert-dismissible pos-rel">

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>

                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="../static/imgs/f.jpg" alt="XXX">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="../static/imgs/e.jpg" alt="XXX">
                        <div class="carousel-caption">
                        </div>
                    </div>
                </div>
            </div>

            <button id="ad-slide-close-btn" type="button" class="close" data-dismiss="alert">
                <span aria-hidden="true">&times;</span>
                <span class="sr-only">Close</span>
            </button>
        </div>
        <!-- end 广告 -->

        <div class="row">
            <div class="col-xs-9">
                <!-- 地区选择 -->
                <div class="address-tab">
                    <ul>
                        <li><a href="#">南山</a>
                        </li>
                        <li class="active"><a href="#">罗湖</a>
                        </li>
                        <li><a href="#">保安</a>
                        </li>
                        <li><a href="#">福田</a>
                        </li>
                        <li><a href="#">龙华</a>
                        </li>
                    </ul>
                </div>
                <!-- end 地区选择 -->


                <!-- 信息列表 -->
                <div class="info-list">
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>
                            <div class="info-follow">
                                <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                                <p>已关注</p>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                                <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                             <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                                <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                               <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                               <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                               <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                              <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                               <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-xs-1" style="padding-right: 0px">
                            <div class="info-tips">
                                <p style="padding-top:15px;"><b>合租</b>
                                </p>
                            </div>

                            <div class="info-follow">
                               <button type="button" class="btn  btn-xs btn-primary">+关注</button>
                            </div>
                        </div>
                        <div class="col-xs-11">
                            <div class="info-main">
                                <div class="row">
                                    <div class="col-xs-9" style="padding-right: 0px">
                                        <div class="info-detail">
                                            <p class="info-title">白石洲三室一厅主卧出租（靠谱）</p>
                                            <div style="margin: 0 0 4px;">
                                                <i class="fa fa-user fa-sm">&nbsp;有翅膀的jing</i>
                                                <i class="fa fa-comments-o fa-sm">&nbsp;对话(10)</i>
                                                <i class="fa fa-eye fa-sm">&nbsp;关注(20)</i>
                                                <i class="fa fa-star-half-full fa-sm">&nbsp;中介指数(300)</i>
                                            </div>
                                            <div class="info-desc">
                                                房子采光很好，刚刚组的只要1000元就可以住这么爽的房子真的太赚了吧.房子采光很好，刚刚组的只要1000元就可以住这....
                                            </div>
                                            <div class="info-tags">
                                               <label class="label label-color">三室一厅</label>
											    <label class="label label-color">三室一厅</label>
												 <label class="label label-color">三室一厅</label>
												  <label class="label label-color">三室一厅</label>
                                            </div>
                                            <div class="fr">
                                                <i class="fa fa-university fa-sm">&nbsp;白石洲中景丽园</i> 
                                                <i class="fa fa-clock-o fa-sm">&nbsp;08-29 10:28</i> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-3" style="padding-left: 0px">
                                        <div class="info-imgs">
                                            <img src="http://i1.tietuku.com/fe1858160396fdc4.jpg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="tac">
                        <ul class="pagination">
                            <li><a href="#">&laquo;</a>
                            </li>
                            <li><a href="#">1</a>
                            </li>
                            <li><a href="#">2</a>
                            </li>
                            <li><a href="#">3</a>
                            </li>
                            <li><a href="#">4</a>
                            </li>
                            <li><a href="#">5</a>
                            </li>
                            <li><a href="#">&raquo;</a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- end 信息列表 -->
            </div>
            <div class="col-xs-3">
                <div class="login-side">
                    <a class="btn btn-success" href="#" style="display: block">我要出租</a>
                    <a class="btn btn-warning" href="#" style="display: block">我要找房</a>
                    <img src="../static/imgs/ad.png" style="width: 180px;margin:20px 0 30px 0;" />
                </div>
            </div>

        </div>