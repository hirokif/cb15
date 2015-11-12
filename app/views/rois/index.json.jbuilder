json.array!(@rois) do |roi|
  json.extract! roi, :id, :roi_no, :roi_name
  json.url roi_url(roi, format: :json)
end
