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
 * 在线预约
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-09 09:24:45
 */
@TableName("zaixianyuyue")
public class ZaixianyuyueEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ZaixianyuyueEntity() {
		
	}
	
	public ZaixianyuyueEntity(T t) {
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
	 * 预约标题
	 */
					
	private String yuyuebiaoti;
	
	/**
	 * 预约类型
	 */
					
	private String yuyueleixing;
	
	/**
	 * 预约图片
	 */
					
	private String yuyuetupian;
	
	/**
	 * 材料内容
	 */
					
	private String cailiaoneirong;
	
	/**
	 * 预约时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date yuyueshijian;
	
	/**
	 * 申请时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date shenqingshijian;
	
	/**
	 * 预约备注
	 */
					
	private String yuyuebeizhu;
	
	/**
	 * 材料附件
	 */
					
	private String cailiaofujian;
	
	/**
	 * 办理地点
	 */
					
	private String banlididian;
	
	/**
	 * 用户名
	 */
					
	private String yonghuming;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 手机
	 */
					
	private String shouji;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 审核回复
	 */
					
	private String shhf;
	
	/**
	 * 用户id
	 */
					
	private Long userid;
	
	
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
	 * 设置：预约标题
	 */
	public void setYuyuebiaoti(String yuyuebiaoti) {
		this.yuyuebiaoti = yuyuebiaoti;
	}
	/**
	 * 获取：预约标题
	 */
	public String getYuyuebiaoti() {
		return yuyuebiaoti;
	}
	/**
	 * 设置：预约类型
	 */
	public void setYuyueleixing(String yuyueleixing) {
		this.yuyueleixing = yuyueleixing;
	}
	/**
	 * 获取：预约类型
	 */
	public String getYuyueleixing() {
		return yuyueleixing;
	}
	/**
	 * 设置：预约图片
	 */
	public void setYuyuetupian(String yuyuetupian) {
		this.yuyuetupian = yuyuetupian;
	}
	/**
	 * 获取：预约图片
	 */
	public String getYuyuetupian() {
		return yuyuetupian;
	}
	/**
	 * 设置：材料内容
	 */
	public void setCailiaoneirong(String cailiaoneirong) {
		this.cailiaoneirong = cailiaoneirong;
	}
	/**
	 * 获取：材料内容
	 */
	public String getCailiaoneirong() {
		return cailiaoneirong;
	}
	/**
	 * 设置：预约时间
	 */
	public void setYuyueshijian(Date yuyueshijian) {
		this.yuyueshijian = yuyueshijian;
	}
	/**
	 * 获取：预约时间
	 */
	public Date getYuyueshijian() {
		return yuyueshijian;
	}
	/**
	 * 设置：申请时间
	 */
	public void setShenqingshijian(Date shenqingshijian) {
		this.shenqingshijian = shenqingshijian;
	}
	/**
	 * 获取：申请时间
	 */
	public Date getShenqingshijian() {
		return shenqingshijian;
	}
	/**
	 * 设置：预约备注
	 */
	public void setYuyuebeizhu(String yuyuebeizhu) {
		this.yuyuebeizhu = yuyuebeizhu;
	}
	/**
	 * 获取：预约备注
	 */
	public String getYuyuebeizhu() {
		return yuyuebeizhu;
	}
	/**
	 * 设置：材料附件
	 */
	public void setCailiaofujian(String cailiaofujian) {
		this.cailiaofujian = cailiaofujian;
	}
	/**
	 * 获取：材料附件
	 */
	public String getCailiaofujian() {
		return cailiaofujian;
	}
	/**
	 * 设置：办理地点
	 */
	public void setBanlididian(String banlididian) {
		this.banlididian = banlididian;
	}
	/**
	 * 获取：办理地点
	 */
	public String getBanlididian() {
		return banlididian;
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
	 * 设置：姓名
	 */
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
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
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
	/**
	 * 设置：用户id
	 */
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}

}
