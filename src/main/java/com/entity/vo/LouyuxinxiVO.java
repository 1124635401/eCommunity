package com.entity.vo;

import com.entity.LouyuxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 楼宇信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-31 10:39:56
 */
public class LouyuxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 房屋类型
	 */
	
	private String fangwuleixing;
		
	/**
	 * 房屋朝向
	 */
	
	private String fangwuchaoxiang;
		
	/**
	 * 房屋面积
	 */
	
	private String fangwumianji;
		
	/**
	 * 房屋状态
	 */
	
	private String fangwuzhuangtai;
		
	/**
	 * 房屋介绍
	 */
	
	private String fangwujieshao;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
				
	
	/**
	 * 设置：房屋类型
	 */
	 
	public void setFangwuleixing(String fangwuleixing) {
		this.fangwuleixing = fangwuleixing;
	}
	
	/**
	 * 获取：房屋类型
	 */
	public String getFangwuleixing() {
		return fangwuleixing;
	}
				
	
	/**
	 * 设置：房屋朝向
	 */
	 
	public void setFangwuchaoxiang(String fangwuchaoxiang) {
		this.fangwuchaoxiang = fangwuchaoxiang;
	}
	
	/**
	 * 获取：房屋朝向
	 */
	public String getFangwuchaoxiang() {
		return fangwuchaoxiang;
	}
				
	
	/**
	 * 设置：房屋面积
	 */
	 
	public void setFangwumianji(String fangwumianji) {
		this.fangwumianji = fangwumianji;
	}
	
	/**
	 * 获取：房屋面积
	 */
	public String getFangwumianji() {
		return fangwumianji;
	}
				
	
	/**
	 * 设置：房屋状态
	 */
	 
	public void setFangwuzhuangtai(String fangwuzhuangtai) {
		this.fangwuzhuangtai = fangwuzhuangtai;
	}
	
	/**
	 * 获取：房屋状态
	 */
	public String getFangwuzhuangtai() {
		return fangwuzhuangtai;
	}
				
	
	/**
	 * 设置：房屋介绍
	 */
	 
	public void setFangwujieshao(String fangwujieshao) {
		this.fangwujieshao = fangwujieshao;
	}
	
	/**
	 * 获取：房屋介绍
	 */
	public String getFangwujieshao() {
		return fangwujieshao;
	}
				
	
	/**
	 * 设置：发布日期
	 */
	 
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
			
}
