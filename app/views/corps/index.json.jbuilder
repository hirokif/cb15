json.array!(@corps) do |corp|
  json.extract! corp, :id, :corp_no, :corp_name, :posi_no, :corp_rep, :corp_add, :corp_tel, :corp_fax, :corp_mail, :note
  json.url corp_url(corp, format: :json)
end
