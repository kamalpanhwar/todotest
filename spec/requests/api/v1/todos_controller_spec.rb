require 'rails_helper'

RSpec.describe 'Todos API', type: :request do


  it 'loads a todo' do
    todo = create(:todo)
    get api_v1_todos_path
    expect(response).to have_http_status(:success)
    json = JSON.parse(response.body)
    expect(json.length).to eq 1
    todo_id = json[0]['id']

    get api_v1_todos_path(todo_id)

    expect(response).to have_http_status(:sucess)
    json = JSON.parse(response.body)
    expect(json["name"]).to eq 'my task of the day'

  end

  it 'create a todo' do
    todo_attributes = attributes_for(:todo)
    expect {
      post api_v1_todos_path, params: {
        todo: todo_attributes
      } }.to change(todo, :count).by(1)

    expect(response).to have_http_status(:success)
  end



end
