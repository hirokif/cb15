json.array!(@rois) do |roi|
  json.extract! roi, :id, :toi_no, :toi_name
  json.url roi_url(roi, format: :json)
end
