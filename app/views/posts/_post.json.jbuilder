json.extract! post, :id, :username, :userphone, :start, :startpoint, :goal, :jobtype, :created_at, :updated_at
json.url post_url(post, format: :json)
