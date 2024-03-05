<template>
	<div class="addEdit-block" :style='{"padding":"0"}' style="width: 100%;">
		<el-form
			:style='{"width":"90%","padding":"30px","margin":"15px auto","borderRadius":"6px","flexWrap":"wrap","display":"flex"}'
			class="add-update-preview"
			ref="ruleForm"
			:model="ruleForm"
			:rules="rules"
			label-width="100px"
		>
			<template >
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-if="type!='info'" label="报修单号" prop="baoxiudanhao">
					<el-input v-model="ruleForm.baoxiudanhao" placeholder="报修单号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-else-if="ruleForm.baoxiudanhao" label="报修单号" prop="baoxiudanhao">
					<el-input v-model="ruleForm.baoxiudanhao" placeholder="报修单号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-if="type!='info'"  label="报修名称" prop="baoxiumingcheng">
					<el-input v-model="ruleForm.baoxiumingcheng" placeholder="报修名称" clearable  :readonly="ro.baoxiumingcheng"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' v-else class="input" label="报修名称" prop="baoxiumingcheng">
					<el-input v-model="ruleForm.baoxiumingcheng" placeholder="报修名称" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="select" v-if="type!='info'"  label="报修类型" prop="baomingleixing">
					<el-select :disabled="ro.baomingleixing" v-model="ruleForm.baomingleixing" placeholder="请选择报修类型" >
						<el-option
							v-for="(item,index) in baomingleixingOptions"
							v-bind:key="index"
							:label="item"
							:value="item">
						</el-option>
					</el-select>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' v-else class="input" label="报修类型" prop="baomingleixing">
					<el-input v-model="ruleForm.baomingleixing"
						placeholder="报修类型" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="upload" v-if="type!='info' && !ro.baoxiutupian" label="报修图片" prop="baoxiutupian">
					<file-upload
						tip="点击上传报修图片"
						action="file/upload"
						:limit="3"
						:multiple="true"
						:fileUrls="ruleForm.baoxiutupian?ruleForm.baoxiutupian:''"
						@change="baoxiutupianUploadChange"
					></file-upload>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="upload" v-else-if="ruleForm.baoxiutupian" label="报修图片" prop="baoxiutupian">
					<img v-if="ruleForm.baoxiutupian.substring(0,4)=='http'" class="upload-img" style="margin-right:20px;" v-bind:key="index" :src="ruleForm.baoxiutupian.split(',')[0]" width="100" height="100">
					<img v-else class="upload-img" style="margin-right:20px;" v-bind:key="index" v-for="(item,index) in ruleForm.baoxiutupian.split(',')" :src="$base.url+item" width="100" height="100">
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="date" v-if="type!='info'" label="报修日期" prop="baoxiuriqi">
					<el-date-picker
						format="yyyy 年 MM 月 dd 日"
						value-format="yyyy-MM-dd"
						v-model="ruleForm.baoxiuriqi" 
						type="date"
						:readonly="ro.baoxiuriqi"
						placeholder="报修日期"
					></el-date-picker> 
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-else-if="ruleForm.baoxiuriqi" label="报修日期" prop="baoxiuriqi">
					<el-input v-model="ruleForm.baoxiuriqi" placeholder="报修日期" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-if="type!='info'"  label="报修备注" prop="baoxiubeizhu">
					<el-input v-model="ruleForm.baoxiubeizhu" placeholder="报修备注" clearable  :readonly="ro.baoxiubeizhu"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' v-else class="input" label="报修备注" prop="baoxiubeizhu">
					<el-input v-model="ruleForm.baoxiubeizhu" placeholder="报修备注" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-if="type!='info'"  label="用户名" prop="yonghuming">
					<el-input v-model="ruleForm.yonghuming" placeholder="用户名" clearable  :readonly="ro.yonghuming"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' v-else class="input" label="用户名" prop="yonghuming">
					<el-input v-model="ruleForm.yonghuming" placeholder="用户名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-if="type!='info'"  label="手机" prop="shouji">
					<el-input v-model="ruleForm.shouji" placeholder="手机" clearable  :readonly="ro.shouji"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' v-else class="input" label="手机" prop="shouji">
					<el-input v-model="ruleForm.shouji" placeholder="手机" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-if="type!='info'"  label="楼号" prop="louhao">
					<el-input v-model="ruleForm.louhao" placeholder="楼号" clearable  :readonly="ro.louhao"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' v-else class="input" label="楼号" prop="louhao">
					<el-input v-model="ruleForm.louhao" placeholder="楼号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="input" v-if="type!='info'"  label="房号" prop="fanghao">
					<el-input v-model="ruleForm.fanghao" placeholder="房号" clearable  :readonly="ro.fanghao"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' v-else class="input" label="房号" prop="fanghao">
					<el-input v-model="ruleForm.fanghao" placeholder="房号" readonly></el-input>
				</el-form-item>
			</template>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' class="textarea" v-if="type!='info'" label="报修内容" prop="baoxiuneirong">
					<el-input
					  style="min-width: 200px; max-width: 600px;"
					  type="textarea"
					  :rows="8"
					  placeholder="报修内容"
					  v-model="ruleForm.baoxiuneirong" >
					</el-input>
				</el-form-item>
				<el-form-item :style='{"width":"45%","margin":"0 2% 16px 0","background":"none","display":"inline-block"}' v-else-if="ruleForm.baoxiuneirong" label="报修内容" prop="baoxiuneirong">
					<span :style='{"fontSize":"14px","lineHeight":"40px","color":"#333","fontWeight":"500","display":"inline-block"}'>{{ruleForm.baoxiuneirong}}</span>
				</el-form-item>
			<el-form-item :style='{"padding":"0","margin":"0"}' class="btn">
				<el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"40px","background":"rgba(255, 210, 156, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}'  v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
				<el-button :style='{"cursor":"pointer","border":"0","padding":"0","margin":"0","outline":"none","color":"#fff","borderRadius":"40px","background":"rgba(255, 210, 156, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
				<el-button :style='{"cursor":"pointer","border":"0","padding":"0","margin":"0","outline":"none","color":"#fff","borderRadius":"40px","background":"rgba(255, 210, 156, 1)","width":"128px","lineHeight":"40px","fontSize":"14px","height":"40px"}' v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
			</el-form-item>
		</el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
	data() {
		let self = this
		var validateIdCard = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!checkIdCard(value)) {
				callback(new Error("请输入正确的身份证号码"));
			} else {
				callback();
			}
		};
		var validateUrl = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isURL(value)) {
				callback(new Error("请输入正确的URL地址"));
			} else {
				callback();
			}
		};
		var validateMobile = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isMobile(value)) {
				callback(new Error("请输入正确的手机号码"));
			} else {
				callback();
			}
		};
		var validatePhone = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isPhone(value)) {
				callback(new Error("请输入正确的电话号码"));
			} else {
				callback();
			}
		};
		var validateEmail = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isEmail(value)) {
				callback(new Error("请输入正确的邮箱地址"));
			} else {
				callback();
			}
		};
		var validateNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isNumber(value)) {
				callback(new Error("请输入数字"));
			} else {
				callback();
			}
		};
		var validateIntNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isIntNumer(value)) {
				callback(new Error("请输入整数"));
			} else {
				callback();
			}
		};
		return {
			id: '',
			type: '',
			
			
			ro:{
				baoxiudanhao : false,
				baoxiumingcheng : false,
				baomingleixing : false,
				baoxiutupian : false,
				baoxiuneirong : false,
				baoxiuriqi : false,
				baoxiubeizhu : false,
				yonghuming : false,
				shouji : false,
				louhao : false,
				fanghao : false,
				shhf : false,
			},
			
			
			ruleForm: {
				baoxiudanhao: this.getUUID(),
				baoxiumingcheng: '',
				baomingleixing: '',
				baoxiutupian: '',
				baoxiuneirong: '',
				baoxiuriqi: '',
				baoxiubeizhu: '',
				yonghuming: '',
				shouji: '',
				louhao: '',
				fanghao: '',
				shhf: '',
			},
		
			baomingleixingOptions: [],
			
			rules: {
				baoxiudanhao: [
				],
				baoxiumingcheng: [
				],
				baomingleixing: [
					{ required: true, message: '报修类型不能为空', trigger: 'blur' },
				],
				baoxiutupian: [
				],
				baoxiuneirong: [
				],
				baoxiuriqi: [
				],
				baoxiubeizhu: [
				],
				yonghuming: [
				],
				shouji: [
				],
				louhao: [
					{ required: true, message: '楼号不能为空', trigger: 'blur' },
				],
				fanghao: [
				],
				shhf: [
				],
			}
		};
	},
	props: ["parent"],
	computed: {



	},
    components: {
    },
	created() {
		this.ruleForm.baoxiuriqi = this.getCurDate()
	},
	methods: {
		
		// 下载
		download(file){
			window.open(`${file}`)
		},
		// 初始化
		init(id,type) {
			if (id) {
				this.id = id;
				this.type = type;
			}
			if(this.type=='info'||this.type=='else'){
				this.info(id);
			}else if(this.type=='logistics'){
				this.logistics=false;
				this.info(id);
			}else if(this.type=='cross'){
				var obj = this.$storage.getObj('crossObj');
				for (var o in obj){
						if(o=='baoxiudanhao'){
							this.ruleForm.baoxiudanhao = obj[o];
							this.ro.baoxiudanhao = true;
							continue;
						}
						if(o=='baoxiumingcheng'){
							this.ruleForm.baoxiumingcheng = obj[o];
							this.ro.baoxiumingcheng = true;
							continue;
						}
						if(o=='baomingleixing'){
							this.ruleForm.baomingleixing = obj[o];
							this.ro.baomingleixing = true;
							continue;
						}
						if(o=='baoxiutupian'){
							this.ruleForm.baoxiutupian = obj[o];
							this.ro.baoxiutupian = true;
							continue;
						}
						if(o=='baoxiuneirong'){
							this.ruleForm.baoxiuneirong = obj[o];
							this.ro.baoxiuneirong = true;
							continue;
						}
						if(o=='baoxiuriqi'){
							this.ruleForm.baoxiuriqi = obj[o];
							this.ro.baoxiuriqi = true;
							continue;
						}
						if(o=='baoxiubeizhu'){
							this.ruleForm.baoxiubeizhu = obj[o];
							this.ro.baoxiubeizhu = true;
							continue;
						}
						if(o=='yonghuming'){
							this.ruleForm.yonghuming = obj[o];
							this.ro.yonghuming = true;
							continue;
						}
						if(o=='shouji'){
							this.ruleForm.shouji = obj[o];
							this.ro.shouji = true;
							continue;
						}
						if(o=='louhao'){
							this.ruleForm.louhao = obj[o];
							this.ro.louhao = true;
							continue;
						}
						if(o=='fanghao'){
							this.ruleForm.fanghao = obj[o];
							this.ro.fanghao = true;
							continue;
						}
				}
				












			}
			
			
			// 获取用户信息
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code === 0) {
					
					var json = data.data;
					if(((json.yonghuming!=''&&json.yonghuming) || json.yonghuming==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.yonghuming = json.yonghuming
						this.ro.yonghuming = true;
					}
					if(((json.shouji!=''&&json.shouji) || json.shouji==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.shouji = json.shouji
						this.ro.shouji = true;
					}
					if(((json.louhao!=''&&json.louhao) || json.louhao==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.louhao = json.louhao
						this.ro.louhao = true;
					}
					if(((json.fanghao!=''&&json.fanghao) || json.fanghao==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.fanghao = json.fanghao
						this.ro.fanghao = true;
					}
				} else {
					this.$message.error(data.msg);
				}
			});
			
            this.baomingleixingOptions = "个人,公共".split(',')
			
		},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `baoxiuxinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
        //解决前台上传图片后台不显示的问题
        let reg=new RegExp('../../../upload','g')//g代表全部
        } else {
          this.$message.error(data.msg);
        }
      });
    },


    // 提交
    onSubmit() {








	if(this.ruleForm.baoxiutupian!=null) {
		this.ruleForm.baoxiutupian = this.ruleForm.baoxiutupian.replace(new RegExp(this.$base.url,"g"),"");
	}

















var objcross = this.$storage.getObj('crossObj');

      //更新跨表属性
       var crossuserid;
       var crossrefid;
       var crossoptnum;
       if(this.type=='cross'){
                var statusColumnName = this.$storage.get('statusColumnName');
                var statusColumnValue = this.$storage.get('statusColumnValue');
                if(statusColumnName!='') {
                        var obj = this.$storage.getObj('crossObj');
                       if(statusColumnName && !statusColumnName.startsWith("[")) {
                               for (var o in obj){
                                 if(o==statusColumnName){
                                   obj[o] = statusColumnValue;
                                 }
                               }
                               var table = this.$storage.get('crossTable');
                             this.$http({
                                 url: `${table}/update`,
                                 method: "post",
                                 data: obj
                               }).then(({ data }) => {});
                       } else {
                               crossuserid=this.$storage.get('userid');
                               crossrefid=obj['id'];
                               crossoptnum=this.$storage.get('statusColumnName');
                               crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                        }
                }
        }
       this.$refs["ruleForm"].validate(valid => {
         if (valid) {
		 if(crossrefid && crossuserid) {
			 this.ruleForm.crossuserid = crossuserid;
			 this.ruleForm.crossrefid = crossrefid;
			let params = { 
				page: 1, 
				limit: 10, 
				crossuserid:this.ruleForm.crossuserid,
				crossrefid:this.ruleForm.crossrefid,
			} 
			this.$http({ 
				url: "baoxiuxinxi/page", 
				method: "get", 
				params: params 
			}).then(({ 
				data 
			}) => { 
				if (data && data.code === 0) { 
				       if(data.data.total>=crossoptnum) {
					     this.$message.error(this.$storage.get('tips'));
					       return false;
				       } else {
					 this.$http({
					   url: `baoxiuxinxi/${!this.ruleForm.id ? "save" : "update"}`,
					   method: "post",
					   data: this.ruleForm
					 }).then(({ data }) => {
					   if (data && data.code === 0) {
					     this.$message({
					       message: "操作成功",
					       type: "success",
					       duration: 1500,
					       onClose: () => {
						 this.parent.showFlag = true;
						 this.parent.addOrUpdateFlag = false;
						 this.parent.baoxiuxinxiCrossAddOrUpdateFlag = false;
						 this.parent.search();
						 this.parent.contentStyleChange();
					       }
					     });
					   } else {
					     this.$message.error(data.msg);
					   }
					 });

				       }
				} else { 
				} 
			});
		 } else {
			 this.$http({
			   url: `baoxiuxinxi/${!this.ruleForm.id ? "save" : "update"}`,
			   method: "post",
			   data: this.ruleForm
			 }).then(({ data }) => {
			   if (data && data.code === 0) {
			     this.$message({
			       message: "操作成功",
			       type: "success",
			       duration: 1500,
			       onClose: () => {
				 this.parent.showFlag = true;
				 this.parent.addOrUpdateFlag = false;
				 this.parent.baoxiuxinxiCrossAddOrUpdateFlag = false;
				 this.parent.search();
				 this.parent.contentStyleChange();
			       }
			     });
			   } else {
			     this.$message.error(data.msg);
			   }
			 });
		 }
         }
       });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.baoxiuxinxiCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
    baoxiutupianUploadChange(fileUrls) {
	    this.ruleForm.baoxiutupian = fileUrls;
    },
  }
};
</script>
<style lang="scss" scoped>
	.amap-wrapper {
		width: 100%;
		height: 500px;
	}
	
	.search-box {
		position: absolute;
	}
	
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  	  padding: 0 20px 0 0;
	  	  color: #333;
	  	  font-weight: 500;
	  	  width: 100px;
	  	  font-size: 14px;
	  	  line-height: 40px;
	  	  text-align: right;
	  	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 100px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  	  border: 2px solid rgba(121, 121, 121, 1);
	  	  border-radius: 4px;
	  	  padding: 0 12px;
	  	  outline: none;
	  	  color: #333;
	  	  width: 250px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  	  border: 2px solid rgba(121, 121, 121, 1);
	  	  border-radius: 4px;
	  	  padding: 0 10px;
	  	  outline: none;
	  	  color: #333;
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  	  border: 2px solid rgba(121, 121, 121, 1);
	  	  border-radius: 4px;
	  	  padding: 0 10px 0 30px;
	  	  outline: none;
	  	  color: #333;
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  	  border: 2px dashed rgba(121, 121, 121, 1);
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #666;
	  	  width: 150px;
	  	  font-size: 24px;
	  	  line-height: 60px;
	  	  text-align: center;
	  	  height: 60px;
	  	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  	  border: 2px dashed rgba(121, 121, 121, 1);
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #666;
	  	  width: 150px;
	  	  font-size: 24px;
	  	  line-height: 60px;
	  	  text-align: center;
	  	  height: 60px;
	  	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  	  border: 2px dashed rgba(121, 121, 121, 1);
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #666;
	  	  width: 150px;
	  	  font-size: 24px;
	  	  line-height: 60px;
	  	  text-align: center;
	  	  height: 60px;
	  	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  	  border: 2px solid rgba(121, 121, 121, 1);
	  	  border-radius: 4px;
	  	  padding: 12px;
	  	  outline: none;
	  	  color: #333;
	  	  width: 400px;
	  	  font-size: 14px;
	  	  height: 120px;
	  	}
</style>
