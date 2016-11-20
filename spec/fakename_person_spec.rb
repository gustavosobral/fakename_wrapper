require 'spec_helper'

describe FakenameWrapper::Person do
  let(:person) { FakenameWrapper::Scraper.new.parse }

  it 'has a name' do
    expect(person.name).not_to be nil
  end

  it 'has a ssn' do
    expect(person.ssn).not_to be nil
  end

  it 'has a full address' do
    expect(person.full_address).not_to be nil
  end

  it 'has a phone' do
    expect(person.phone).not_to be nil
  end
end
