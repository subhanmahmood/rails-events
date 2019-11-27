json.extract! task, :id, :user_id, :event_id, :title, :deadline, :description, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
