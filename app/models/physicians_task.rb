class PhysiciansTask
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :id_physician, type: String{50}
  field :name, type: String{50}
  field :surname, type: String{50}
  field :medicalrecord_references, type: String
  belongs_to :id_aacc
  belongs_to :id_task
end
