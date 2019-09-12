require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    info = []
<<<<<<< HEAD
    page = Nokogiri::HTML(open(index_url))
=======
    page = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/"))
>>>>>>> 31ffe1a317c0fb041dd4a9560ca2639cecebb7ac
    student = page.css(".student-card")
    student.each do |card|
      info << {:name => card.css("h4").text, :location => card.css("p").text, :profile_url => card.css("a")[0]["href"]}
    end
    info
  end

  def self.scrape_profile_page(profile_url)
    page = {}
<<<<<<< HEAD
    profile = Nokogiri::HTML(open(profile_url))
    social = profile.css(".social-icon-container a")
    social.each do |link|
      link = link.attribute("href").value 
      if link.include?("twitter")
        page[:twitter] = link
      elsif link.include?("linkedin")
       page[:linkedin] = link 
      elsif link.include?("github")
       page[:github] = link
      else
       page[:blog] = link
      end
    end
    page[:profile_quote] = profile.css(".profile-quote").text if profile.css(".profile-quote")
    page[:bio] = profile.css(".description-holder p").text
    page
=======
    profile = Nokogiri::HTML(open(info[:profile_url][0])
    social = profile.css(".social-icon-container")
>>>>>>> 31ffe1a317c0fb041dd4a9560ca2639cecebb7ac
  end

end

