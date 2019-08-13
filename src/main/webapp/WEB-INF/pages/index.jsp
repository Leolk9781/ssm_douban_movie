<%--
  Created by IntelliJ IDEA.
  User: neustu
  Date: 2019/8/13
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <link href="../../asset/css/mui.min.css" rel="stylesheet" />
    <link href="../../asset/css/style.css" rel="stylesheet" />

</head>

<body>
<header class="mui-bar mui-bar-nav" style="padding-right: 15px;">
    <div class="mui-input-row mui-search">
        <input type="search" class="mui-input-clear" placeholder="搜索感兴趣的电影名">
    </div>
</header>
<div class="mui-content">
    <div id="slider" class="mui-slider" >
        <div class="mui-slider-group mui-slider-loop">
            <!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
            <div class="mui-slider-item mui-slider-item-duplicate">
                <a href="#">
                    <img src="http:\/\/placehold.it\/400x300">
                </a>
            </div>
            <!-- 第一张 -->
            <div class="mui-slider-item">
                <a href="#">
                    <img src="http:\/\/placehold.it\/400x300">
                </a>
            </div>
            <!-- 第二张 -->
            <div class="mui-slider-item">
                <a href="#">
                    <img src="http:\/\/placehold.it\/400x300">
                </a>
            </div>
            <!-- 第三张 -->
            <div class="mui-slider-item">
                <a href="#">
                    <img src="http:\/\/placehold.it\/400x300">
                </a>
            </div>
            <!-- 第四张 -->
            <div class="mui-slider-item">
                <a href="#">
                    <img src="http:\/\/placehold.it\/400x300">
                </a>
            </div>
            <!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
            <div class="mui-slider-item mui-slider-item-duplicate">
                <a href="#">
                    <img src="http:\/\/placehold.it\/400x300">
                </a>
            </div>
        </div>
        <div class="mui-slider-indicator">
            <div class="mui-indicator mui-active"></div>
            <div class="mui-indicator"></div>
            <div class="mui-indicator"></div>
            <div class="mui-indicator"></div>
        </div>
    </div>
    <ul class="mui-table-view">
        <li class="mui-table-view-cell mui-media">
            <a href="javascript:;">
                <img class="mui-media-object mui-pull-left" src="">
                <div class="mui-media-body">
                    幸福
                    <p class="mui-ellipsis">能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？</p>
                </div>
            </a>
        </li>
        <li class="mui-table-view-cell mui-media">
            <a href="javascript:;">
                <img class="mui-media-object mui-pull-left" src="">
                <div class="mui-media-body">
                    木屋
                    <p class="mui-ellipsis">想要这样一间小木屋，夏天挫冰吃瓜，冬天围炉取暖.</p>
                </div>
            </a>
        </li>
        <li class="mui-table-view-cell mui-media">
            <a href="javascript:;">
                <img class="mui-media-object mui-pull-left" src="">
                <div class="mui-media-body">
                    CBD
                    <p class="mui-ellipsis">烤炉模式的城，到黄昏，如同打翻的调色盘一般.</p>
                </div>
            </a>
        </li>
    </ul>
    <ul class="mui-table-view mui-grid-view">
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
            <a href="#">
                <img class="mui-media-object" src="http://placehold.it/400x300">
                <div class="mui-media-body">文字说明1</div>
            </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
            <a href="#">
                <img class="mui-media-object" src="http://placehold.it/400x300">
                <div class="mui-media-body">文字说明2</div>
            </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
            <a href="#">
                <img class="mui-media-object" src="http://placehold.it/400x300">
                <div class="mui-media-body">文字说明2</div>
            </a>
        </li>
        <li class="mui-table-view-cell mui-media mui-col-xs-6">
            <a href="#">
                <img class="mui-media-object" src="http://placehold.it/400x300">
                <div class="mui-media-body">文字说明2</div>
            </a>
        </li>
    </ul>
</div>
<div class="mui-footer">
    <footer>
        <nav class="mui-bar mui-bar-tab">
            <a class="mui-tab-item mui-active">
                <span class="mui-icon mui-icon-home"></span>
                <span class="mui-tab-label">首页</span>
            </a>
            <a class="mui-tab-item">
                <span class="mui-icon mui-icon-phone"></span>
                <span class="mui-tab-label">电话</span>
            </a>
            <a class="mui-tab-item">
                <span class="mui-icon mui-icon-email"></span>
                <span class="mui-tab-label">邮件</span>
            </a>
            <a class="mui-tab-item">
                <span class="mui-icon mui-icon-gear"></span>
                <span class="mui-tab-label">设置</span>
            </a>
        </nav>
    </footer>
</div>
<script src="../../asset/js/mui.min.js"></script>
<script src="../../asset/js/app.js"></script>
<script>
    (function($, doc) {
        $.init();
        var settings = app.getSettings();
        var account = doc.getElementById('account');
        //
        window.addEventListener('show', function() {
            var state = app.getState();
            account.innerText = state.account;
        }, false);
        $.plusReady(function() {
            var settingPage = $.preload({
                "id": 'setting',
                "url": 'setting.html'
            });
            //设置
            var settingButton = doc.getElementById('setting');
            //settingButton.style.display = settings.autoLogin ? 'block' : 'none';
            settingButton.addEventListener('tap', function(event) {
                $.openWindow({
                    id: 'setting',
                    show: {
                        aniShow: 'pop-in'
                    },
                    styles: {
                        popGesture: 'hide'
                    },
                    waiting: {
                        autoShow: false
                    }
                });
            });
            //--
            $.oldBack = mui.back;
            var backButtonPress = 0;
            $.back = function(event) {
                backButtonPress++;
                if (backButtonPress > 1) {
                    plus.runtime.quit();
                } else {
                    plus.nativeUI.toast('再按一次退出应用');
                }
                setTimeout(function() {
                    backButtonPress = 0;
                }, 1000);
                return false;
            };
        });
    }(mui, document));
</script>
</body>

</html>
