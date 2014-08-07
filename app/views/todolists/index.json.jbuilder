json.array!(@todolists) do |todolist|
  json.extract! todolist, :id, :list_due_date, :list_name
  json.url todolist_url(todolist, format: :json)
end
