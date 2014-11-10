json.array!(@visits) do |visit|
  json.extract! visit, :id, :problem_id
  json.url visit_url(visit, format: :json)
end
