json.array!(@my23andmes) do |my23andme|
  json.extract! my23andme, :id, :disease, :gideline, :mechanizem, :pharmacotherapy
  json.url my23andme_url(my23andme, format: :json)
end
