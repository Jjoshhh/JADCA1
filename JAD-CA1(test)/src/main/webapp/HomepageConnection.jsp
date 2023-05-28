<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.SQLException, java.sql.Statement" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="classes.BookClass" %>
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
		
		try{
			// Connecting to the database
			// loading jdbc driver
			Class.forName(jdbcDriver);
			connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
			
			// Executing SQL query
			String sqlStr = "SELECT * FROM booklist";
			
			// processing query
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sqlStr);
			
			// creating arraylist
			List <BookClass> bookList = new ArrayList<>();
			
			// Retrieve data from the result
			while(resultSet.next()){
				String imageURL = resultSet.getString("imageURL");
				String title = resultSet.getString("title");
				double price = resultSet.getDouble("price");
				
				// for debugging
			    /* System.out.println("Image URL: " + imageURL);
			    System.out.println("Title: " + title);
			    System.out.println("Price: " + price); */
				
				// creating a BookClass instance
				BookClass bookclass = new BookClass(imageURL, title, price);
				
				// adding booklist to the arraylist
				bookList.add(bookclass);
				/* System.out.println(bookclass); */
/* 				System.out.println("Booksize: " + bookList.size());
				System.out.print("Book1: " + bookList.get(0).getTitle()); */
				
				// Get the session object
				HttpSession sess = request.getSession();
				
				session.setAttribute("bookList", bookList);
			}
		}catch(SQLException e) {
	        e.printStackTrace();
	    } finally {
	    	// closing everything
	    	if(resultSet != null){
	    		try{
	    			resultSet.close();
	    		}catch (SQLException e){
	    			e.printStackTrace();
	    		}
	    	}
	    	if(statement != null){
	    		try{
	    			connection.close();
	    		}catch (SQLException e){
	    			e.printStackTrace();
	    		}
	    	}
	    }
	%>
</body>
</html>