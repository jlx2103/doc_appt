class OfficeController < ApplicationController
  def index
  	@appointment = Appointment.all
  	@patients = Patient.all
  	@doctors = Doctor.all
  end

  def doctors
  	@doctors = Doctor.all
  end

  def patients
  	@patients = Patient.all
  end

  def create_doctor
  	doctor = Doctor.new
  	doctor.name = params[:name]
  	doctor.specialty = params[:specialty]
  	doctor.save

  	redirect_to office_doctors_path
  end

  def create_patient
  	patient = Patient.new
  	patient.name = params[:name]
  	patient.gender = params[:gender]
  	patient.age = params[:age]
  	patient.weight = params[:weight].to_f
  	patient.save

  	redirect_to office_patients_path

  end

  def create_appt
  	appointment = Appointment.new
  	appointment.appt_time = params[:appt_time]
  	appointment.patient_id = params[:patient_id]
  	appointment.doctor_id = params[:doctor_id]
  	appointment.save

  	redirect_to root_path
  end
end
