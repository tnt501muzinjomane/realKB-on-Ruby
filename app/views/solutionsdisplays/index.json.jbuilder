json.array!(@solutionsdisplays) do |solutionsdisplay|
  json.extract! solutionsdisplay, :id, :name
  json.url solutionsdisplay_url(solutionsdisplay, format: :json)
end
