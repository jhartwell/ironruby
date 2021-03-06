require 'mspec/mocks/proxy'

class Object
  def stub!(sym)
    Mock.install_method self, sym, :stub
  end

  def should_receive(sym)
    Mock.install_method self, sym
  end

  def should_not_receive(sym)
    proxy = Mock.install_method self, sym
    proxy.exactly(0).times
  end

  def mock(name, options={})
    MockObject.new name, options
  end

  def mock_numeric(name, options={})
    NumericMockObject.new name, options
  end
end
