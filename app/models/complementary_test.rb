class ComplementaryTest
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :id_type, type: Integer
  field :parameter, type: String
  field :parameter_en, type: String
  field :unit, type: String
  field :intervalues, type: String
  belongs_to :complementary_tests_type
end
