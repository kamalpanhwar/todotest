require 'rails_helper'

describe 'todos routes' do
  it 'should route to articles index' do
    expect(get api_v1_todos_path).to route_to('api/v1/todos#index')
  end
end
