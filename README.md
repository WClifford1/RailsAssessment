# README

# Two sided marketplace:
We have created an app which will be using Ruby on Rails which is connected to a Postgresql database. We have decided to base it upon a electronics marketplace.

#Authenication
We use the Ruby gem Devise which sets up the authentication for the application.

#Authorisation
The application will also be using Devise for the Authorisation features. We will also be using rollify to set roles for the users which will determine what they can and can't do.

#Uploading capability of images
We are using a cloud service called cloudinary to upload the images to a host while locally it uses rails in-bult ActiveRecord.

#Payment plan
For the payment plan of the app we are using stripe which is a third party platform that handles payments. We inserted the code to use a javascript form upon checkout and will be redirected to a success page when finished.

#Gems
the gems we are using are as follows:
Rails: 5.2.3
Ruby: 2.6.0
Seed_dump
Rolify
Activestorage-cloudinary-service: 0.2.3
Bulma-rails: 0.6.1
Better_errors: 2.4
Guard: 2.14
Guard-livereload: 2.5
Dotenv-rails
Cloudinary
Stripe: 
Devise: 
PG: 0.18
Puma: 3.11
Sass-Rails: 5.0
Uglifier: 1.3.0
Bootstrap: 4.3.1
Jquery-Rails: 
Coffee-Rails: 4.2
Turbolinks: 5
Jbuilder: 2.5
Bootsnap: 1.1.0

Development group:
Web-Console: 3.3.0
Listen: 3.0.5
Spring:
Spring-Watcher-Listen: 2.0.0
Test group:
Capybara: 2.15
Selenium-Webdriver:
Chromedriver-Helper

Production group:
PG: 0.18

#Deployment platform
At this moment in time we are using Heroku to deploy the application to the internet

#Link to pusblished app
https://glacial-castle-71209.herokuapp.com/

#Link to Github Repo
https://github.com/WClifford1/RailsAssessment

#Description
The app is a two-sided marketplace, the user is able to log-in and out, view listings, create their own listing or purchase a listing.

#Problem definition/Purpose
The problem we came up with is that people have unused electronics that they want to get rid of and want to sell them at a centralised marketplace.

#Functionality/Features
User have the ability to:
Create, edit, delete, log-in and log-out of their accounts using their email, username and password.
View listings of items for sale.
Purchase multiple listings using a shopping cart system.
Make payment using credit card via Stripe.
Create, edit and delete their own listings for items that they want to sell.
View the website's contact us, about us and terms and conditions pages.


