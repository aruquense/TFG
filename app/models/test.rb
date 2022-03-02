class Test
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :description, type: String
  field :description_EN, type: String
  belongs_to :exploration_type
end
