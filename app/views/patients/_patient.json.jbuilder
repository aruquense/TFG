json.extract! patient, :id, :medicalrecord, :nhc, :nss, :medicalcard, :name, :surname, :scholarship, :gender, :maritalstatus, :nif, :passport, :birthdate, :birthcity, :birthcountry, :adress, :city, :state, :country, :exitus, :profession, :employeestatus, :incoming_rate_id, :telephone, :telephone2, :mobilephone, :institution_id, :comments, :created_at, :updated_at
json.url patient_url(patient, format: :json)
