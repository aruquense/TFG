class PatientAaccDisease
  include Mongoid::Document
  include Mongoid::Timestamps
  field :idn, type: Integer
  field :description, type: String
  field :description_en, type: String
  belongs_to :exploration_type
  belongs_to :aacc, :class_name => "Aacc", :foreign_key => 'aacc_id', :index => "idn"
  belongs_to :patient
end
