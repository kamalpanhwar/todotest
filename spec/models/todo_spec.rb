require 'rails_helper'

RSpec.describe Todo, type: :model do
 
  it "should test that the factory is valid" do
    expect(build :todo).to be_valid
  end

  describe 'check validations' do
    it 'should validate the presence of the title' do
      todo = build :todo, title: ''
      expect(todo).not_to be_valid
      expect(todo.errors.messages[:title]).to include("can't be blank")
    end

     it 'should validate the presence of the detials' do
      todo = build :todo, details: ''
      expect(todo).not_to be_valid
      expect(todo.errors.messages[:details]).to include("can't be blank")
    end

end 
end
