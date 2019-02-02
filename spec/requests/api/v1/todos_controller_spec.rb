require 'rails_helper'

RSpec.describe 'Todos API', type: :request do
 
  
  it 'index and show methods todo' do
    todos = create_list :todo, 3 
    get api_v1_todos_path
    json = JSON.parse(response.body)
    json_data = json['data']
    todos.each_with_index do |todo, index|
      expect(json_data[index]['attributes']).to eq({
        "title" => todo.title,
        "details" => todo.details,
        "completed" => todo.completed
      })
    end

    todo_id = json_data[0]['id']
    get api_v1_todos_path(todo_id)
    expect(response).to have_http_status(:success)

    json = JSON.parse(response.body)
    expect(json["title"]).to eq json_data[0]['title']

  end

end
