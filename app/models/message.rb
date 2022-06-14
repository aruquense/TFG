class Message
  include Mongoid::Document
  include Mongoid::Timestamps
  auto_increment :idn
  field :value, type: String
  field :viewed, type: Mongoid::Boolean
  field :answered, type: Mongoid::Boolean
  field :viewed_date, type: Date
  field :from_physician, type: String, default: '6271bdcda25d87463ccc9d50'
  belongs_to :user
end
