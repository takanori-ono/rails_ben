json.extract! note, :id, :subject, :content, :created_at, :updated_at
json.url note_url(note, format: :json)
