class PatientAaccHabit
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :habit, type: String
  field :comments, type: String
  belongs_to :aacc
  belongs_to :patient
end
