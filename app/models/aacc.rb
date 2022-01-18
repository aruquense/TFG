class Aacc
  include Mongoid::Document
  include Mongoid::Timestamps
  field :medicalrecord, type: Integer
  auto_increment :idn
  field :id_activity_type, type: Integer
  field :id_physician, type: String
  field :observations, type: String
  field :finished, type: String
  belongs_to :Patient
end
