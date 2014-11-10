json.array!(@solutions) do |solution|
  json.extract! solution, :id, :solution1, :image1, :solution2, :image2, :solution3, :image3, :solution4, :image4, :solution5, :image5, :problem_id, :user_id
  json.url solution_url(solution, format: :json)
end
