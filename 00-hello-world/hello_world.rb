#
# def hello_world(name='World')
#
#
#   # name = 'World' if name.empty?
#   return "Hello, #{name.empty? ? 'World' : name}!"
# end




def hello_world(name = '')
  return "Hello, #{name.empty? ? 'World' : name}!"
end
