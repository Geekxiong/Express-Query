package org.geekxiong.expressquery;

/**
 * 存储json信息中每一条物流记录
 * @author  作者 : Shiwei Xiong  
 * @version 创建时间 : 2017年9月22日 下午7:15:15 
 * 
 */
public class StateModel {
	private String time;
	private String ftime;
	private String context;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getFtime() {
		return ftime;
	}
	public void setFtime(String ftime) {
		this.ftime = ftime;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	

}