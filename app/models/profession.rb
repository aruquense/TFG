class Profession
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :description, type: String
  field :description_EN, type: String
  field :erase, type: Mongoid::Boolean
end
