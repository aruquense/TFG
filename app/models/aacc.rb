class Aacc
  include Mongoid::Document
  include Mongoid::Timestamps
  field :medicalrecord, type: Integer
  auto_increment :idn
  field :id_activity_type, type: Integer
  field :id_physician, type: String
  field :observations, type: String
  field :finished, type: String
  has_many :PatientAaccSymptom, dependent: :destroy
  has_many :PatientAaccHabit, dependent: :destroy   
  has_many :PatientAaccPrescription, dependent: :destroy   
  has_many :PatientAaccDisease, dependent: :destroy  
  has_many :Exploration, dependent: :destroy  
  has_many :ComplementaryTest, dependent: :destroy   
  belongs_to :Patient

end