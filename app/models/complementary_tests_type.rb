class ComplementaryTestsType
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :description, type: String
  field :description_en, type: String
end
