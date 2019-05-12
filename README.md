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

#Ipad wireframes
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


#Database entity relationship diagram

[url=https://ibb.co/9Z5X0Rg][img]https://i.ibb.co/qJQG8bj/Screen-Shot-2019-05-09-at-3-55-11-pm.png[/img][/url]
#---------------------#

#Details of planning process

#Project plan and timeline

#Screenshots of trello board




#---------------------#
#Answers to the 23 questions


