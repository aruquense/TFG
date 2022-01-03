class ActivityType
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :code, type: String
  field :description, type: String
  field :description_EN, type: String
end
