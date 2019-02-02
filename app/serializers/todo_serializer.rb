class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :details, :completed
end
