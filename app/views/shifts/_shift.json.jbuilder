json.extract! shift, :id, :title, :date, :start_time, :finish_time, :roster_id, :location, :cancellation, :assigned_volunteers, :training_requirements, :description, :created_at, :updated_at
json.url shift_url(shift, format: :json)
