class Patient
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  field :medicalrecord, type: Integer
  auto_increment :idn
  field :nhc, type: String
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
  field :profession, type: Integer
  field :employeestatus, type: Integer
  field :incoming_rate_id, type: Integer
  field :telephone, type: String
  field :telephone2, type: String
  field :mobilephone, type: String
  field :institution_id, type: Integer
  field :comments, type: String, default: 'PACIENTE DE PRUEBA'
  has_many :patient_aaccs, dependent: :destroy
  #has_many :objects, through: :join_association, source: :join_association_table_foreign_key_to_objects_table
  #has_and_belongs_to_many :object, join_table: "table_name", foreign_key: "object_id"
  #has_many :objects, class_name: "object", foreign_key: "reference_id", dependent: :destroy
end
