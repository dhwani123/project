json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :subject, :message, :feedemail, :vote
  json.url feedback_url(feedback, format: :json)
end
