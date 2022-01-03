class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :description, type: String
  field :description_EN, type: String
  field :message, type: String
  field :message_en, type: String
  field :erase, type: Integer
end
