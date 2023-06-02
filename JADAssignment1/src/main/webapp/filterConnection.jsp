<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.*, java.sql.DriverManager, java.sql.ResultSet, java.sql.SQLException, java.sql.Statement"%>
<%@ page import="java.util.List, java.util.ArrayList, java.net.*"%>
<%@ page import="classes.BookClass"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// database values
	String jdbcDriver = "com.mysql.jdbc.Driver";
	String dbURL = "jdbc:mysql://localhost:3306/jad_ca";
	String dbUsername = "root";
	String dbPassword = "z9N3Eif7Y5";

	// initializing values
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

	// search and checkbox combined

	// Getting the query parameter from the URL
	String getGenre = request.getParameter("genre");
	String getSearch = request.getParameter("search");
	System.out.println(getGenre == "");

	// loading jdbc driver
	try {
		// loading jdbc driver
		Class.forName(jdbcDriver);
		connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

		// constructing the sql queries using StringBuilder
		// construct the base query
		StringBuilder newQuery = new StringBuilder("SELECT * FROM booklist WHERE 1=1");

		// declare prepared statement
		PreparedStatement preparedStatement = null;

		try {
			// if checkboxes are selected
			if (getGenre != null && getGenre != "") {
		newQuery.append(" AND genre IN (?)");
			}

			// if books are searched for
			if (getSearch != null && getSearch != "") {
		newQuery.append(" AND title RLIKE ?");
			}

			// prepare the statement
			preparedStatement = connection.prepareStatement(newQuery.toString());

			// Binding parameters
			int parameterIndex = 1;

			if (getGenre != null && getGenre != "") {
		// increment the index of the question 
		// originally 1 and increases each time
		preparedStatement.setString(parameterIndex++, getGenre);
			}

			if (getSearch != null && getSearch != "") {
		preparedStatement.setString(parameterIndex, getSearch);
			}

			System.out.println(preparedStatement);
			// Execute query
			resultSet = preparedStatement.executeQuery();

			// creating arraylist
			List<BookClass> bookList = new ArrayList<>();

			// processing and displaying of results
		while (resultSet.next()) {
		String imageURL = resultSet.getString("imageURL");
		String title = resultSet.getString("title");
		double price = resultSet.getDouble("price");

		System.out.println(title);
		System.out.println(price);

		// creating a BookClass instance
		BookClass bookclass = new BookClass(imageURL, title, price);

		// adding booklist to the arraylist
		bookList.add(bookclass);

		// Get the session object
		HttpSession genreSession = request.getSession();

		genreSession.setAttribute("bookList", bookList);
		
		}
		
		if (getSearch == "null"){
			getSearch = "";
		}
		
		if (getGenre == "null"){
			getGenre = "";
		}
			
		// Send back to the home.jsp page
		response.sendRedirect("Home.jsp?search=" + getSearch + "&genre=" + getGenre);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// closing everything
			if (resultSet != null) {
		try {
			resultSet.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			}
			if (statement != null) {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			}
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		// closing everything
		if (resultSet != null) {
			try {
		resultSet.close();
			} catch (SQLException e) {
		e.printStackTrace();
			}
		}
		if (statement != null) {
			try {
		connection.close();
			} catch (SQLException e) {
		e.printStackTrace();
			}
		}
	}
	%>
</body>
</html>