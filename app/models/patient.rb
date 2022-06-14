class Patient
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  field :medicalrecord, type: Integer
  auto_increment :idn
  auto_increment :nhc
  field :nss, type: String
  field :medicalcard, type: String
  field :name, type: String
  field :surname, type: String
  field :scholarship, type: Integer
  field :gender, type: String
  field :maritalstatus, type: String
  field :nif, type: String
  field :passport, type: String
  field :birthdate, type: Date
  field :birthcity, type: Integer
  field :birthcountry, type: Integer
  field :adress, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: Integer
  field :exitus, type: String
  belongs_to :profession
  field :employeestatus, type: Integer
  field :incoming_rate_id, type: Integer
  field :telephone, type: String
  field :telephone2, type: String
  field :mobilephone, type: String
  field :institution_id, type: Integer
  field :comments, type: String, default: 'PACIENTE DE PRUEBA'
  has_many :aaccs, dependent: :destroy
    
  validates :name,     presence: true
  validates :surname,     presence: true
  validates :gender,     presence: true
  validates :birthdate,     presence: true
  validates :nif, :presence => true, :uniqueness => true
    
end
