json.array!(@wolves) do |wolf|
  json.extract! wolf, :name, :age, :gender, :health, :user_id
  json.url wolf_url(wolf, format: :json)
end
