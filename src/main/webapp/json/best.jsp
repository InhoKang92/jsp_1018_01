<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>

<%

Object[][] best = {
						{"img/best_01.jpg", "01", "ON 피그먼트 패드겸이불 아이보리", "40%", "29,000원", "49,900원"},
						{"img/best_02.jpg", "02", "ON 스마일 멜라민 접시 4p세트", "37%", "9,900원", "15,900원"},
						{"img/best_03.jpg", "03", "WOW 오풀로 카페테이블 2인세트", "", "117,700원", ""},
						{"img/best_04.jpg", "04", "키즈 꿈꾸는치타 폴딩우산의자 주니어", "58%", "15,900원", "37,900원"},
						{"img/best_05.jpg", "05", "헤이 데일리 세면타올7P 180g", "", "29,900원", ""}
				  };

JSONObject jsonList = new JSONObject();
JSONArray itemList = new JSONArray();


for(int i=0;i < best.length; i++){
	JSONObject tempJson = new JSONObject();
		tempJson.put("url", best[i][0]);
		tempJson.put("num", best[i][1]);
		tempJson.put("title", best[i][2]);
		tempJson.put("dRate", best[i][3]);
		tempJson.put("price", best[i][4]);
		tempJson.put("oPrice", best[i][5]);
	itemList.add(tempJson);
}
jsonList.put("TOTAL",best.length);
jsonList.put("ITEMS",itemList);

System.out.println(jsonList);
out.print(jsonList);

%>