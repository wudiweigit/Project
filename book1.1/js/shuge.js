/**
 * Created by bjwsl-001 on 2017/4/13.
 */

var app = angular.module('shuge', ['ionic']);


//防抖动
app.factory('$debounce', ['$rootScope', '$browser', '$q', '$exceptionHandler',
    function ($rootScope, $browser, $q, $exceptionHandler) {
        var deferreds = {},
            methods = {},
            uuid = 0;

        function debounce(fn, delay, invokeApply) {
            var deferred = $q.defer(),
                promise = deferred.promise,
                skipApply = (angular.isDefined(invokeApply) && !invokeApply),
                timeoutId, cleanup,
                methodId, bouncing = false;

            // check we dont have this method already registered
            angular.forEach(methods, function (value, key) {
                if (angular.equals(methods[key].fn, fn)) {
                    bouncing = true;
                    methodId = key;
                }
            });

            // not bouncing, then register new instance
            if (!bouncing) {
                methodId = uuid++;
                methods[methodId] = {fn: fn};
            } else {
                // clear the old timeout
                deferreds[methods[methodId].timeoutId].reject('bounced');
                $browser.defer.cancel(methods[methodId].timeoutId);
            }

            var debounced = function () {
                // actually executing? clean method bank
                delete methods[methodId];

                try {
                    deferred.resolve(fn());
                } catch (e) {
                    deferred.reject(e);
                    $exceptionHandler(e);
                }

                if (!skipApply) $rootScope.$apply();
            };

            timeoutId = $browser.defer(debounced, delay);

            // track id with method
            methods[methodId].timeoutId = timeoutId;

            cleanup = function (reason) {
                delete deferreds[promise.$$timeoutId];
            };

            promise.$$timeoutId = timeoutId;
            deferreds[timeoutId] = deferred;
            promise.then(cleanup, cleanup);

            return promise;
        }


        // similar to angular's $timeout cancel
        debounce.cancel = function (promise) {
            if (promise && promise.$$timeoutId in deferreds) {
                deferreds[promise.$$timeoutId].reject('canceled');
                return $browser.defer.cancel(promise.$$timeoutId);
            }
            return false;
        };

        return debounce;
    }
]);



//自定义服务
app.service('$customHttp', ['$http', '$ionicLoading',
    function ($http, $ionicLoading) {
        this.get = function (url, handleSucc) {
            $ionicLoading.show({
                template: 'loading....'
            })
            $http
                .get(url)
                .success(function (data) {
                    $ionicLoading.hide();
                    handleSucc(data);
                })

        }
    }
])


//创建指令ionic中隐藏tabs(tabs-item-hide)
app.directive('hideTabs',function($rootScope){
    return {
        restrict:'AE',
        link:function($scope){
            $rootScope.hideTabs = 'tabs-item-hide';
            $scope.$on('$destroy',function(){
                $rootScope.hideTabs = '';
            })
        }
    }
})



//配置状态
app.config(function ($stateProvider, $urlRouterProvider) {
    $stateProvider
        .state('start', {
            url: '/sgStart',
            templateUrl: 'tpl/start.html',
            controller: 'startCtrl'
        })
        .state('main', {
            url: '/sgMain',
            templateUrl: 'tpl/main.html',
            controller: 'mainCtrl'
        })
        .state('rack', {
            url: '/sgRack',
            templateUrl: 'tpl/rack.html',
            controller:'rackCtrl'
        })
        .state('cart', {
            url: '/sgCart',
            templateUrl: 'tpl/cart.html',
            controller:'cartCtrl'

        })
        .state('setting', {
            url: '/sgSetting',
            templateUrl: 'tpl/settings.html',
            controller: 'settingCtrl'
        })
        //配置[发现]
        .state('detail', {
            url: '/sgDetail/:id',
            templateUrl: 'tpl/detail.html',
            controller: 'detailCtrl'
        })
        .state('detail_img', {
            url: '/sgDetail_img/:mid',
            templateUrl: 'tpl/detail_img.html',
            controller: 'detail_imgCtrl'
        })
        .state('detail_imgs', {
            url: '/sgDetail_imgs/:mid',
            templateUrl: 'tpl/detail_imgs.html',
            controller: 'detail_imgsCtrl'
        })


        //配置[书架]
        .state('rack_detail',{
            url:'/sgRack_detail/:rid',
            templateUrl:'tpl/rack_detail.html',
            controller: 'rack_detailCtrl'

        })
        .state('order',{
            url:'/sgOrder/:cartDetail',
            templateUrl:'tpl/order.html',
            controller:'orderCtrl'
        })
        .state('myOrder',{
            url:'/sgMyOrder',
            templateUrl:'tpl/myOrder.html',
            controller:'myOrderCtrl'
        })


    $urlRouterProvider.otherwise('/sgStart');
})


