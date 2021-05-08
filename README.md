# Dandora Resident Management System

_Dandora_ is a locality in Nairobi, Kenya. This repository is a laravel app that serves as the backend for a concept  Resident Management System([https://github.com/ndirangug/dandora-frontend](https://github.com/ndirangug/dandora-frontend))that allows individuals to do the following:
-   Browse available houses
-   Book / Rent a house
-   Make payments for rent, booking or community contribution
-   Admin can see all payments made by all members of the community
-   Admin can broadcast a message to all members of the community
  
The app persists data to a mariadb instance


## Run on localhost
### Prerequisites
- composer
- mysql

```bash
# install dependancie
$ composer install

# initial setup
$ php artisan migrate
$ php artisan db:seed

# start server
$ php artisan serve

# make a request to the server
$ curl localhost:8000/api/houses
```


