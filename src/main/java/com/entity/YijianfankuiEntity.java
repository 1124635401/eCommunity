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
 * 意见反馈
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-31 10:39:56
 */
@TableName("yijianfankui")
public class YijianfankuiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YijianfankuiEntity() {
		
	}
	
	public YijianfankuiEntity(T t) {
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
	 * 反馈标题
	 */
					
	private String fankuibiaoti;
	
	/**
	 * 用户名
	 */
					
	private String yonghuming;
	
	/**
	 * 反馈日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date fankuiriqi;
	
	/**
	 * 意见内容
	 */
					
	private String yijianneirong;
	
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
	 * 设置：反馈标题
	 */
	public void setFankuibiaoti(String fankuibiaoti) {
		this.fankuibiaoti = fankuibiaoti;
	}
	/**
	 * 获取：反馈标题
	 */
	public String getFankuibiaoti() {
		return fankuibiaoti;
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
	 * 设置：反馈日期
	 */
	public void setFankuiriqi(Date fankuiriqi) {
		this.fankuiriqi = fankuiriqi;
	}
	/**
	 * 获取：反馈日期
	 */
	public Date getFankuiriqi() {
		return fankuiriqi;
	}
	/**
	 * 设置：意见内容
	 */
	public void setYijianneirong(String yijianneirong) {
		this.yijianneirong = yijianneirong;
	}
	/**
	 * 获取：意见内容
	 */
	public String getYijianneirong() {
		return yijianneirong;
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
