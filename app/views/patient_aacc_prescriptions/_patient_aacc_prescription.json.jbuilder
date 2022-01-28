json.extract! patient_aacc_prescription, :id, :idn, :id_physician, :value, :prescription_drugs_type_id, :aacc_id, :patient_id, :created_at, :updated_at
json.url patient_aacc_prescription_url(patient_aacc_prescription, format: :json)
