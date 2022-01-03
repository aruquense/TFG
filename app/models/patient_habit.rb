class PatientHabit
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  belongs_to :id_aacc
  belongs_to :habit_id
  belongs_to :medicalrecord
end
