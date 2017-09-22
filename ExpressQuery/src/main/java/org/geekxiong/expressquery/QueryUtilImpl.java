package org.geekxiong.expressquery;

import java.util.HashMap;
import java.util.Map;

/**
 * 快递查询接口
 * @author  作者 : Shiwei Xiong  
 * @version 创建时间 : 2017年9月22日 下午9:05:55 
 * 
 */
public interface QueryUtilImpl {
	/**
	 * 快递公司编号
	 */
	public static final Map<String, String> EXPRESS = new HashMap<String , String>(){
		private static final long serialVersionUID = 1L; {  
	     put("shentong", "申通");  
	     put("ems", "EMS");  
	     put("shunfeng", "顺丰");
	     put("yuantong", "圆通");
	     put("zhongtong", "中通");
	     put("yunda", "韵达");
	     put("tiantian", "天天");
	     put("huitongkuaidi", "汇通");
	     put("quanfengkuaidi","全峰");
	     put("debangwuliu","德邦");
	     put("zhaijisong","宅急送");
	     put("jd", "京东");
	     //put(comCode,快递名);
	 }}; 
	public String getHTML(String url);
	public String getComCodeAsJson(String postID);
	public String getLogisInfoAsJson(String comCode,String postID);
}
