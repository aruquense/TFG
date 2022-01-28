class ActivityType
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :code, type: String
  field :description, type: String
  field :description_EN, type: String
end
