json.array!(@problems) do |problem|
  json.extract! problem, :id, :title, :description, :tag, :category_id, :user_id
  json.url problem_url(problem, format: :json)
end
