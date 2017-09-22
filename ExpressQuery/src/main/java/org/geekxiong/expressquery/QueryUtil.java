package org.geekxiong.expressquery;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * 快递查询的一些方法
 * @author  作者 : Shiwei Xiong  
 * @version 创建时间 : 2017年9月22日 下午6:43:24 
 * 
 */
public class QueryUtil implements QueryUtilImpl{
	
	/**
	 * 通过url获取链接返回内容
	 * @param url 目标链接
	 * @return String类型的返回内容
	 */
	public String getHTML(String url) {
		String content = null;
		CloseableHttpClient httpclient = HttpClients.createDefault();
		HttpGet httpget = new HttpGet(url);
		String useragent="Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36";
        httpget.setHeader("User-Agent", useragent); 
		CloseableHttpResponse response;
		try {
			response = httpclient.execute(httpget);
			HttpEntity entity = response.getEntity();
			content = EntityUtils.toString(entity,"utf-8");
			response.close();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return content;
	}
	
	/**
	 * 通过快递单号得到可能的快递商编号
	 * @param postID 快递单号
	 * @return json格式的String对象
	 */
	public String getComCodeAsJson(String postID) {
		String url = "http://www.kuaidi100.com/autonumber/autoComNum?text="+postID;
		String content = getHTML(url);
		return content;
	}
	
	/**
	 * 通过快递单号得到可能的快递商编号
	 * @param postID 快递单号
	 * @return ArrayList<String> 每一项都为一条快递商编号
	 */
	public ArrayList<String> getComCodeAsList(String postID) {
		ArrayList<String> comCodeList = new ArrayList<String>();
		String url = "http://www.kuaidi100.com/autonumber/autoComNum?text="+postID;
		String content = getHTML(url);
		JsonParser parser = new JsonParser();
        JsonObject object = (JsonObject)parser.parse(content);
        JsonArray codeList = object.getAsJsonArray("auto");
        for(int i=0;i<codeList.size();i++){
        	JsonObject tmp = (JsonObject) codeList.get(i);
        	String comCode = tmp.get("comCode").getAsString();
        	comCodeList.add(comCode);
        }
		return comCodeList;
	}
	
	
	/**
	 * 通过快递商编号以及快递单号获取整个物流过程信息
	 * @param comCode 快递商编号
	 * @param postID 快递单号
	 * @return json格式的String对象
	 */
	public String getLogisInfoAsJson(String comCode,String postID){
		String url = "http://www.kuaidi100.com/query?type="+comCode+"&postid="+postID;
		String content = getHTML(url);
		return content;
	}
	
	/**
	 * 通过快递商编号以及快递单号获取整个物流过程信息
	 * @param comCode 快递商编号
	 * @param postID  快递单号
	 * @return ArrayList<Statebean> 每一个Statebean为一条快递信息
	 */
	public ArrayList<StateModel> getLogisInfoAsModel(String comCode,String postID){
		ArrayList<StateModel> stateList = new ArrayList<StateModel>();
		String url = "http://www.kuaidi100.com/query?type="+comCode+"&postid="+postID;
		String content = getHTML(url);
		JsonParser parser = new JsonParser();
        JsonObject object = (JsonObject)parser.parse(content);
        JsonArray dataList = object.getAsJsonArray("data");
        for(int i=0;i<dataList.size();i++){
        	JsonObject tmp = dataList.get(i).getAsJsonObject();
        	String time = tmp.get("time").getAsString();
        	String ftime = tmp.get("ftime").getAsString();
        	String context = tmp.get("context").getAsString();
        	StateModel newState = new StateModel();
        	newState.setTime(time);
        	newState.setFtime(ftime);
        	newState.setContext(context);
        	stateList.add(newState);
        }
		return stateList;
	}
}
