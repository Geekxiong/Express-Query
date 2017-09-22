package org.geekxiong.expressquery;

import java.util.ArrayList;
import java.util.Scanner;

/**
 * 样例测试
 * @author  作者 : Shiwei Xiong  
 * @version 创建时间 : 2017年9月22日 下午9:33:41 
 * 
 */
public class Example {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		QueryUtil query = new QueryUtil();
		System.out.println("请输入您的快递单号：");
		String postID = in.next();
		ArrayList<String> list = query.getComCodeAsList(postID);
		System.out.println("请输入您快递公司的序号：");
		for(int i=0;i<list.size();i++){
			String express = QueryUtilImpl.EXPRESS.get(list.get(i));
			if(express==null){
				express = list.get(i);
			}
			System.out.println(i+":"+express);
		}
		int no = in.nextInt();
		 ArrayList<StateModel> stata = query.getLogisInfoAsModel(list.get(no), postID);
		 for(int i=0;i<stata.size();i++) {
			 StateModel st = stata.get(i);
			 System.out.print(st.getTime()+" -- ");
			 System.out.println(st.getContext());
		 }
	}
}
