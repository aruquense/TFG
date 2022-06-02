class Message
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :value, type: String
  field :viewed, type: Mongoid::Boolean
  field :answered, type: Mongoid::Boolean
  field :viewed_date, type: Date
  field :from_physician, type: Physician
  belongs_to :physician
end
