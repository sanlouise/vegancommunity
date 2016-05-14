json.array!(@lifestyle_posts) do |lifestyle_post|
  json.extract! lifestyle_post, :id, :title, :body, :slideshow, :lifestyle_tag
  json.url lifestyle_post_url(lifestyle_post, format: :json)
end
