<template>
<div class="content" :style='{"padding":"30px"}'>
	<div class="text" :style='{"margin":"50px auto","fontSize":"24px","color":"rgb(51, 51, 51)","textAlign":"center","fontWeight":"bold"}'>欢迎使用 {{this.$project.projectName}}</div>
    <div class="cardView">
        <div class="cards" :style='{"margin":"0 0 20px 0","alignItems":"center","justifyContent":"center","display":"flex"}'>
			<div :style='{"margin":"0 10px","backgroundSize":"100% 100%","borderRadius":"4px","backgroundImage":"url(http://codegen.caihongy.cn/20220723/4d7db0e7023e4771b17f359d29c6bd9c.png)","display":"flex"}' v-if="isAuth('jiaofeixinxi','首页总数')">
				<div :style='{"background":"red"}'></div>
				<div :style='{"width":"220px","padding":"5px 0 5px 30px","alignItems":"center","flexDirection":"column","justifyContent":"center","display":"flex"}'>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"20px","color":"#333","fontWeight":"bold","height":"24px"}'>{{jiaofeixinxiCount}}</div>
					<div :style='{"margin":"5px 0","lineHeight":"24px","fontSize":"16px","color":"#666","height":"24px"}'>缴费信息总数</div>
				</div>
			</div>
        </div>
        <div style="display: flex;align-items: center;width: 100%;margin-bottom: 10px;">
            <el-card style="width: 33.3%;margin: 0 10px;" v-if="isAuth('jiaofeixinxi','首页统计')">
                <div id="jiaofeixinxiChart1" style="width:100%;height:400px;"></div>
            </el-card>
            <el-card style="width: 33.3%;margin: 0 10px;" v-if="isAuth('jiaofeixinxi','首页统计')">
                <div id="jiaofeixinxiChart2" style="width:100%;height:400px;"></div>
            </el-card>
            <el-card style="width: 33.3%;margin: 0 10px;" v-if="isAuth('jiaofeixinxi','首页统计')">
                <div id="jiaofeixinxiChart3" style="width:100%;height:400px;"></div>
            </el-card>
        </div>
    </div>
</div>
</template>
<script>
//3
import router from '@/router/router-static'
import * as echarts from 'echarts'
export default {
	data() {
		return {
            jiaofeixinxiCount: 0,
		};
	},
  mounted(){
    this.init();
    this.getjiaofeixinxiCount();
    this.jiaofeixinxiChat1();
    this.jiaofeixinxiChat2();
    this.jiaofeixinxiChat3();
  },
  methods:{
    init(){
        if(this.$storage.get('Token')){
        this.$http({
            url: `${this.$storage.get('sessionTable')}/session`,
            method: "get"
        }).then(({ data }) => {
            if (data && data.code != 0) {
            router.push({ name: 'login' })
            }
        });
        }else{
            router.push({ name: 'login' })
        }
    },
    getjiaofeixinxiCount() {
        this.$http({
            url: `jiaofeixinxi/count`,
            method: "get"
        }).then(({
            data
        }) => {
            if (data && data.code == 0) {
                this.jiaofeixinxiCount = data.data
            }
        })
    },

    jiaofeixinxiChat1() {
      this.$nextTick(()=>{

        var jiaofeixinxiChart1 = echarts.init(document.getElementById("jiaofeixinxiChart1"),'dark-fresh-cut');
        this.$http({
            url: "jiaofeixinxi/group/jiaofeileixing",
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].jiaofeileixing);
                    yAxis.push(parseFloat((res[i].total)));
                    pArray.push({
                        value: parseFloat((res[i].total)),
                        name: res[i].jiaofeileixing
                    })
                }
                var option = {};
                option = {
                        title: {
                            text: '缴费类型统计',
                            left: 'center'
                        },
                        tooltip: {
                          trigger: 'item',
                          formatter: '{b} : {c} ({d}%)'
                        },
                        series: [
                            {
                                type: 'pie',
                                radius: ['25%', '55%'],
                                center: ['50%', '60%'],
                                data: pArray,
                                emphasis: {
                                    itemStyle: {
                                        shadowBlur: 10,
                                        shadowOffsetX: 0,
                                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                                    }
                                }
                            }
                        ]
                };
                // 使用刚指定的配置项和数据显示图表。
                jiaofeixinxiChart1.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    jiaofeixinxiChart1.resize();
                };
            }
        });
      })
    },

    jiaofeixinxiChat2() {
      this.$nextTick(()=>{
        //  jiaofeijine
        // yonghuming yonghuming

        var jiaofeixinxiChart2 = echarts.init(document.getElementById("jiaofeixinxiChart2"),'dark-fresh-cut');
        this.$http({
            url: `jiaofeixinxi/value/yonghuming/jiaofeijine`,
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].yonghuming);
                    yAxis.push(parseFloat((res[i].total)));
                    pArray.push({
                        value: parseFloat((res[i].total)),
                        name: res[i].yonghuming
                    })
                }
                var option = {};
                option = {
                    title: {
                        text: '业主缴费统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                jiaofeixinxiChart2.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    jiaofeixinxiChart2.resize();
                };
            }
        });
      })
    },

    jiaofeixinxiChat3() {
      this.$nextTick(()=>{
        //  jiaofeijine
        // jiaofeiriqi jiaofeiriqi

        var jiaofeixinxiChart3 = echarts.init(document.getElementById("jiaofeixinxiChart3"),'dark-fresh-cut');
        this.$http({
            url: `jiaofeixinxi/value/jiaofeiriqi/jiaofeijine/月`,
            method: "get",
        }).then(({ data }) => {
            if (data && data.code === 0) {
                let res = data.data;
                let xAxis = [];
                let yAxis = [];
                let pArray = []
                for(let i=0;i<res.length;i++){
                    xAxis.push(res[i].jiaofeiriqi);
                    yAxis.push(parseFloat((res[i].total)));
                    pArray.push({
                        value: parseFloat((res[i].total)),
                        name: res[i].jiaofeiriqi
                    })
                }
                var option = {};
                option = {
                    title: {
                        text: '每月缴费统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        boundaryGap: false,
                        data: xAxis
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'line',
                        areaStyle: {},
                        smooth: true
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                jiaofeixinxiChart3.setOption(option);
                  //根据窗口的大小变动图表
                window.onresize = function() {
                    jiaofeixinxiChart3.resize();
                };
            }
        });
      })
    },




  }
};
</script>
<style lang="scss" scoped>
    .cardView {
        display: flex;
        flex-wrap: wrap;
        width: 100%;

        .cards {
            display: flex;
            align-items: center;
            width: 100%;
            margin-bottom: 10px;
            justify-content: center;
            .card {
                width: calc(25% - 20px);
                margin: 0 10px;
                /deep/.el-card__body{
                    padding: 0;
                }
            }
        }
    }
</style>
