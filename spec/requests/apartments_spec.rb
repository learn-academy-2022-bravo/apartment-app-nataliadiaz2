require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do 
    it 'returns a list of all apartments' do 
      Apartment.create(
        street: 'Diagon Alley',
        city: 'London',
        state: 'United Kingdom',
        manager: 'Severus Snape',
        email: 'ssssnape@gamil.com',
        price: '15 pounds',
        bedrooms: 4,
        bathrooms: 2,
        pets: 'Allowed',
        image: 'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=Mnwhttps://i.insider.com/5a5e143155ac56f5168b4598?width=1000&format=jpeg&auto=webp',
        user_id: 1
      )
      get '/apartments'
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq(1)
    end
  end 
  end
end
