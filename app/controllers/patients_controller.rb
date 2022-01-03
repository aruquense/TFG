class PatientsController < ApplicationController
    def new
        @patient = Patient.new
        @patient.name = 'DEMO'
    end

    def new2
    @patient = Patient.new
    @patient.name = 'DEMO2'
end
def create
    @patient = Patient.create(name: params[:patient][:name],
        surname: params[:patient][:surname]
    )
        
    render json: @patient
end


    
    
end
