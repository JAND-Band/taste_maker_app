module FeedHelper
#####################
#API KEYS & RSS URLS
#####################
  SARTORIALIST_RSS_URL = 'http://www.nyartbeat.com/list/event_opening.en.xml'

  REALIST_RSS_URL = 'http://feeds.feedburner.com/nymag/grubstreet?format=xml'

  ESCAPE_ARTIST_URL = 'http://www.redbullskydiveteam.com/rss.xml'

  INTELLIGENTSIA_URL = 'http://www.strandbooks.com/index.cfm/fuseaction/event.index/nodeID/a35c34a6-bda5-4733-9f7d-fa7187e8c2e3/?view=rss'

  WUNDERGROUND_API_KEY = ENV['a825d927a8d698d3']

  NYT_API_KEY = "a4a129410af3be7a2fedd9101879acf9%3A1%3A67095397"

  NYT_BESTSELLER_QUERY = {
    escape_artist_query: "trade-fiction-paperback",
    sartorialist_query: "hardcover-fiction",
    intelligentsia_query: "hardcover-nonfiction",
    realist_query: "paperback-nonfiction",
    techie: "e-book-fiction"
  }

  INSTAGRAM_QUERY = {
    eat_query: "foodieadventures",
    shop_query: "streetstyle",
    go_query: "travelandlife"
  }

  INSTAGRAM_ACCESS_TOKEN = "36703057.0f47fa5.e7416325ba284d5f9477d3e7e401b1bf"

  MEETUP_KEY = "4830227a3b7fa7b3a564265372f718"



  # CLIENT ID = '0f47fa507b9d4040905722a4637ab3ed'
  # CLIENT SECRET = 'fdbaab036f4c431da072f2a201c67774'


  def rss_feed_get(url)
    open(url) do |rss|
      @feed = RSS::Parser.parse(rss)
    end
  end

  def rss_feed_view
     "<ul><%= @feed.channel.title %></ul>
      <% @feed.items.each do |item| %>
    <ul><%= item.title %></ul>
   <% end %>"
  end

  def nyt_api(key)
    nyt_response = HTTParty.get("http://api.nytimes.com/svc/books/v2/lists.json?list-name=#{NYT_BESTSELLER_QUERY[key]}&api-key=#{NYT_API_KEY}")
    @nyt_parsed_response = JSON.parse(nyt_response.to_json)
  end

  def nyt_api_view
    "<% @nyt_parsed_response[\"results\"].each do |book| %>
      <% book[\"book_details\"].each do |info| %>
      <ul>
      <%= info[\"title\"] %>
      <br></br>
      <%= info[\"author\"] %>
      <br></br>
      <%= info[\"description\"] %>
      <br></br>
      <%= info[\"publisher\"] %>
      </ul>
      <% end %>
    <% end %>"
  end

  def wunderground_api
    city = "new_york"
    state = "ny"
    @weather = HTTParty.get("http://api.wunderground.com/api/8df98bbf67d1296c/conditions/q/#{@state}/#{@city}.json")
    @temp_in_farh = @weather["current_observation"]["temp_f"]
  end

  def meetup_api
    meetup_response = HTTParty.get("http://api.meetup.com/2/groups.json/?zip=10015&topic=hackathon&order=location&asc=true&key=#{MEETUP_KEY}")
    @meetup_parsed_response = JSON.parse(meetup_response.to_json)
  end

  def meetup_api_view
    "<% @meetup_parsed_response[\"results\"].each do |meetup| %>
    <ul>
    <%= meetup[\"name\"] %>
    <%= meetup[\"link\"] %>
    <%= meetup[\"description\"] %>
    <%= meetup[\"rating\"] %>
    <% end %>"
  end

  def instagram_api(key)
    instagram_response = HTTParty.get("https://api.instagram.com/v1/tags/#{INSTAGRAM_QUERY[key]}/media/recent?access_token=#{INSTAGRAM_ACCESS_TOKEN}")
    @instagram_parsed_response = JSON.parse(instagram_response.to_json)
  end

  def instagram_api_view
    "<% @instagram_parsed_response[\"data\"].each do |image| %>
    <ul>
    <%= image[\"link\"] %>
    <% end %>"
  end

  def test
    @response = "test works"
  end

end








