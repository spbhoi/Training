
puts "First Way"
s="Renuka"
def s.nnmn
end
puts s.singleton_methods

puts "Second Way"
x='renu'
x.instance_eval   do
	def hi;end
end
puts singleton_methods