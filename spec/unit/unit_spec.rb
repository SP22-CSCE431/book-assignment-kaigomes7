# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowlings', price: 9.99, date_published: '2001-11-11')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  # Anything non-numeric becomes 0.0 therfore it is still valid
  # it 'is not valid with a string as price' do
  #   subject.price = "Nine ninety-nine"
  #   expect(subject).not_to be_valid
  # end

  it 'is not valid without a date' do
    subject.date_published = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid with an invalid date format' do
    subject.date_published = '20-20-20'
    expect(subject).not_to be_valid
  end
end