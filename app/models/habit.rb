class Habit
  include Mongoid::Document
  include Mongoid::Timestamps
  field :idn, type: Integer
  field :description, type: String
  field :description_EN, type: String
end
