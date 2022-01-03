class Aacc
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :observations, type: String
  field :finished, type: String
  
  
  belongs_to :id_activity_type
  belongs_to :id_actual_carer
  belongs_to :id_diagnosis
  belongs_to :medicalrecord
  belongs_to :id_physician
end
