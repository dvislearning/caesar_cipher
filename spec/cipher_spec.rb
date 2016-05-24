require 'spec_helper'
require 'cipher'

describe 'cipher' do
	it "returns original word when shifted 0 positions" do
		expect(caesar_cipher("hello", 0)).to eq("hello")
	end

	it "returns original word when shifted 26 positions" do
		expect(caesar_cipher("hello", 26)).to eq("hello")
	end

	it "returns correct string when shifted 15 positions" do
		expect(caesar_cipher("hello", 15)).to eq("wtaad")
	end

	it "returns correct string when shifted 25 positions" do
		expect(caesar_cipher("hello", 25)).to eq("gdkkn")
	end	


end