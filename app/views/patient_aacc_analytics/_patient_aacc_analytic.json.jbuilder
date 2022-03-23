json.extract! patient_aacc_analytic, :id, :idn, :value, :physycian_eval, :parameter_id, :analytics_id, :patient_id, :aacc_id, :created_at, :updated_at
json.url patient_aacc_analytic_url(patient_aacc_analytic, format: :json)
