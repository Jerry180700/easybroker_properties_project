require 'spec_helper'
require_relative '../easybroker_client'

RSpec.describe EasyBrokerClient do
  it 'fetches property titles and returns them as a string' do
    titles_string = EasyBrokerClient.fetch_property_titles

    expect(titles_string).to be_a(String) # Verifica que sea un string
    expect(titles_string).not_to be_empty # Verifica que no esté vacío
  end
end
