require 'rails_helper'

RSpec.describe Listing, type: :model do
  let(:user){User.new }
  subject(:listing) do
    described_class.new(
      industry: 'tech',
      task: 'website creation',
      price: 10.2,
      status: 1,
      user: user
    )
  end

  it 'is valid with valid attributes' do 
    expect(listing).to be_valid
  end

  context 'Database tables' do 
    it { expect(listing).to have_db_column(:industry).of_type(:string) }
    it { expect(listing).to have_db_column(:task).of_type(:text) }
    it { expect(listing).to have_db_column(:price).of_type(:decimal) }
    it { expect(listing).to have_db_column(:status).of_type(:integer) }
  end 

  context 'validations' do 
    it {expect(listing).to validate_presence_of(:industry)}
    it {expect(listing).to validate_presence_of(:task)}
    it {expect(listing).to validate_presence_of(:price)}
    it {expect(listing).to validate_presence_of(:status)}
  end 

  context 'associations' do 
   it { should belong_to(:user) }
  end 
end

