<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://kit.fontawesome.com/9c1a7a3896.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="./css/bookDisplay.css">
<title>Document</title>
</head>
<body>
	<div class="relative w-full h-screen" id="front">
		<%@include file="navBar.jsp"%>

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

			<div class="flex justify-center w-4/5 mt-7">
				<div class="bg-[#3D4D64] h-4/6 w-5/6 rounded-md">
					<div class="w-2/5">
						<div class="bg-[#D9D9D9] h-[150px] w-[130px] m-5"></div>
						<div class="flex items-center ml-5">
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-400"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
								<title>First star</title><path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-400"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
								<title>Second star</title><path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-400"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
								<title>Third star</title><path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
							<svg aria-hidden="true" class="w-5 h-5 text-yellow-400"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
								<title>Fourth star</title><path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
							<svg aria-hidden="true"
								class="w-5 h-5 text-gray-300 dark:text-gray-500"
								fill="currentColor" viewBox="0 0 20 20"
								xmlns="http://www.w3.org/2000/svg">
								<title>Fifth star</title><path
									d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
						</div>
						<!-- number out of 5 -->
						<p
							class="ml-6 text-sm font-medium text-gray-500 dark:text-gray-400">4.95
							out of 5</p>
					</div>
					<div class="w-3/5">
						<p>Title</p>
					</div>
				</div>
			</div>
		</div>
</body>
</html>