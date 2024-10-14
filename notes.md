Per rails conventions, A join model has two foreign keys. 

We use through associations to go through the join model to find associations.
User => Favorite => Movie and vice versa.
This will allow us to display favorites for each user and movie, and store it in an instance variable.
From there we can display this on the User or Movie show page.