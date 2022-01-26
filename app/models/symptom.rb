class Symptom
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  #no usado
  auto_increment :idn
  field :description, type: String
  field :description_EN, type: String
  field :primary_care_needed, type: String, :default => 'N'
  #Ex:- :default =>''
  belongs_to :Aacc
end
