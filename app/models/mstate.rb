class Mstate
  include Mongoid::Document
  include Mongoid::Timestamps
  field :comaut, type: Integer
  belongs_to :mcomaut
end
