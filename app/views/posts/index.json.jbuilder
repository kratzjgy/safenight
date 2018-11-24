json.posts(@posts) do |post|
  json.username post.username   
  json.userphone post.userphone
  json.startpoint post.startpoint
  json.goal post.goal
  json.start post.start
  json.jobtype post.jobtype 
end