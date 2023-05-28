<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="classes.BookClass"%>
<%@ include file = "HomepageConnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>work pls</h1>

	<div>
		<%
			List<BookClass> bookList = (List<BookClass>) session.getAttribute("bookList");
			System.out.print(bookList);

			// check that arraylist is not empty
			if (bookList != null && !bookList.isEmpty()) {
    		for (BookClass book : bookList) {
		%>
        <p>Title: <%= book.getTitle() %></p>
        <p>Image URL: <%= book.getImageURL() %></p>
        <p>Price: <%= book.getPrice() %></p>
        <hr>
<%
    }
}
%>
	</div>
</body>
</html>