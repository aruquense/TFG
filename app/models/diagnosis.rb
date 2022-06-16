class Diagnosis
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :status, type: String
  belongs_to :aacc
  belongs_to :DiagnosisCi
  belongs_to :DiagnosisDementia
end
