# Circle CI Flat Badge

Are you annoyed by the fact that Circle doesn't follow convetions when it comes to badge styling:

![Circle](http://artur.s3.amazonaws.com/circle-png.png)

![Circle](http://artur.s3.amazonaws.com/circle-svg.svg)

The best they can do is provide an old-fashioned plastic style:

![Circle](http://artur.s3.amazonaws.com/circle-shield.svg)

We want it flat!!

![FlatPlease](https://img.shields.io/badge/build-passing-brightgreen.svg)

## About

This sinatra app receives a **public or private** circle project and outputs a flat svg badge, thanks to [shields.io](http://shields.io)

## Using

Clone this repo and install the dependencies with `bundle install`. Then, run the app:

`bundle exec ruby app.rb`

And go to

[`http://localhost:4567/gh/circleci/circle.svg?token=3cc80b12ab3627373c76e13735b8bc00a1259b9e`](http://localhost:4567/gh/circleci/circle.svg?token=3cc80b12ab3627373c76e13735b8bc00a1259b9e)

That's it!
