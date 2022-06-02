class PatientAaccHabit
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  belongs_to :habit
  field :comments, type: String
  belongs_to :aacc
  belongs_to :patient
end
