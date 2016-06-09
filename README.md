# Buzztweet MVP

The purpose of this project is to:
  -organize, categorize, filter tweets
  -use a basic CRUD web app.
  -store tweet searches onto boards
  -clear board and db after sale time expires

# User Stories (As a user, I want to...)
1. Register and Login to the web app
2. Create buy boards based on purchase categories
3. Specify who to follow within a board
4. Receive updates from my Boards
  a. Boards will auto-update from twitter tweet stream
  b. Boards will hold 60 tweets per hour limit
  c. Boards store tweets to the DB on the hour
5. Query DB
  a. DB will delete tweets every 24 hours

# Stretch Goal
-User notification

# Stretch User Stories (As a user, I want to...)
1. Get notifications from the web app

# Schema
![Schema](/public/imgs/schema.png)