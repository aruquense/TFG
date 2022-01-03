class MaritalStatus
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :description, type: String
  field :description_EN, type: String
  field :erase, type: Integer
end