//创建父控制器
app.controller('parentCtrl', ['$scope', '$state','$rootScope',
    function ($scope, $state,$rootScope) {

        //初始化购物车badge数量为0
        $scope.data = {totalNumInCart:0}

        //初始化标题为空
        $scope.titleNow="";

        $scope.jump = function (desState, argument) {
            //点击进行跳转
            $state.go(desState, argument)
            console.log(desState)
            //动态生成页头
            $scope.titleNow = argument;
        }


        //获取detail_mgs.html图片点击的下标并传给detail_img.html中的slectIndex
        $scope.go=function(index){
            $rootScope.slectIndex=index-1;
            console.log($scope.slectIndex)
            $scope.slideChanged($rootScope.slectIndex)
        }

        //header头部动态获取滑动时图片的下标
        $scope.$watch('slectIndex',function(){
            if($scope.slectIndex==null){
                $scope.slectIndex=1;
            }else{
                $scope.slideChanged=function(index){
                    console.log(index);
                    $scope.slectIndex=index+1;
                    console.log($scope.slectIndex);
                }
            }

        })
    }])


app.controller('startCtrl',
    ['$scope','$state','$interval','$timeout',
        function($scope,$state,$interval,$timeout){
            $timeout(function(){
                $state.go('main');
            },5000)
            $scope.waitNumber = 5;
            $interval(function () {
                if($scope.waitNumber > 0) {
                    $scope.waitNumber--;
                }
            },1000);
}])
                                    //发现
app.controller('mainCtrl',
    ['$scope', '$customHttp','$timeout',
        function ($scope, $customHttp,$timeout) {

            //是否有更多数据可以加载
            $scope.hasMore = true;

            //发起网络请求，初始化一些数据
            $customHttp.get(
                'data/title_getbypage.php',
                function (data) {
                    console.log(data);
                    $scope.titleList = data;
                })


            //加载更多的方法
            $timeout($scope.loadMore = function () {
                $customHttp.get(
                    'data/title_getbypage.php?start=' + $scope.titleList.length,
                    function (data) {
                        if (data.length < 2) {
                            $scope.hasMore = false;
                        }
                        $scope.titleList = $scope.titleList.concat(data);
                        $scope.$broadcast('scroll.infiniteScrollComplete');
                    }
                )
            },500)

        }])


app.controller('detailCtrl',
    ['$scope', '$stateParams', '$customHttp','$rootScope','$timeout','$ionicSlideBoxDelegate',
        function ($scope, $stateParams, $customHttp,$rootScope,$timeout,$ionicSlideBoxDelegate) {
            //console.log($stateParams)

            //延后加载后重新更新服务
            $timeout(function(){
                $ionicSlideBoxDelegate.$getByHandle('slideimgs').update();
            } , 500);

            $customHttp.get(
                'data/title_getbydid.php?id=' + $stateParams.id,
                function (data) {
                    //console.log(data);

                    $scope.dish = data.titleItems[0];
                    $scope.carousel = data.carouselItems;

                    //console.log($scope.dish);
                    //console.log($scope.carousel);
                    //接收跳转的id
                    $rootScope.did=$scope.dish.did;
                    //console.log($rootScope.did);
                }
            )

        }
    ])

app.controller('detail_imgCtrl', ['$scope', '$customHttp', '$stateParams','$timeout','$ionicSlideBoxDelegate',
    function ($scope, $customHttp, $stateParams,$timeout,$ionicSlideBoxDelegate) {
        //console.log($stateParams)

        //延后加载后重新更新服务
         $timeout(function(){
            $ionicSlideBoxDelegate.$getByHandle('slideimgs').update();

         } , 500);

        $customHttp.get(
            'data/img_getbypage.php?mid=' + $stateParams.mid,
            function (data) {
               // console.log(data);
                $scope.len=data[0].length;
                $scope.img_list = data[0];
                //console.log($scope.img_list)

            }
        )

    }
])


app.controller('detail_imgsCtrl', ['$scope', '$customHttp','$stateParams',
    function ($scope, $customHttp,$stateParams) {
        console.log($stateParams)

        $customHttp.get(
            'data/imgs_getbypage.php?mid='+$stateParams.mid,
            function (data) {
                console.log(data);
                $scope.len=data[0].length;
                $scope.imgs_list = data[0];
                console.log($scope.imgs_list);
            }
        )
    }
])



app.controller('header_imgCtrl', ['$scope', '$customHttp','$stateParams',
    function ($scope, $customHttp,$stateParams) {
        return $stateParams
    }
])



                                       //书架
