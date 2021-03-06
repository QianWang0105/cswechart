package com.lion.echart.system.entity;

import java.io.Serializable;
import java.util.Date;
/**
 * 用户表
 * @author TANGXIAN
 *
 */
public class UserEntity implements Serializable {
	private Long id;
	private Long subofficeid;
	private String subofficename;
	private String username;
	private String realname;
	private String password;
	private String sex;
	private String email;
	private Date createdate;
	private String remark;
	private Integer priority;
	private Integer status;
	private String isdisabled;
	private String operuser;
	private Date operdate;
	
	public UserEntity(){
		
	}

	public UserEntity(Long id, Long subofficeid, String subofficename, String username, String realname, String password, String sex,
			String email, Date createdate, String remark, Integer priority, Integer status, String isdisabled,
			String operuser, Date operdate) {
		super();
		this.id = id;
		this.subofficeid = subofficeid;
		this.subofficename = subofficename;
		this.username = username;
		this.realname = realname;
		this.password = password;
		this.sex = sex;
		this.email = email;
		this.createdate = createdate;
		this.remark = remark;
		this.priority = priority;
		this.status = status;
		this.isdisabled = isdisabled;
		this.operuser = operuser;
		this.operdate = operdate;
	}

	public Long getSubofficeid() {
		return subofficeid;
	}
	public void setSubofficeid(Long subofficeid) {
		this.subofficeid = subofficeid;
	}
	public String getSubofficename() {
		return subofficename;
	}

	public void setSuboffice(String subofficename) {
		this.subofficename = subofficename;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public Integer getPriority() {
		return priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getIsdisabled() {
		return isdisabled;
	}
	public void setIsdisabled(String isdisabled) {
		this.isdisabled = isdisabled;
	}
	public String getOperuser() {
		return operuser;
	}
	public void setOperuser(String operuser) {
		this.operuser = operuser;
	}
	public Date getOperdate() {
		return operdate;
	}
	public void setOperdate(Date operdate) {
		this.operdate = operdate;
	}
	
}