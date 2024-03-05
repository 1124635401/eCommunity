package com.entity.vo;

import com.entity.TousuchuliEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 投诉处理
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-31 10:39:56
 */
public class TousuchuliVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 投诉标题
	 */
	
	private String tousubiaoti;
		
	/**
	 * 处理内容
	 */
	
	private String chulineirong;
		
	/**
	 * 处理日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date chuliriqi;
		
	/**
	 * 员工工号
	 */
	
	private String yuangonggonghao;
		
	/**
	 * 员工姓名
	 */
	
	private String yuangongxingming;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 跨表用户id
	 */
	
	private Long crossuserid;
		
	/**
	 * 跨表主键id
	 */
	
	private Long crossrefid;
				
	
	/**
	 * 设置：投诉标题
	 */
	 
	public void setTousubiaoti(String tousubiaoti) {
		this.tousubiaoti = tousubiaoti;
	}
	
	/**
	 * 获取：投诉标题
	 */
	public String getTousubiaoti() {
		return tousubiaoti;
	}
				
	
	/**
	 * 设置：处理内容
	 */
	 
	public void setChulineirong(String chulineirong) {
		this.chulineirong = chulineirong;
	}
	
	/**
	 * 获取：处理内容
	 */
	public String getChulineirong() {
		return chulineirong;
	}
				
	
	/**
	 * 设置：处理日期
	 */
	 
	public void setChuliriqi(Date chuliriqi) {
		this.chuliriqi = chuliriqi;
	}
	
	/**
	 * 获取：处理日期
	 */
	public Date getChuliriqi() {
		return chuliriqi;
	}
				
	
	/**
	 * 设置：员工工号
	 */
	 
	public void setYuangonggonghao(String yuangonggonghao) {
		this.yuangonggonghao = yuangonggonghao;
	}
	
	/**
	 * 获取：员工工号
	 */
	public String getYuangonggonghao() {
		return yuangonggonghao;
	}
				
	
	/**
	 * 设置：员工姓名
	 */
	 
	public void setYuangongxingming(String yuangongxingming) {
		this.yuangongxingming = yuangongxingming;
	}
	
	/**
	 * 获取：员工姓名
	 */
	public String getYuangongxingming() {
		return yuangongxingming;
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
	 * 设置：跨表用户id
	 */
	 
	public void setCrossuserid(Long crossuserid) {
		this.crossuserid = crossuserid;
	}
	
	/**
	 * 获取：跨表用户id
	 */
	public Long getCrossuserid() {
		return crossuserid;
	}
				
	
	/**
	 * 设置：跨表主键id
	 */
	 
	public void setCrossrefid(Long crossrefid) {
		this.crossrefid = crossrefid;
	}
	
	/**
	 * 获取：跨表主键id
	 */
	public Long getCrossrefid() {
		return crossrefid;
	}
			
}
