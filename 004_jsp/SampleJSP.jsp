<%-- 
●jspの基本文法 
	・テンプレートテキスト
		- 直接記述するhtml,javascript,cssなど。

	・JSP要素
		- ディレクティブ要素
			-- page ディレクティブ
				そのJSPページの設定を指定するディレクティブ.
				<%@ page 属性="値" %>

					//contentType属性
					<%@ page contentType="text/html;charset=UTF-8" %>
					//import属性
					<%@ page import="java.util.*, java.sql.*" %>
					//session属性
					<%@ page session="false" %>


			-- include ディレクティブ
				他のjspをincludeする
				

			-- tablib ディレクティブ
				

		- スクリプティング要素
			javaのコードを埋め込むための構文。
			以下の3種類がある。

				-- スクリプトレット(Scriptlet)
					<% java の code %>

				-- 式(Expression)
					<%= java の 式 %>
						(ex) <%= i %>

				-- 宣言(Declaration)
					フィールドやメソッドを記述する。
					<%! 宣言 %>


		- アクション要素


		- コメント
			このコメントを囲んでいるタグを使用。

--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%!
	//スクリプティング要素の "宣言"
	int counter = 0;	//フィールド
	void addCounter(){	//method
		couter ++;
	}

	int getCounter(){	//method
		return counter;
	}
%>

<html>
<head>
	<meta charset="UTF-8">
	<title>sample jsp</title>
</head>

<body>
	<% addCounter(); %>	<!-- スクリプティング要素の "スリプトレット" -->
	count : <%=getCounter()%>	<!-- スクリプティング要素の "式" -->
	

</body>

</html>
