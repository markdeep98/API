json.array! @comments do |comment|
	json.id comment.id
	json.title comment.title
end