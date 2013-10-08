require 'json'
require 'httparty'

class WelcomeController < ApplicationController
  def index
    response = HTTParty.get("http://reddit.com/r/technology/.json")
    responseHash = JSON.parse response.body
  
    numPosts = responseHash["data"]["children"].length
    for i in 0...numPosts
      post = Post.new
           
      postData = responseHash["data"]["children"][i]["data"]
      post.author = postData["author"]
      post.title = postData["title"]
      post.permalink = postData["permalink"]
      post.articleUrl = postData["url"]

      post.save
    end
    
    @posts = Post.all
  end
end
