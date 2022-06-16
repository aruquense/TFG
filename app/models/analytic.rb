class Analytic
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :value, type: String
  field :physician_eval, type: String
  field :received_date, type: Date
  belongs_to :physician
  belongs_to :patient
  belongs_to :aacc
end
