require 'spec_helper'

describe Word do
	let(:word) do
	  FactoryGirl.build :word
	end

	describe 'validations' do
		context 'valid attributes' do
			it 'should be a valid word' do
				expect(FactoryGirl.build(:word)).to be_valid
			end
		end
		
		context 'invalid attributes' do
			it 'should not be a valid word' do
				expect(FactoryGirl.build(:word, name: nil)).to be_invalid
			end
		end

	end

end

