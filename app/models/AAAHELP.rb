class Patient
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer 
  has_one :capital_city
  has_many :diseases
end

# Models ONE TO ONE
class Country
  include Mongoid::Document
  field :name, type: String
  
  field :name, type: Integer, default: proc { object_type== "a" ?  nil : 0}
  has_one :capital_city
 end
 class CapitalCity
  include Mongoid::Document
  field :name, type: String
  belongs_to :country
 end

 
# Models ONE TO MANY
 class Owner
  include Mongoid::Document
  field :name, type: String
 has_many :pets
 end
 class Pet
  include Mongoid::Document
  field :name, type: String
 belongs_to :owner
 end

 # Models MANY TO MANY
class Recipe
  include Mongoid::Document
  field :name, type: String
  has_and_belongs_to_many :ingredients
 end
 class Ingredient
  include Mongoid::Document
  field :name, type: String
  has_and_belongs_to_many :recipes
 end