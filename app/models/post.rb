class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :title, type: String
  field :content, type: String
  auto_increment :aaaaaa
  validates :name, presence: true 
  validates :title, presence: true 
  has_many :comments, dependent: :destroy
end
