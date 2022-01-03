class Exploration
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  belongs_to :id_aacc
  belongs_to :id_exploration_type
  belongs_to :id_physician
end
