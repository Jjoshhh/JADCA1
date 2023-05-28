<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="classes.BookClass"%>
<%@ include file="HomepageConnection.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Splash Page</title>
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://kit.fontawesome.com/9c1a7a3896.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/Home.css">
</head>

<body>
	<div class="relative w-full h-screen" id="front">
		<nav class="text-white flex px-16 items-center w-full" id="navBar">
			<div class="flex flex-nowrap justify-around w-full">
				<a href="/home" class="flex items-center gap-3"> <img
					class="w-16 rounded-full" src="./img/book_logo.jpg" alt="">
					<h4 class="font-bold text-xl text-white tracking-wide">SP
						BookStore</h4>
				</a>
				<div class="flex flex-nowrap justify-evenly gap-16">
					<a href="/search"
						class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center">
						<i class="fa-solid fa-magnifying-glass text-white"></i>
						<h4 class="text-white">Search</h4>
					</a> <a href="/cart"
						class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center">
						<i class="fa-solid fa-cart-shopping text-white"></i>
						<h4 class="whitespace-normal w-20 text-center text-white">Cart</h4>
					</a> <a href="/User"
						class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center">
						<i class="fa-solid fa-user text-white"></i>
						<h4 class="text-white">Admin</h4>
					</a> <a href="/Search" class="flex font-medium px-3 py-2">
						<button class="Btn">
							<div class="pr-16">Login</div>
							<svg class="svg text-4xl" xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-person-vcard-fill" viewBox="0 0 16 16">
                                <path
									d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm9 1.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 0-1h-4a.5.5 0 0 0-.5.5ZM9 8a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 0-1h-4A.5.5 0 0 0 9 8Zm1 2.5a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 0-1h-3a.5.5 0 0 0-.5.5Zm-1 2C9 10.567 7.21 9 5 9c-2.086 0-3.8 1.398-3.984 3.181A1 1 0 0 0 2 13h6.96c.026-.163.04-.33.04-.5ZM7 6a2 2 0 1 0-4 0 2 2 0 0 0 4 0Z" />
                              </svg>
						</button>
					</a>
				</div>
			</div>
		</nav>

		<!-- search bar -->
		<div
			class="text-xl flex justify-center absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-full">
			<div
				class="flex w-3/5 h-12 bg-white border-2 rounded-[50px] px-5 gap-3">
				<i class="fa-solid fa-search self-center"></i> <input
					class="w-full border-0 focus:outline-0" type="text"
					placeholder="Search For A Title" />
			</div>
		</div>
		<div
			class="flex justify-center mt-8 absolute left-1/2 -translate-x-1/2 bottom-12">
			<a href="#body" class="flex items-center text-white flex-col gap-1">
				<h5 class="ml-2">Scroll Down</h5> <i
				class="fa-solid fa-angle-down text-xl"></i>
			</a>
		</div>
	</div>

	<!-- side bar to filter options -->
	<div class="flex min-h-screen" id="body">
		<div class="bg-[#33363F] text-white w-1/5">
			<ul class="flex flex-col w-full py-4 px-5 sticky top-[100px] z-40">
				<li>
					<p class="font-bold text-2xl">Pricing</p>
				</li>
				<!-- add slider eventually -->
				<li>
					<p class="font-bold text-2xl">Category</p>
				</li>
				<li class="flex items-center py-5"><input type="checkbox"
					id="checkbox1"
					class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
					<label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Horror</label>
				</li>
				<li class="flex items-center pb-5"><input type="checkbox"
					id="checkbox1"
					class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
					<label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Fiction</label>
				</li>
				<li class="flex items-center pb-5"><input type="checkbox"
					id="checkbox1"
					class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
					<label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Non
						- Fiction</label></li>
				<li class="flex items-center pb-5"><input type="checkbox"
					id="checkbox1"
					class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
					<label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Fantasy</label>
				</li>
				<li class="flex items-center pb-5"><input type="checkbox"
					id="checkbox1"
					class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
					<label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Mystery</label>
				</li>
				<li class="flex items-center pb-5"><input type="checkbox"
					id="checkbox1"
					class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
					<label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Romance</label>
				</li>
			</ul>
		</div>

		<!-- main content -->
		<div class="w-4/5 py-5 px-5">
			<p class="text-white font-bold pb-5">Displaying Search Results
				For:</p>
			<div class="grid grid-cols-4 gap-16 justify-items-center">

				<%
				List<BookClass> bookList = (List<BookClass>) session.getAttribute("bookList");
				System.out.print(bookList);

				// check that arraylist is not empty
				if (bookList != null && !bookList.isEmpty()) {
					for (BookClass book : bookList) {
				%>

				<div
					class="w-full max-w-xs bg-white border border-gray-200 rounded-lg shadow dark:bg-[#3D4D64] dark:border-gray-700"
					id="bookContainer">
					<img class="p-8 rounded-t-lg" src="#" alt="product image" />
					<div class="px-5 pb-5">
						<!-- product title -->
						<h5
							class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white"><%=book.getTitle()%></h5>
						<div class="flex items-center mt-2.5 mb-5">
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
                                <title>First star</title>
                                <path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                </path>
                            </svg>
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
                                <title>Second star</title>
                                <path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                </path>
                            </svg>
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
                                <title>Third star</title>
                                <path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                </path>
                            </svg>
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
                                <title>Fourth star</title>
                                <path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                </path>
                            </svg>
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
                                <title>Fifth star</title>
                                <path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                </path>
                            </svg>
						</div>
						<div class="flex items-center justify-between">
							<span class="text-3xl font-bold text-gray-900 dark:text-white">$<%= book.getPrice() %></span>
							<!-- <a href="#"
                            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Add
                            to cart</a> -->
						</div>
					</div>
				</div>
				<%
					}
				}
				%>
			</div>
		</div>
	</div>

	<script>
		window.onscroll = function() {
			let navbar = document.querySelector("nav");
			if (window.pageYOffset > 0) {
				navbar.classList.add("scrolled");
			} else {
				navbar.classList.remove("scrolled");
			}
		};

		document.addEventListener("DOMContentLoaded", function() {
			// Get a reference to the div element
			let redirectBook = document.getElementById("bookContainer");

			// Add a click event listener
			redirectBook.addEventListener("click", function() {
				window.location.href = "./bookDisplay.jsp";
			});
		});
	</script>
</body>

</html>