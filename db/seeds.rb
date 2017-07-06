# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do|topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body:"Here i would talk about things i'm working on or about my life, but this blog 
    is work in progress so instead i'm just gonna put some lovely dummy content here.
    You really don't have to read this. It's only here because this blog is not completed yet.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized:15
    )
  end
  
  puts "5 skills created"
  
  8.times do |portfolio_item|
    Portfolio.create!(
      title: "portfolio title: #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "body text",
      main_image: "https://placeholdit.co//i/600x400?",
      thumb_image: "https://placeholdit.co//i/300x200?",
      )
    end
    
    1.times do |portfolio_item|
    Portfolio.create!(
      title: "portfolio title: #{portfolio_item}",
      subtitle: "Angular",
      body: "body text",
      main_image: "https://placeholdit.co//i/600x400?",
      thumb_image: "https://placeholdit.co//i/300x200?",
      )
    end
    
  
  puts "9 portfolio items created"

  3.times do |technology|
    Portfolio.last.technologies.create!(
      name: "Technology #{technology}",
      portfolio_id: Portfolio.last.id
      )
  end

  puts "3 technologies created"