app.controller('rackCtrl',['$scope','$customHttp','$debounce',
    function($scope,$customHttp,$debounce){

        //是否有更多数据可以加载
        $scope.hasMore = true;



        //发起网络请求，初始化一些数据
        $customHttp.get(
            'data/rack_getbypage.php',
            function(data){
                $scope.r_box=data;
                console.log($scope.r_box)
            }
        )
        //加载更多的方法
        $scope.loadMore = function () {
            $customHttp.get(
                'data/rack_getbypage.php?start=' + $scope.r_box.length,
                function (data) {
                    if (data.length < 13) {
                        $scope.hasMore = false;
                    }
                    $scope.titleList = $scope.titleList.concat(data);
                    $scope.$broadcast('scroll.infiniteScrollComplete');
                }
            )
        }


        //监听用户的输入 搜索 将结果显示出来
        $scope.inputTxt={kw:''};
        $scope.$watch('inputTxt.kw',function(){
            $debounce(handleSearch,300);
        })
        handleSearch=function(){
            if($scope.inputTxt.kw){
                $customHttp.get(
                    'data/title_getbykw.php?kw='+$scope.inputTxt.kw,
                    function(data){
                        $scope.r_box=data;
                    }
                )
            }
        }
    }
])


app.controller('rack_detailCtrl',[
    '$scope','$customHttp','$stateParams','$ionicPopup','$timeout','$ionicSlideBoxDelegate',
    function($scope,$customHttp,$stateParams,$ionicPopup,$timeout,$ionicSlideBoxDelegate){
        //延后加载后重新更新服务
        $timeout(function(){
            $ionicSlideBoxDelegate.$getByHandle('slideimgs').update();

        } , 500);
        $customHttp.get(
            'data/rack_getbydid.php?rid='+$stateParams.rid,
            function(data){

                $scope.r_box=data.r_tableItems[0];

                $scope.r_carousel=data.r_carouselItems;
                console.log($scope.r_box)
                console.log($scope.r_carousel)
            }
        )


        //添加到购物车
        $scope.addToCart = function () {
            $customHttp.get(
                'data/cart_update.php?uid=1&r_id='
                + $scope.r_box.r_id + "&count=-1",
                function (data) {
                    console.log(data);
                    if (data.msg == 'succ') {

                        //当添加购物车成功,总数数量自增
                        $scope.data.totalNumInCart++;

                        //弹出窗口
                        $ionicPopup.alert({
                            template: '添加到购物车成功！'
                        })
                    }
                }
            )

        }
    }])


app.controller('orderCtrl',
    ['$scope',
        '$stateParams',
        '$httpParamSerializerJQLike',
        '$customHttp',
        function ($scope,
                  $stateParams,
                  $httpParamSerializerJQLike,
                  $customHttp) {

            console.log($stateParams.cartDetail);

            //初始化总价为0
            var totalPrice = 0;
            //遍历
            angular.forEach(
                //将其序列化为数组
                angular.fromJson($stateParams.cartDetail),
                function (value, key) {
                    totalPrice += (value.r_price * value.dishCount);
                }
            )
            /**  接收购物车中的订单详情
             userid-用户ID，必需
             phone-手机号，必需
             user_name-联系人名称，必需
             addr-送餐地址，必需
             totalprice-总价，必需
             cartDetail-购物车详情
             **/
            $scope.order =
            {
                userid: 1,
                cartDetail: $stateParams.cartDetail,
                totalprice: totalPrice
            };


            $scope.submitOrder = function () {

                var result = $httpParamSerializerJQLike($scope.order)
                $customHttp.get(
                    'data/order_add.php?' + result,
                    function (data) {
                        console.log(data);
                        //  根据服务器返回的结果对表单处理
                        if (data[0].msg = 'succ') {
                            $scope.result = "下单成功，订单编号为" + data[0].oid;

                            //下单成功将购物车totalNumInCart赋值为0
                            $scope.data.totalNumInCart = 0;
                        }
                        else {
                            $scope.result = "下单失败！";
                        }
                    }
                )
            }
        }
    ])

app.controller('myOrderCtrl',
    ['$scope', '$customHttp',
        function ($scope, $customHttp) {

            //初始化为false
            $scope.deleteEnable=false;
            $scope.deleteShowMsg="删除";
            $scope.funcDelete=function(){
                $scope.deleteEnable=!$scope.deleteEnable;
                if($scope.deleteEnable){
                    $scope.deleteShowMsg="完成";
                }else{
                    $scope.deleteShowMsg="删除";
                }
            }
            $scope.deleteItem = function (index) {


                $customHttp
                    .get(
                    'data/cart_update.php?uid=1&did=' +
                    $scope.dishList[index].did + "&count=-2",
                    function (data) {
                        console.log(data);
                        $scope.dishList.splice(index, 1);

                        //调用updateTotalNum方法对数据进行更新
                        updateTotalNum()
                    }
                )

            }

            $customHttp.get(
                'data/order_getbyuserid.php?userid=1',
                function (dataFromServer) {
                    console.log(dataFromServer);
                    $scope.orderList = dataFromServer.data;
                }
            )
        }
    ]
)

                            //购物车
