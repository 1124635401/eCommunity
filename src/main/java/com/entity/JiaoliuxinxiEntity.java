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
 * 交流信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-31 10:39:56
 */
@TableName("jiaoliuxinxi")
public class JiaoliuxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JiaoliuxinxiEntity() {
		
	}
	
	public JiaoliuxinxiEntity(T t) {
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
	 * 用户名
	 */
					
	private String yonghuming;
	
	/**
	 * 交流内容
	 */
					
	private String jiaoliuneirong;
	
	/**
	 * 交流日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jiaoliuriqi;
	
	/**
	 * 发言人
	 */
					
	private String fayanren;
	
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
	 * 设置：交流内容
	 */
	public void setJiaoliuneirong(String jiaoliuneirong) {
		this.jiaoliuneirong = jiaoliuneirong;
	}
	/**
	 * 获取：交流内容
	 */
	public String getJiaoliuneirong() {
		return jiaoliuneirong;
	}
	/**
	 * 设置：交流日期
	 */
	public void setJiaoliuriqi(Date jiaoliuriqi) {
		this.jiaoliuriqi = jiaoliuriqi;
	}
	/**
	 * 获取：交流日期
	 */
	public Date getJiaoliuriqi() {
		return jiaoliuriqi;
	}
	/**
	 * 设置：发言人
	 */
	public void setFayanren(String fayanren) {
		this.fayanren = fayanren;
	}
	/**
	 * 获取：发言人
	 */
	public String getFayanren() {
		return fayanren;
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
