class PhysiciansTask
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :id_physician, type: String
  field :name, type: String
  field :surname, type: String
  field :medicalrecord_references, type: String
  belongs_to :id_aacc
  belongs_to :id_task
end
