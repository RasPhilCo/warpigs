json.results do |json|
  json.array!(@companies) do |company|
    json.extract! company, :id, :longname, :shortname, :country
    json.people do
      json.partial! 'v1/people/person', collection: company.people, as: :person
    end
    json.wars do
      json.partial! 'v1/wars/war', collection: (company.profits.map {|p|p.war}), as: :war
    end
    json.url v1_company_url(company, format: :json)
  end
end