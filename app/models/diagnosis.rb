class Diagnosis
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  belongs_to :id_aacc
  belongs_to :id_cog_impairment
  belongs_to :id_dementia
  belongs_to :medicalrecord
  belongs_to :id_status
end
