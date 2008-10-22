class Secure < Merb::Controller
  include SslRequirement
  
  ssl_required :a, :b
  ssl_allowed :c
  
  def a
    'a'
  end
  
  def b
    return 'b'
  end
  
  def c
    return 'c'
  end
  
  def d
    return 'd'
  end
    # 
    # def set_flash
    #   flash[:foo] = "bar"
    # end
end