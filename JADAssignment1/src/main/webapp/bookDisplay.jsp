<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/9c1a7a3896.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/bookDisplay.css">
    <title>Document</title>
</head>
<body>
    <div class="relative w-full h-screen" id="front">
        <nav class="fixed text-white flex px-16 items-center w-full" id="navBar">
            <div class="flex flex-nowrap justify-around w-full">
                <a href="/home" class="flex items-center gap-3">
                    <img class="w-16 rounded-full" src="./src/book_logo.jpg" alt="">
                    <h4 class="font-bold text-xl text-white tracking-wide">SP BookStore</h4>
                </a>
                <div class="flex flex-nowrap justify-evenly gap-16">
                    <a href="/search"
                        class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center">
                        <i class="fa-solid fa-magnifying-glass text-white"></i>
                        <h4 class="text-white">Search</h4>
                    </a>
                    <a href="/cart" class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center">
                        <i class="fa-solid fa-cart-shopping text-white"></i>
                        <h4 class="whitespace-normal w-20 text-center text-white">Cart</h4>
                    </a>
                    <a href="/User" class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center">
                        <i class="fa-solid fa-user text-white"></i>
                        <h4 class="text-white">User</h4>
                    </a>
                    <a href="/Books"
                        class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center">
                        <i class="fa-solid fa-book text-white"></i>
                        <h4 class="text-white">Books</h4>
                    </a>
                </div>
            </div>
        </nav>

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
                <li class="flex items-center py-5">
                    <input type="checkbox" id="checkbox1"
                        class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
                    <label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Horror</label>
                </li>
                <li class="flex items-center pb-5">
                    <input type="checkbox" id="checkbox1"
                        class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
                    <label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Fiction</label>
                </li>
                <li class="flex items-center pb-5">
                    <input type="checkbox" id="checkbox1"
                        class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
                    <label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Non - Fiction</label>
                </li>
                <li class="flex items-center pb-5">
                    <input type="checkbox" id="checkbox1"
                        class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
                    <label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Fantasy</label>
                </li>
                <li class="flex items-center pb-5">
                    <input type="checkbox" id="checkbox1"
                        class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
                    <label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Mystery</label>
                </li>
                <li class="flex items-center pb-5">
                    <input type="checkbox" id="checkbox1"
                        class="form-checkbox h-4 w-4 bg-black text-white transition duration-150 ease-in-out" />
                    <label for="checkbox1" class="ml-2 pl-3 text-l font-semibold">Romance</label>
                </li>
            </ul>
        </div>
    </div>
</body>
</html>