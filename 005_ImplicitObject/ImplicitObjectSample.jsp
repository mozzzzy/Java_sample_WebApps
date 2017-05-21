<%--
●暗黙オブジェクト
        暗黙オブジェクトは、特に宣言せずにJSP内で使用できるオブジェクト。

                request         clientからのrequest情報 及び リクエストスコープが入ったオブェクト。
				HttpServletRequest object、サーブレット内で使っていた。

                response        クライアントへのレスポンス情報。
				HttpServletResponse object、サーブレット内で使っていた。

                pageContext     jspのページスコープ及びjspページの構成情報

                session         セッションスコープのオブジェクト

                application     アプリケーションスコープのオブジェクト

                out             クライアントへのストリーム

                config          webコンテナから渡されるサーブレットへの初期化情報オブジェクト

                page            this と同じ意味

                exception       例外情報。エラーメッセージで使用。

--%>



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	String value1 = "this is test value1.";

	//set data to request scope
	request.setAttribute("value1",value1);
	//get data from request scope
	String value2 = (String) request.getAttribute("value1");

	//set data to session scope
	session.setAttribute("value2",value2);
%>

<html>
<head>
	<meta charset="UTF-8">
	<title>EL sample</title>
</head>

<body>
<%
	String value3 = (String) session.getAttribute("value2");
	out.println(value3);
%>
</body>

</html>
