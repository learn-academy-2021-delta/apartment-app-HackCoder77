require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let(:user) do
  User.create email: 'larry@supertest.com',
  password: '123456', password_confirmation: '123456'
  end

  #--------index--------

  describe "Get /index" do
    it 'gets all the apartments' do
      Apartment.create street: '69 Nasty St.', city: 'Los Angeles',
      state: 'CA', manager: 'Heather Hunter', email: 'leatherheather@bullride.com',
      price: '1900', bedrooms: 3, bathrooms: 2, pets: 'no', user_id: user.index

      get '/apartments'

      apartments = JSON.parse(respone.body)
      expect(apartments.length).to eq 1
      expect(respone).to have_http_status(200)

      apartment = apartments.first
      expect(apartment['street']).to eq '69 Nasty St.'
      expect(apartment['city']).to eq 'Los Angeles'
      expect(apartment['state']).to eq 'CA'
      expect(apartment['manager']).to eq 'Heather Hunter'
      expect(apartment['email']).to eq 'leatherheather@bullride.com'
      expect(apartment['price']).to eq '1900'
      expect(apartment['bedrooms']).to eq '3'
      expect(apartment['bathrooms']).to eq '2'
      expect(apartment['pets']).to eq 'no'
    end
  end
end
