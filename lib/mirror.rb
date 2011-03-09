require 'open4'

class Mirror
  def rspec
    Open4::popen4 'rspec'
  end
end

