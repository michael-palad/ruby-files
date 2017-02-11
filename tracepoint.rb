def foo
  puts "Foo"
  bar
end

def bar
  puts "Bar"
end

trace = TracePoint.new(:call) { |tp| puts "#{tp.path} - #{tp.lineno} - #{tp.event} - #{tp.method_id}" }

trace.enable
foo
trace.disable
