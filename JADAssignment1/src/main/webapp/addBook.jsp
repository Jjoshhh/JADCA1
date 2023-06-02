<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.5/flowbite.min.js"></script>
    <link rel="stylesheet" href="./css/adminPage.css" />
    <script src="./js/addBook.js"></script>
    <title>Document</title>
  </head>
  <body>
    <!--Navigation Bar-->
    <nav
      class="bg-black text-white flex px-16 items-center w-full mb-10"
      id="navBar"
    >
      <div class="flex flex-nowrap justify-around w-full">
        <a href="/home" class="flex items-center gap-3">
          <img class="w-16 rounded-full" src="./src/book_logo.jpg" alt="" />
          <h4 class="font-bold text-xl text-white tracking-wide">
            SP BookStore
          </h4>
        </a>

        <!--Nav main elements-->
        <div class="flex flex-nowrap justify-evenly gap-16">
          <!--Book Inventory Management-->
          <a
            href="./bookInv.html"
            class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center"
          >
            <i class="fa-solid fa-magnifying-glass text-white"></i>
            <h4 class="text-white">Book Inventory</h4>
          </a>
          <!--Dashboard for sales-->
          <a
            href="/cart"
            class="font-medium px-3 py-2 rounded-lg hover:bg-neutral-700 w-[100px] text-center"
          >
            <i class="fa-solid fa-cart-shopping text-white"></i>
            <h4 class="whitespace-normal w-20 text-center text-white">
              Dashboard
            </h4>
          </a>
          <!--Logout-->
          <a href="./" class="flex font-medium px-3 py-2">
            <button class="Btn">
              <div class="pr-16">Logout</div>
              <svg
                class="svg text-4xl"
                xmlns="http://www.w3.org/2000/svg"
                width="16"
                height="16"
                fill="currentColor"
                class="bi bi-person-vcard-fill"
                viewBox="0 0 16 16"
              >
                <path
                  d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm9 1.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 0-1h-4a.5.5 0 0 0-.5.5ZM9 8a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 0-1h-4A.5.5 0 0 0 9 8Zm1 2.5a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 0-1h-3a.5.5 0 0 0-.5.5Zm-1 2C9 10.567 7.21 9 5 9c-2.086 0-3.8 1.398-3.984 3.181A1 1 0 0 0 2 13h6.96c.026-.163.04-.33.04-.5ZM7 6a2 2 0 1 0-4 0 2 2 0 0 0 4 0Z"
                />
              </svg>
            </button>
          </a>
        </div>
      </div>
    </nav>

    <!--Main Body page-->
    <div class="container mx-auto w-2/3 md:min-w-screen rounded-lg p-10">
      <form class="">
        <!--Header-->
        <div class="grid grid-cols-2">
          <div>
            <h2 class="text-4xl md:text-3xl,text-bold  text-white ">Add a book!</h2>
          </div>
          <div class="text-end">
            <input
              type="submit"
              name="submit"
              id="submit"
              class="rounded bg-white text-end "
            />
          </div>
        </div>
        <div class="grid  md:grid-cols-2">
          <!-- Book Image -->
          <div class="md:col-span-1,col-start-1 self-center">
            <!-- <input type="file" id="bookImg" accept="image/*"> -->

            <img src="./images/BookTest.jpeg" class="">
          </div>
          
          <!--Book Details-->
          <div class="md:col-start-2">
            <div class="grid lg:grid-cols-2 gap-3 md:grid-cols-1">
              <div class="flex flex-col">
                <label class="text-xl sm:text-l text-white">Title</label>
                <input
                  type="text"
                  name="title"
                  id="title"
                  class="rounded text-2xl sm:w-1/3,text-l"
                />
              </div>
              <div class="flex flex-col">
                <label class="text-xl text-white">ISBN-Number</label>
                <input
                  type="number"
                  name="ISBN"
                  id="ISBN"
                  class="rounded text-2xl"
                />
              </div>
              <div class="flex flex-col">
                <label class="text-xl text-white">Publication</label>
                <input
                  type="text"
                  name="publication"
                  id="publication"
                  class="rounded text-2xl"
                />
              </div>
              <div class="flex flex-col">
                <label class="text-xl text-white">Publisher</label>
                <input
                  type="text"
                  name="publisher"
                  id="publisher"
                  class="rounded text-2xl"
                />
              </div>
              <div class="flex flex-col">
                <label class="text-xl text-white">Author</label>
                <input
                  type="text"
                  name="author"
                  id="author"
                  class="rounded text-2xl"
                />
              </div>
              <div class="flex flex-col">
                <label class="text-xl text-white">Genre</label>
                <input
                  type="text"
                  name="genre"
                  id="genre"
                  class="rounded text-2xl"
                />
              </div>
              <div class="flex flex-col">
                <label class="text-xl text-white">Quantity</label>
                <input
                  type="text"
                  name="quantity"
                  id="quantity"
                  class="rounded text-2xl"
                />
              </div>
              <div class="flex flex-col">
                <label class="text-xl text-white">Price</label>
                <input
                  type="number"
                  name="price"
                  id="price"
                  class="rounded text-2xl"
                />
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
