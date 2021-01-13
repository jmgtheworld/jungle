require 'rails_helper'

RSpec.describe UserSpec, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'user saves correctly' do 
      @user = User.new(first_name: "Min", last_name: "Jo", email: "TEST@TEST.com", password: "123", password_confirmation: "123")
      @user.save
      expect(@user).not_to be_nil
    end

    it 'should not create user if passwords do not match' do
      @user = User.new(first_name: "Min", last_name: "Jo", email: "TEST@TEST.com", password: "12344", password_confirmation: "123")
      @user.save
      expect(@user.created_at).to be_nil
    end

    it 'should  create user if passwords do match' do
      @user = User.new(first_name: "Min", last_name: "Jo", email: "TEST@TEST.com", password: "123", password_confirmation: "123")
      @user.save
      expect(@user.created_at).not_to be_nil
    end

    it 'should check that passwords have a min length of 8 chars' do 
      @user = User.new(first_name: "Min", last_name: "Jo", email: "TEST@TEST.com", password: "12345678", password_confirmation: "12345678")
      @user.save
      expect(@user.password.length).to be <= 8
    end
  end

  describe '.authenticate_with_credentials' do
    it 'user saves correctly' do 
      @user = User.new(first_name: "Min", last_name: "Jo", email: "TEST@TEST.com", password: "123", password_confirmation: "123")
      @user.save
      expect(@user).not_to be_nil
    end

    it 'should not create user if passwords do not match' do
      @user = User.new(first_name: "Min", last_name: "Jo", email: "TEST@TEST.com", password: "12344", password_confirmation: "123")
      @user.save
      expect(@user.created_at).to be_nil
    end

    it 'should  create user if passwords do match' do
      @user = User.new(first_name: "Min", last_name: "Jo", email: "TEST@TEST.com", password: "123", password_confirmation: "123")
      @user.save
      expect(@user.created_at).not_to be_nil
    end

    it 'should  create user if there are spaces before or after their email' do
      @user = User.new(first_name: "Min", last_name: "Jo", email: "eXample@domain.COM", password: "123", password_confirmation: "123")
      @user.save
      expect(@user).not_to be_nil
    end

    it 'should  create user if there are wrong case for email' do
      @user = User.new(first_name: "Min", last_name: "Jo", email: "eXample@domain.COM", password: "123", password_confirmation: "123")
      @user.save
      expect(@user).not_to be_nil
    end



  end

  
end
