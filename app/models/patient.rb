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
  field :scholarship, type: String
  field :gender, type: String
  field :maritalstatus, type: String
  field :nif, type: String
  field :passport, type: String
  field :birthdate, type: Date
  field :birthcity, type: String
  field :birthcountry, type: String
  field :adress, type: String
  field :city, type: String
  field :state, type: String
  field :country, type: String
  field :exitus, type: String
  belongs_to :profession
  field :employeestatus, type: String
  field :incoming_rate_id, type: String
  field :telephone, type: String
  field :telephone2, type: String
  field :mobilephone, type: String
  field :institution_id, type: String
  field :comments, type: String, default: 'PACIENTE DE PRUEBA'
  has_many :aaccs, dependent: :destroy

  validates :nss,  presence: true
  validates :medicalcard,  presence: true
  validates :scholarship,  presence: true
  validates :maritalstatus,  presence: true
  validates :birthcity,  presence: true
  validates :adress,  presence: true
  validates :city,  presence: true
  validates :state,  presence: true
  validates :country,  presence: true
  validates :profession, presence: true
  validates :employeestatus,  presence: true
  
  validates :name,     presence: true
  validates :surname,     presence: true
  validates :gender,     presence: true
  validates :birthdate,     presence: true
  validates :nif, :presence => true, :uniqueness => true
    
end