app.controller('cartCtrl',['$scope','$customHttp',
    function($scope,$customHttp){

       //初始化编辑为false
       $scope.editEnable=false;
       $scope.editShowMsg="编辑";

       $scope.funcEdit=function(){
           $scope.enditEnable=!$scope.enditEnable;
           if($scope.enditEnable){
               $scope.editShowMsg="完成";
           }else{
               $scope.editShowMsg="编辑";
           }
       }

        //初始化删除为false
        $scope.deleteEnable = false;
        $scope.deleteShowMsg = "删除";
        $scope.funcDelete = function () {
            $scope.deleteEnable = !$scope.deleteEnable;
            if ($scope.deleteEnable) {
                $scope.deleteShowMsg = "完成";
            }
            else {
                $scope.deleteShowMsg = "删除";
            }
        }

       $scope.deleteItem=function(index){
           $customHttp.get(
               'data/cart_update.php?uid=1&r_id='+
               $scope.cartList[index].r_id+"&count=-2",
               function(data){
                   $scope.cartList.splice(index,1)

                   //调用updateTotalNum方法对数据进行更新
                   updateTotalNum()
               }
           )
       }

        //定义一个updateTotalNum方法对购物车数据进行实时更新
        $scope.hasHide=true
       updateTotalNum=function(){
            //在进入购物车页面时，将服务器返回的所有的数据的数量累加，赋值给totalNumInCart
           if($scope.data.totalNumInCart=0){
               $scope.hasHide=!$scope.hasHide
           }else{
               angular.forEach($scope.cartList,function(value,key){
                   $scope.data.totalNumInCart+=parseInt(value.dishCount);
               })
           }
       }

       $customHttp.get(
           'data/cart_select.php?uid=1',
           function(dataFromServer){
               console.log(dataFromServer)
               //接收服务器中返回的数据存在一个变量中
               $scope.cartList = dataFromServer.data;
               console.log( $scope.cartList)

               //调用updateTotalNum方法对数据进行更新
               updateTotalNum()
           }
       )

       $scope.sumAll = function(){
           //初始化总价为0
           var totalPrice = 0;
           //遍历列表中的价格
           angular.forEach($scope.cartList,
               function(value,key){
                   totalPrice+=(value.r_price * value.dishCount);
               }
           )
           return totalPrice;
       }


        //点击了购物车的增加按钮
        $scope.add = function (index) {

            $scope.cartList[index].dishCount++;

            $customHttp.get(
                'data/cart_update.php?uid=1&r_id='
                + $scope.cartList[index].r_id + '&count='
                + $scope.cartList[index].dishCount,
                function (dataFromServer) {
                    console.log(dataFromServer);

                    //调用updateTotalNum方法对数据进行更新
                    updateTotalNum()
                }
            )
        }

        //点击了购物车减少按钮
        $scope.minus = function (index) {
            $scope.cartList[index].dishCount--;
            if ($scope.cartList[index].dishCount == 0) {
                $scope.cartList[index].dishCount = 1;
            }
            else {
                $customHttp.get(
                    'data/cart_update.php?uid=1&r_id='
                    + $scope.cartList[index].r_id + '&count='
                    + $scope.cartList[index].dishCount,
                    function (dataFromServer) {
                        console.log(dataFromServer);

                        //调用updateTotalNum方法对数据进行更新
                        updateTotalNum()
                    }
                )
            }


        }


        $scope.jumpToOrder=function(){
            //将数组序列化为json对象
            var result=angular.toJson($scope.cartList)
            //跳转order.html,接收购物车详情
            $scope.jump('order',{cartDetail:result})
        }


    }
])



                            //设置
app.controller('settingCtrl',
    ['$scope', '$ionicModal',
        function ($scope, $ionicModal) {

            //得到模态框对应的实例
            $ionicModal
                .fromTemplateUrl('tpl/about.html', {
                    scope: $scope
                }
            ).then(function (modal) {
                    $scope.modal = modal;
                })

            //通过$ionicModal显示一个自定义模态窗
            $scope.open = function () {
                $scope.modal.show();
            }

            //关闭模态窗
            $scope.close = function () {
                $scope.modal.hide();
            }
        }
    ])


























