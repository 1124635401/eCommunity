import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import yuangong from '@/views/modules/yuangong/list'
    import baoxiuxinxi from '@/views/modules/baoxiuxinxi/list'
    import yezhu from '@/views/modules/yezhu/list'
    import jiaofeixinxi from '@/views/modules/jiaofeixinxi/list'
    import tousuchuli from '@/views/modules/tousuchuli/list'
    import louyuxinxi from '@/views/modules/louyuxinxi/list'
    import baoxiuchuli from '@/views/modules/baoxiuchuli/list'
    import gonggaoxinxi from '@/views/modules/gonggaoxinxi/list'
    import tousuxinxi from '@/views/modules/tousuxinxi/list'
    import yijianfankui from '@/views/modules/yijianfankui/list'
    import jiaoliuxinxi from '@/views/modules/jiaoliuxinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/yuangong',
        name: '员工',
        component: yuangong
      }
      ,{
	path: '/baoxiuxinxi',
        name: '报修信息',
        component: baoxiuxinxi
      }
      ,{
	path: '/yezhu',
        name: '业主',
        component: yezhu
      }
      ,{
	path: '/jiaofeixinxi',
        name: '缴费信息',
        component: jiaofeixinxi
      }
      ,{
	path: '/tousuchuli',
        name: '投诉处理',
        component: tousuchuli
      }
      ,{
	path: '/louyuxinxi',
        name: '楼宇信息',
        component: louyuxinxi
      }
      ,{
	path: '/baoxiuchuli',
        name: '报修处理',
        component: baoxiuchuli
      }
      ,{
	path: '/gonggaoxinxi',
        name: '公告信息',
        component: gonggaoxinxi
      }
      ,{
	path: '/tousuxinxi',
        name: '投诉信息',
        component: tousuxinxi
      }
      ,{
	path: '/yijianfankui',
        name: '意见反馈',
        component: yijianfankui
      }
      ,{
	path: '/jiaoliuxinxi',
        name: '交流信息',
        component: jiaoliuxinxi
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
