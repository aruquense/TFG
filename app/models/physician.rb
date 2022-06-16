class Physician
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :id_physician, type: Integer
  field :name, type: String
  field :surname, type: String
  belongs_to :activity_type
  has_one :User, class_name: "User", foreign_key: "User_id"
end
