class Analytic
  include Mongoid::Document
  include Mongoid::Timestamps
  field :idn, type: Integer
  field :value, type: String
  field :physician_eval, type: String
  field :received_date, type: Date
  belongs_to :analytics_status
  belongs_to :physician
  belongs_to :type
  belongs_to :patient
  belongs_to :aacc
end
