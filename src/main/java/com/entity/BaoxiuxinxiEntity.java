package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 报修信息
 * 数据库通用操作实体类（普通增删改查）
 */
@TableName("baoxiuxinxi")
public class BaoxiuxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public BaoxiuxinxiEntity() {
		
	}
	
	public BaoxiuxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 报修单号
	 */
					
	private String baoxiudanhao;
	
	/**
	 * 报修名称
	 */
					
	private String baoxiumingcheng;
	
	/**
	 * 报修类型
	 */
					
	private String baomingleixing;
	
	/**
	 * 报修图片
	 */
					
	private String baoxiutupian;
	
	/**
	 * 报修内容
	 */
					
	private String baoxiuneirong;
	
	/**
	 * 报修日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date baoxiuriqi;
	
	/**
	 * 报修备注
	 */
					
	private String baoxiubeizhu;
	
	/**
	 * 用户名
	 */
					
	private String yonghuming;
	
	/**
	 * 手机
	 */
					
	private String shouji;
	
	/**
	 * 楼号
	 */
					
	private String louhao;
	
	/**
	 * 房号
	 */
					
	private String fanghao;
	
	/**
	 * 回复内容
	 */
					
	private String shhf;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：报修单号
	 */
	public void setBaoxiudanhao(String baoxiudanhao) {
		this.baoxiudanhao = baoxiudanhao;
	}
	/**
	 * 获取：报修单号
	 */
	public String getBaoxiudanhao() {
		return baoxiudanhao;
	}
	/**
	 * 设置：报修名称
	 */
	public void setBaoxiumingcheng(String baoxiumingcheng) {
		this.baoxiumingcheng = baoxiumingcheng;
	}
	/**
	 * 获取：报修名称
	 */
	public String getBaoxiumingcheng() {
		return baoxiumingcheng;
	}
	/**
	 * 设置：报修类型
	 */
	public void setBaomingleixing(String baomingleixing) {
		this.baomingleixing = baomingleixing;
	}
	/**
	 * 获取：报修类型
	 */
	public String getBaomingleixing() {
		return baomingleixing;
	}
	/**
	 * 设置：报修图片
	 */
	public void setBaoxiutupian(String baoxiutupian) {
		this.baoxiutupian = baoxiutupian;
	}
	/**
	 * 获取：报修图片
	 */
	public String getBaoxiutupian() {
		return baoxiutupian;
	}
	/**
	 * 设置：报修内容
	 */
	public void setBaoxiuneirong(String baoxiuneirong) {
		this.baoxiuneirong = baoxiuneirong;
	}
	/**
	 * 获取：报修内容
	 */
	public String getBaoxiuneirong() {
		return baoxiuneirong;
	}
	/**
	 * 设置：报修日期
	 */
	public void setBaoxiuriqi(Date baoxiuriqi) {
		this.baoxiuriqi = baoxiuriqi;
	}
	/**
	 * 获取：报修日期
	 */
	public Date getBaoxiuriqi() {
		return baoxiuriqi;
	}
	/**
	 * 设置：报修备注
	 */
	public void setBaoxiubeizhu(String baoxiubeizhu) {
		this.baoxiubeizhu = baoxiubeizhu;
	}
	/**
	 * 获取：报修备注
	 */
	public String getBaoxiubeizhu() {
		return baoxiubeizhu;
	}
	/**
	 * 设置：用户名
	 */
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
	/**
	 * 设置：手机
	 */
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
	/**
	 * 设置：楼号
	 */
	public void setLouhao(String louhao) {
		this.louhao = louhao;
	}
	/**
	 * 获取：楼号
	 */
	public String getLouhao() {
		return louhao;
	}
	/**
	 * 设置：房号
	 */
	public void setFanghao(String fanghao) {
		this.fanghao = fanghao;
	}
	/**
	 * 获取：房号
	 */
	public String getFanghao() {
		return fanghao;
	}
	/**
	 * 设置：回复内容
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：回复内容
	 */
	public String getShhf() {
		return shhf;
	}

}
