json.results do |json|
  json.partial! 'v1/companies/company', collection: @companies, as: :company
end
json.meta do |json|
 json.total_count total_count(@companies)
 json.url request.url
end

