class Exploration
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  belongs_to :aacc
  belongs_to :exploration_type
  belongs_to :physician
end