#Screenshots
[url=https://ibb.co/ZVC9LgK][img]https://i.ibb.co/bPntWvL/Screen-Shot-2019-05-12-at-4-56-10-pm.png[/img][/url]
[url=https://ibb.co/cg0jstL][img]https://i.ibb.co/w0Vf2Cs/Screen-Shot-2019-05-12-at-4-56-40-pm.png[/img][/url]
[url=https://ibb.co/sCMyWBP][img]https://i.ibb.co/qCPkJZn/Screen-Shot-2019-05-12-at-4-57-29-pm.png[/img][/url]
[url=https://ibb.co/mT13Nbj][img]https://i.ibb.co/W5qLVGh/Screen-Shot-2019-05-12-at-4-58-00-pm.png[/img][/url]
[url=https://ibb.co/X2zbVFp][img]https://i.ibb.co/h7KyC2H/Screen-Shot-2019-05-12-at-4-58-13-pm.png[/img][/url]
[url=https://ibb.co/bNXdXQ2][img]https://i.ibb.co/XFtJtj3/Screen-Shot-2019-05-12-at-5-01-27-pm.png[/img][/url]
[url=https://ibb.co/XY1wKH6][img]https://i.ibb.co/mNkx2pd/Screen-Shot-2019-05-12-at-4-59-33-pm.png[/img][/url]
[url=https://ibb.co/MPHcQGb][img]https://i.ibb.co/SVgtGd2/Screen-Shot-2019-05-12-at-5-04-00-pm.png[/img][/url]
[url=https://ibb.co/w6g7dJx][img]https://i.ibb.co/XJLDWyv/Screen-Shot-2019-05-12-at-5-04-20-pm.png[/img][/url]
[url=https://ibb.co/bNXdXQ2][img]https://i.ibb.co/XFtJtj3/Screen-Shot-2019-05-12-at-5-01-27-pm.png[/img][/url]
[url=https://ibb.co/TYPMjTP][img]https://i.ibb.co/9cyHKvy/Screen-Shot-2019-05-12-at-5-05-32-pm.png[/img][/url]
[url=https://imgbb.com/][img]https://i.ibb.co/BjvPX48/Screen-Shot-2019-05-12-at-5-06-02-pm.png[/img][/url]
[url=https://ibb.co/bB6XxLM][img]https://i.ibb.co/XsWt9pr/Screen-Shot-2019-05-12-at-5-07-13-pm.png[/img][/url]

#Tech stack
Ruby 2.6.0
Rails 5.2.3
PostgreSQL

#Instructions on how to setup the application
Deployment instructions: fork copy or git clone ssh address

In the database.yml file under the default section add your username, host and port for postgresql. For password add the line "password: <%= ENV['DB_PASSWORD'] %>"

Create your own .env file in the root directory.
Add the following lines and fill in the respective values after the "=":

DB_PASSWORD=
CLOUDINARY_CLOUD_NAME=
CLOUDINARY_API_KEY=
CLOUDINARY_API_SECRET=
STRIPE_PUBLISHABLE_KEY=
STRIPE_SECRET_KEY=

In terminal run: bundle install, rails db:setup, rails db:migrate

To deploy to heroku: 

Ensure your heroku dashboard has been set up with the correct values for your cloudinary and stripe keys, as found in the values you entered in your .env file.

In terminal run: heroku login, heroku create, git push heroku master, heroku run rails db:migrate

#Design documentation


#Design process
We used an agile methodology project management process.
To start we decided what type of app we wanted to build. Once we had agreed to build an online electronics marketplace we then brainstormed ideas on a whiteboard. We brainstormed features that we wanted to add to the app and then seperated the features into catagroies of what would be needed for a minimal viable product and for what would be features which would be added later. 
 

#User stories
As an intended user of the application, I can register for a profile via the registration page
As a user of the app I can log into my profile from the log in page
As a user of the app I can edit my profile name, email, username, listing and password.
As a user of the app I can list a product for sale
As a user of the app I can create and edit the title of my product
As a user of the app I can place multiple images on my listing of a single product
As a user of the app I can create, edit, and delete descriptions of my listing
As a user of the app I can decide on the pricing of my product
As a user of the app I can add one or more products to my cart
As a user of the app I can remove one or more items from my cart
As a user of the app I can then choose to checkout after adding to cart or resume browsing for more products
As a user of the app I can purchase a product from a listing
As a user of the app I can logout of my account
As a user of the app I can delete my account
As a user of the app I can easily access the landing page, listings page, edit profile page and logout page from the nav bar
As a user I can access the about us page, contact us page, listings page and terms and conditions page from the landing page.


#Workflow Diagram of user journey/s
[url=https://ibb.co/CBHTzNP][img]https://i.ibb.co/fMxP2BD/Screen-Shot-2019-05-12-at-5-18-18-pm.png[/img][/url]


#Wireframes
#Desktop Wireframes
[url=https://ibb.co/WKzn7Bk][img]https://i.ibb.co/ysk0Kg6/Cart-Menu-Page.jpg[/img][/url]
[url=https://ibb.co/VM8YFRS][img]https://i.ibb.co/zPwV3pR/Edit-Profile-Page.jpg[/img][/url]
[url=https://ibb.co/pZmBqfS][img]https://i.ibb.co/ctmSq6j/Landing-Page-2.jpg[/img][/url]
[url=https://ibb.co/64WGcq8][img]https://i.ibb.co/vJjfCMh/Landing-Page-1.jpg[/img][/url]
[url=https://ibb.co/sC5Vdqb][img]https://i.ibb.co/VxHqcTJ/Listings-Page.jpg[/img][/url]
[url=https://ibb.co/Z2P6NM3][img]https://i.ibb.co/z6YhN41/Order-Success-Page.jpg[/img][/url]
[url=https://ibb.co/bLdSPzV][img]https://i.ibb.co/Cv0kzhy/Sell-Page.jpg[/img][/url]
[url=https://ibb.co/6PgRptd][img]https://i.ibb.co/cFDcp8m/Sign-In-Page.jpg[/img][/url]
[url=https://ibb.co/ZGt443G][img]https://i.ibb.co/17hyy37/Sign-Up-Page.jpg[/img][/url]

#mobile phone wireframes
[url=https://imgbb.com/][img]https://i.ibb.co/LvGJ2Mq/Cart-Menu.jpg[/img][/url]
[url=https://ibb.co/w6k5ksG][img]https://i.ibb.co/pX7Y7yV/Landing-Page-1.jpg[/img][/url]
[url=https://ibb.co/YLVQ67B][img]https://i.ibb.co/2kphw73/Landing-Page-2.jpg[/img][/url]
[url=https://imgbb.com/][img]https://i.ibb.co/0CFfGJt/Listings-Page.jpg[/img][/url]
[url=https://ibb.co/fGKB5P0][img]https://i.ibb.co/93fzLCY/Log-In-Page.jpg[/img][/url]
[url=https://ibb.co/7k5kMqT][img]https://i.ibb.co/Sf8fYz1/Order-Success-Page.jpg[/img][/url]
[url=https://ibb.co/dJ1GttZ][img]https://i.ibb.co/Dgs5YYd/Sell-Page-1.jpg[/img][/url]
[url=https://ibb.co/G2VC292][img]https://i.ibb.co/swFswCw/Sell-Page-2.jpg[/img][/url]
[url=https://ibb.co/WWzzQhJ][img]https://i.ibb.co/pvKKg7F/Sign-Up-Page.jpg[/img][/url]

#Tablet wireframes
[url=https://ibb.co/zG4Yt7c][img]https://i.ibb.co/FgDMd0v/Cart-Menu.jpg[/img][/url]
[url=https://ibb.co/2SsWmZH][img]https://i.ibb.co/KDLbRKS/Edit-Profile.jpg[/img][/url]
[url=https://ibb.co/pZmBqfS][img]https://i.ibb.co/ctmSq6j/Landing-Page-2.jpg[/img][/url]
[url=https://ibb.co/w6k5ksG][img]https://i.ibb.co/pX7Y7yV/Landing-Page-1.jpg[/img][/url]
[url=https://ibb.co/nR7d511][img]https://i.ibb.co/PtcXfWW/Listings-Page.jpg[/img][/url]
[url=https://ibb.co/fGKB5P0][img]https://i.ibb.co/93fzLCY/Log-In-Page.jpg[/img][/url]
[url=https://ibb.co/7k5kMqT][img]https://i.ibb.co/Sf8fYz1/Order-Success-Page.jpg[/img][/url]
[url=https://ibb.co/dJ1GttZ][img]https://i.ibb.co/Dgs5YYd/Sell-Page-1.jpg[/img][/url]
[url=https://ibb.co/G2VC292][img]https://i.ibb.co/swFswCw/Sell-Page-2.jpg[/img][/url]
[url=https://ibb.co/WWzzQhJ][img]https://i.ibb.co/pvKKg7F/Sign-Up-Page.jpg[/img][/url]


#Database entity relationship diagram
[url=https://ibb.co/9Z5X0Rg][img]https://i.ibb.co/qJQG8bj/Screen-Shot-2019-05-09-at-3-55-11-pm.png[/img][/url]


#Details of planning process

Our planning started by deciding what type of app we wanted to build. Once we had settled on an online electronic marketplace, we wrote down on a whiteboard a list of the features we wanted. We seperated the features into those which would be used to create a minimal viable product and those which we would add after the MVP had been created. We allocated seperate tasks to each member. Throughout the process we would check how the app was coming along, decide what we wanted to do the next day, and allocate tasks to each member. We tracked tasks through Trello, and added our individual work through github branches.


#Project plan and timeline
[url=https://imgbb.com/][img]https://i.ibb.co/xGBjc8W/Screen-Shot-2019-05-12-at-5-19-45-pm.png[/img][/url]
For the planning process we dedicated 2-3 days for brainstorming as well as the planning process of the ERD.
For the coding process we tried to get at least 1-2 features complete per day. As for the documentation that was used for the remaining days


#Screenshots of trello board

[url=https://ibb.co/kSsmX8K][img]https://i.ibb.co/YLF0hk2/Screen-Shot-2019-05-12-at-5-24-36-pm.png[/img][/url]
[url=https://ibb.co/61yHb8q][img]https://i.ibb.co/X3W7pDG/Screen-Shot-2019-05-12-at-5-25-32-pm.png[/img][/url]
[url=https://ibb.co/V9wc8CB][img]https://i.ibb.co/xLFtQg5/Screen-Shot-2019-05-12-at-5-25-55-pm.png[/img][/url]
[url=https://ibb.co/r4TznFZ][img]https://i.ibb.co/18hPH79/Screen-Shot-2019-05-12-at-5-26-05-pm.png[/img][/url]


#---------------------#


#Answers to the 23 questions

1. What is the need (i.e. challenge) that you will be addressing in your project?

  We will be addressing the need for a online marketplace dedicated solely to purchasing and selling electronic goods. 


2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it     a problem that needs solving?

  Although there are many online marketplaces, we want to build one with a narrorwer focus on electronic goods. Electronic goods are often upgraded and therefore can be bought and sold regularily.


3. Describe the project will you be conducting and how. your App will address the needs.

  The app will create an online marketplace for electronic goods. It will allow users to sell their electronic items with photos, a description, and location at a price that they set. They are also able to browse other listings to make purchases.


4. Describe the network infrastructure the App may be based on

  The routes.rb file uses resources routing for the orders, carts, listings, charges and users controllers to generate the show, new, edit, create, update and destroy actions for each controller. The charges controller is used for making payments via Stripe. Additionally there are gets routings to display the contact us, about us and terms and conditions pages. The root page is set to be the landing page. 


5. Identify and describe the software to be used in your App

  Software being used in this app consists of Stripe which is a third party payment platform. 
  Cloudinary: cloudinary is an end-to-end image management solution for websites and mobile app. Cloudinary covers pretty much everything from uploading images, storage of images, manipulations and optimisation. We integrated cloudinary into our app by using a file_field and saving the image to cloudinary servers by having stored our API and Secret API Key. We implemented the service into our database.yml and storage.yml files.
  Stripe: an online payment processor for internet businesses. Stripe is a suite of payment APIs that powers commerce for online businesses of all sizes. How we implemented stripe is by use of a gateway between the checkout and stripe. We had to implement code into the controller based on the documentation found on the stripe official website. The code found on the checkout runs a javascript file which creates a form then send it to stripe.
  Bundler:  Is an installation of all required gems and files for your rails application to run
  Postgresql/pgadmin: a powerful, open source object-relational database system that uses and extends the SQL language combined with many features. We’ve implemented postgresql into our Rails app upon generation of our app which transformed the migration tables into a postgresql database as well as having models based upon it.
  Visual Studio Code:  a text-editor created by Microsoft which supports many programming languages. We used VScode to build and code our app in the Ruby on Rails language.


6. Identify the database to be used in your App and provide a justification for your choice

  We chose to use PosterSQL as our database for multiple reasons.

  PostgreSQL is an open source database, so we would have access to the full version and there would be no issues concerning licensing. PostgreSQL is a community driven open source database which is backed by different companies, which means it is highly unlikely that it will be bought out by a single company, therefore PostgreSQL should be safe to use in the future.

  PostgreSQL’s functionality and performance far exceeds the requirements of our assessment project and it supports all the datatypes that we will require.


7. Identify and describe the production database setup (I.e. Postgres instance)

  Ensure when creating the app in the terminal use “rails new “appname” —database=postgresql”
  To make Postgresql the default database for development and production. In database.yml add the username, port and host lines with their respective values. Add password: <%= ENV['DB_PASSWORD'] %> and then in the .env file add DB_PASSWORD=“Your password”. In the terminal run “rails g migration “table name” “field names” to create a migration file to add tables and fields to the database. Run the migration files with in the terminal with “rails db:migrate”.


8.  Describe the architecture of your App.

  Models, Controllers, Views. 
  The architecture of our app is based off the formulation and relation of the models, controllers, and views of our application. Essentially each element is supporting the next in emulating a full scale working application. The models are used to control the back end structure of the website in hosting databases, authentication actions and authorization methods. The views delivers the rendered pages users actually see when they visit our application. In order to link the backend and front end together, we use controllers to organize what information to call from the model and send to the views. All of these components working in unison deliver the architecture of our application. 


9.  Explain the different high-level components (abstractions) in your App.

  In the Rails we use high-level components such as MVC(model,view,controller). Our models are the interface between the database. The rails server is an executable that instantiates a web server. It listens on a IP(internet protocol) and a port while we are developing the app.  The rails server starts on the local machine and listens for requests on port:3000 so it can access it using the web address http://0.0.0.0:3000. The routes comprise of code that tells the app what requests are or should be used. The controllers comprise of actions that handle the requests with the help of actions. The views are responsible for the html or markup which is being sent back to the browser, however the views rely on the data being prepared by the controller.


10. Detail any third party services that your App will use

  A list of third party services along with a detailed description of its integration into our application has been listed below: 
  Stripe – A third party service enabled to allow users to make and receive over the internet. We’ve decided to use this service above others because all sensitive data  completely bypasses our application and goes directly to Stripe, then Stripe simple give the user a unique token which relates to the transaction.
  Postgres – In order to manage the database of users detailing profile data and personal information, we’ve decided to use Postgres. We’ve decided to use Postgres as it enlists many benefits as listed below:
  Allows multiple network types, 
  able to store multiple arrays due to its object relation database
  Supports every data type (uuid, monetary, enumerated, geometric, binary, network address, bit string,text search, xml, json, array, composite and range types, as well as some internal types for object identification and log location)
  PostgreSQL isn't just relational, it's object-relational. A fundamental characteristic of an object-relational database is support for user-defined objects and their behaviors including data types, functions, operators, domains and indexes. This makes PostgreSQL extremely flexible and robust. Among other things, complex data structures can be created, stored and retrieved.
  GitHub – We used Github to provide access control and exercise use of collaboration features such as bug tracking, feature requests, task management, and readme for our project. In addition, we’re able to backtrack on coding structures if our coding document invokes errors. 
  Cloudinary – A third party service used to manage an application's image and video-related needs all in the cloud. It offers a wide range of media management tools used by numerous web and mobile app developers worldwide. The solution supports image uploads, manipulations, and optimization for the web, cloud storage, and delivery.
  Heroku – Heroku is a container-based cloud Platform as a Service (PaaS). We’ve used Heroku to deploy and manage our application. We’ve decided to use Heroku because it is fully managed, allowing us the freedom to focus on the application without the distraction of maintaining servers,hardware, or infrastructure. 


11. Describe (in general terms) the data structure of marketplace apps that are similar to your own        (e.g. eBay, Airbnb).

  The data structure of our application replicates that of Ebay in delivering a marketplace for users to list as well as purchase products. Differentiation occurs in the enforcement of a technological hub where users can buy and sell used gadgets.


12. Discuss the database relations to be implemented.

  We have quite a few tables so they go as follows:
  Users  -> Has many listings (one to many)
  The reason Users has many listings is because we want them to be able to create more than just one we want them to be able to create many. 
  Cart -> Has many order(one to many)
  Carts has many orders because we want users to be able to add more than 1 item to the cart
  Order -> Belongs to user(one to many)
  Orders belongs to users as a one to many relation because a user can create multiple orders
  Listing -> Belongs to user, Has many attachments (one to many)
  Listings belongs to users as a one to many as well as has many attachments because we want the user to be able to create many listings as well as be able to have many attachments per listing
  Roles -> has and belongs to many users (one to one and many to many)
  This was implemented through the rolify gem but one user can have many roles.


13. Describe your project’s models in terms of the relationships (active record associations) they         have with each other

  Listing model - Controls the items that can be bought and sold. Belongs to the user mode in a one to many relationship, so that one user can have many listings, while each listing can only belong to one user. The listing model has a “can_update?(user)” method which allows only the user which the listing belongs to be able to edit or delete the listing. The listing model also has a has_many relationship with the order model, which is used to place listings into the user’s shopping cart.

  Cart model - Has many orders. The order model is used to place items from the listing model to the cart model.

  Order model - belongs to the listing model and belongs to the cart model. Used to place listings into the carts table.

  Role model - belongs to the users table. Is used to set permissions for users, namely that the user can only edit or delete listings that belong to them.

  User model - created with the devise gem which allows users to sign up, sign in, sign out, edit or delete their account. Has many listings.


14. Provide your database schema design.
  
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.decimal "price"
    t.string "description"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cart_id"
    t.integer "quantity", default: 1
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["listing_id"], name: "index_orders_on_listing_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "listings", "users"
  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "listings"
end


15. Provide the User stories for you app

  As an intended user of the application, I can register for a profile via the registration page
  As a user of the app I can log into my profile from the log in page
  As a user of the app I can edit my profile name, email, username, listing and password.
  As a user of the app I can list a product for sale
  As a user of the app I can create and edit the title of my product
  As a user of the app I can place multiple images on my listing of a single product
  As a user of the app I can create, edit, and delete descriptions of my listing
  As a user of the app I can decide on the pricing of my product
  As a user of the app I can add one or more products to my cart
  As a user of the app I can remove one or more items from my cart
  As a user of the app I can then choose to checkout after adding to cart or resume browsing for more products
  As a user of the app I can purchase a product from a listing
  As a user of the app I can logout of my account
  As a user of the app I can delete my account
  As a user of the app I can easily access the landing page, listings page, edit profile page and logout page from the nav bar
  As a user I can access the about us page, contact us page, listings page and terms and conditions page from the landing page.


16. Provide Wireframes for your App.

#Wireframes
#Desktop Wireframes
[url=https://ibb.co/WKzn7Bk][img]https://i.ibb.co/ysk0Kg6/Cart-Menu-Page.jpg[/img][/url]
[url=https://ibb.co/VM8YFRS][img]https://i.ibb.co/zPwV3pR/Edit-Profile-Page.jpg[/img][/url]
[url=https://ibb.co/pZmBqfS][img]https://i.ibb.co/ctmSq6j/Landing-Page-2.jpg[/img][/url]
[url=https://ibb.co/64WGcq8][img]https://i.ibb.co/vJjfCMh/Landing-Page-1.jpg[/img][/url]
[url=https://ibb.co/sC5Vdqb][img]https://i.ibb.co/VxHqcTJ/Listings-Page.jpg[/img][/url]
[url=https://ibb.co/Z2P6NM3][img]https://i.ibb.co/z6YhN41/Order-Success-Page.jpg[/img][/url]
[url=https://ibb.co/bLdSPzV][img]https://i.ibb.co/Cv0kzhy/Sell-Page.jpg[/img][/url]
[url=https://ibb.co/6PgRptd][img]https://i.ibb.co/cFDcp8m/Sign-In-Page.jpg[/img][/url]
[url=https://ibb.co/ZGt443G][img]https://i.ibb.co/17hyy37/Sign-Up-Page.jpg[/img][/url]

#mobile phone wireframes
[url=https://imgbb.com/][img]https://i.ibb.co/LvGJ2Mq/Cart-Menu.jpg[/img][/url]
[url=https://ibb.co/w6k5ksG][img]https://i.ibb.co/pX7Y7yV/Landing-Page-1.jpg[/img][/url]
[url=https://ibb.co/YLVQ67B][img]https://i.ibb.co/2kphw73/Landing-Page-2.jpg[/img][/url]
[url=https://imgbb.com/][img]https://i.ibb.co/0CFfGJt/Listings-Page.jpg[/img][/url]
[url=https://ibb.co/fGKB5P0][img]https://i.ibb.co/93fzLCY/Log-In-Page.jpg[/img][/url]
[url=https://ibb.co/7k5kMqT][img]https://i.ibb.co/Sf8fYz1/Order-Success-Page.jpg[/img][/url]
[url=https://ibb.co/dJ1GttZ][img]https://i.ibb.co/Dgs5YYd/Sell-Page-1.jpg[/img][/url]
[url=https://ibb.co/G2VC292][img]https://i.ibb.co/swFswCw/Sell-Page-2.jpg[/img][/url]
[url=https://ibb.co/WWzzQhJ][img]https://i.ibb.co/pvKKg7F/Sign-Up-Page.jpg[/img][/url]

#Tablet wireframes
[url=https://ibb.co/zG4Yt7c][img]https://i.ibb.co/FgDMd0v/Cart-Menu.jpg[/img][/url]
[url=https://ibb.co/2SsWmZH][img]https://i.ibb.co/KDLbRKS/Edit-Profile.jpg[/img][/url]
[url=https://ibb.co/pZmBqfS][img]https://i.ibb.co/ctmSq6j/Landing-Page-2.jpg[/img][/url]
[url=https://ibb.co/w6k5ksG][img]https://i.ibb.co/pX7Y7yV/Landing-Page-1.jpg[/img][/url]
[url=https://ibb.co/nR7d511][img]https://i.ibb.co/PtcXfWW/Listings-Page.jpg[/img][/url]
[url=https://ibb.co/fGKB5P0][img]https://i.ibb.co/93fzLCY/Log-In-Page.jpg[/img][/url]
[url=https://ibb.co/7k5kMqT][img]https://i.ibb.co/Sf8fYz1/Order-Success-Page.jpg[/img][/url]
[url=https://ibb.co/dJ1GttZ][img]https://i.ibb.co/Dgs5YYd/Sell-Page-1.jpg[/img][/url]
[url=https://ibb.co/G2VC292][img]https://i.ibb.co/swFswCw/Sell-Page-2.jpg[/img][/url]
[url=https://ibb.co/WWzzQhJ][img]https://i.ibb.co/pvKKg7F/Sign-Up-Page.jpg[/img][/url]


17. Describe the way tasks are allocated and tracked in your project

  During the planning process we decided on each feature that we wanted to include. We then allocated each member a feature or features to work on. After the mimimal viable product was complete we then did the same process for additional features. Throughout the process, at the end of each day we assess what the current build of the product was like, and decide on what tasks would be done by each member the next day. We tracked tasks through Trello.


18. Discuss how Agile methodology is being implemented in your project

  Our team decided to begin by producing a minimal viable product first, and then start adding additional features. This meant that we had a functional application which we could present to a client, which could then be customised by the client. The minimal viable product of our project was a simple working version of the marketplace, which was completed at the end of the first week of the timeframe. We then upgraded the minimal viable product by adding a shopping cart system, landing page, receipt page, navigation bar and other styling changes. 

  At the end of each day as a whole team we reviewed the state of the current product, what features we wanted to add or change, and allocate each member’s tasks the next day to achieve our plan.


19. Provide an overview and description of your Source control process

  For our source control we used github. We created a main repository on one member’s GitHub account and added the other members as contributors. Each member would create their own branch for the features that they were working on that day. Once each feature was complete it was pushed and merged to the master branch. This process worked well, as we were able to work on seperate features without affected other areas of the code. 


20. Provide an overview and description of your Testing process

  We used rails in-built testing for each feature that was added, after it was added. We would also test the production version by making frequent pushes to Heroku. We did not use test-driven development by writing tests before writing the code. Using a test-driven development process could have provided benefits of having a clearer direction of what to work on and made the code more resilient to change, therefore after reviewing our development process we feel as though test-driven development would be beneficial to use in future projects. 


21. Discuss and analyse requirements related to information system security.

  The requirements related to information system security enforces the discretion of payment information as well as user confidentiality. In order to securely intake payment information, we will be redirecting payment methods through stripe. We chose Stripe because it is PCI Level I encrypted so all of the transactions are protected from a potential data breach. In addition, user confidentiality is our guarantee with password information to be hashed rendering potential breaches unable to take or manipulate profile information.


22. Discuss methods you will use to protect information and data.

   In order to secure our clients personal data and information, we’ve integrated methods of authorization and authentication into our application. The ‘Devise’ gem has allowed us to achieve this safety measure with ease. As users visit our application, they’ll be met with a login page in order to view any products that have been uploaded on our application. This is the authentication side of things, and users will first need to be registered with our servers. Registration requires a username, valid email, and a valid password. Upon login, both the user email and password must match in order to successfully authenticate the user. Upon entry, a user is able to view, edit and delete their listing but unable to edit or delete other users listings. This is known as authorization which we will use to manage the permissions of each user.


23. Research what your legal obligations are in relation to handling user data.

  Some of the legal obligations we are required to cover under the privacy act are 
  Must implement practices, procedures and systems to ensure compliance with the APP’s  and to handle complaints.
  Must make available an up-to-date and clear privacy policy, setting out certain information on how you will manage personal information.
  Must take reasonable steps to protect the personal information collected or held.
  Must give individuals access to their personal information upon request
  Must have correct personal information where we become aware it is either inaccurate, incomplete, out of date, irrelevant, misleading or where requested by the individual
  Can only collect personal information if it is necessary for the function or activity of the business
  Should not use or disclose personal information for a purpose different from the original purpose of collection, except in limited circumstances
  Must not use or disclose personal information for a direct marketing purpose, except in a limited circumstance
  Some of the legal obligations in the EU are 
  Privacy policies will have to be written in a clear, straightforward language
  The user will need to give an affirmative consent before his/her data can be used by a business. Silent is not consent
  Will need to clearly inform the user about transferring data
  Will have to inform users without delay in case of a harmful data breach
  The user will have the option to move his/her data 
  The european data protection board grouping all 28 data protection authorities, will have the powers to provide guidance and interpretation and adopt binding decisions in case several EU countries are concerned by the same case.