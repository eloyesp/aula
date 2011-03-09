# -*- coding: utf-8 -*-
require 'rspec'
require 'mirror'
require 'open4' # debo requerir la librería para poder hacer el mock

describe Mirror do
  describe '#rspec' do
    it "runs rspec" do
      Open4 = double('Open4')
      Open4.stub(:popen4)
      a = Mirror.new
      a.rspec.should be_nil
    end
  end
end

