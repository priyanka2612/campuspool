json.array!(@consultants) do |consultant|
  json.extract! consultant, :id, :Name, :Address, :Contact_no,:Marketing_conatct_person,:Support_contact_person
  json.url consultant_url(consultant, format: :json)
end
