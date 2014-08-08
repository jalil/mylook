# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'youtube_it'
API_KEY = "AIzaSyCJQy1o0qwdB7LzwZ5gmLiSUUap6nfBpxw"
client = YouTubeIt::Client.new(:dev_key => API_KEY)

Video.destroy_all
Category.destroy_all
video = ""

open("/home/jalil/dev/mylook/db/keyword_list.txt").each do |cat|
video = client.videos_by(:query => cat, :per_page => 5)
category = Category.create(name: cat)
  video.videos.each_with_index do |vid, num|
    Video.create(category_id: category.id  , title: vid.title, url: vid.player_url, image: vid.thumbnails[num].url)
  end
end

