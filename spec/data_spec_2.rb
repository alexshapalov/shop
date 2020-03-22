require 'spec_helper'

require_relative "../lib/data.rb"

describe Data_Json do 
   context 'data orders' do
    it '.array' do
      id = [{id: 1}]
      expect(id).to eq([{:id=>1}])
    end

    it '.hash' do
      id = {id: 1}
      expect(id).to have_key(:id)
    end
  end
end