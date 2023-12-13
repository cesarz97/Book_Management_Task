# README
App name: Book_Management_Task

Technology: 
    Ruby
    Rails
    Html
    Bootstrap
    sqlite (DB)
Gems :  
    minitest = for test
    will_paginate = displaying records

* Ruby version = 3.2.2
  rails version = 7.1.2
* Database creation = default db sqlite
* How to run the test suite = rails test model, rails test controller
* Created book model with given attributes
* created Book controller with given actions
* Created all view files for presenting the output
* successfully added model validations [date_format][title_length]
* Added new model and created validations
* Created a basic test case
* run = Just run the program using [ rails s]
Then we can easily able to create books and all actions


In this project, I successfully developed a Book Management Web Application following CRUD principles (Create, Read, Update, Delete). The application includes a Book model with attributes like title, author, published_date, and genre. The Books controller implements standard CRUD operations, including index, show, new, create, edit, update, and destroy actions. Views were created for listing all books, displaying individual book details, adding a new book, editing an existing book, and confirming deletion.

Basic validations were added to the Book model, ensuring the presence of title and author. Bootstrap or any CSS framework was utilized for basic styling, enhancing the visual appeal of the application. Additionally, I introduced a Review model with attributes comment and rating, establishing a one-to-many association with books.

For quality assurance,  basic tests were written for model and controller actions.

