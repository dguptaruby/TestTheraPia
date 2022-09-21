## Install

### Clone the repository

```bash
git clone https://github.com/dguptaruby/TestTheraPia
cd TestTheraPia

```

### Check your Ruby version

```bash
ruby -v
```

The ouput should start with something like `ruby 3.0.2

If not, install the right ruby version using rvm (it could take a while):

```bash
rvm install "ruby-3.0.2"
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```bash
bundle
```

### Update database.yml file 
In database.yml file, edit the database configuration as required.

### Initialize the database# README
2
Clone the repository
3
​
4
​
5
This README would normally document whatever steps are necessary to get the
6
application up and running.
7
​
8
Things you may want to cover:
9
​
10
* Ruby version
11
​
12
* System dependencies
13
​
14
* Configuration
15
​
16
* Database creation
17
​
18
* Database initialization
19
​
20
* How to run the test suite
21
​
23
​
24
* Deployment instructions
25
​
26
* ...
27


```ruby
rails db:create db:migrate db:seed
```

### Serve

```ruby
rails s
```
And now you can visit the site with the URL http://localhost:3000/


```


