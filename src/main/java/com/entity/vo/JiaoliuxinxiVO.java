package com.entity.vo;

import com.entity.JiaoliuxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 交流信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-31 10:39:56
 */
public class JiaoliuxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 交流内容
	 */
	
	private String jiaoliuneirong;
		
	/**
	 * 交流日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
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
