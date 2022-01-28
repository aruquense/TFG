class PatientAaccTest
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :score, type: String
  field :comments, type: String
  belongs_to :exploration_type
  belongs_to :test
  belongs_to :aacc
  belongs_to :patient
end
