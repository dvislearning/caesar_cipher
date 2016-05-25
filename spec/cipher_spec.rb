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

	 it "properly escapes whitespae" do
 		expect(caesar_cipher(" he  llo   world   ", 2)).to eq(" jg  nnq   yqtnf   ")
	 end
	 
	 it "properly escapes punctuation" do
 		expect(caesar_cipher("he$$llo wo.r.ld?", 2)).to eq("jg$$nnq yq.t.nf?")
	 end

	 it "returns original string when shifted a very large multiple of 26" do
 		expect(caesar_cipher("hello world xyz", 24804)).to eq("hello world xyz")
	 end

	 it "returns correct string when shifted a very large non-multiple of 26" do
 		expect(caesar_cipher("hello world xyz", 24817)).to eq("uryyb jbeyq klm")
	 end
	 
	 it "returns correct string when shifted a negative value" do
 		expect(caesar_cipher("hello world xyz abc", -2)).to eq("fcjjm umpjb vwx yza")
	 end	 

end