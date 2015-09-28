json.array!(@tois) do |toi|
  json.extract! toi, :id, :toi_no, :toi_name
  json.url toi_url(toi, format: :json)
end
