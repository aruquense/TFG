class Mcity
  include Mongoid::Document
  include Mongoid::Timestamps
  field :citycode, type: Integer
  belongs_to :mstate
end
