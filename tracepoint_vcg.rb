require 'visual_call_graph'

def foo
  puts "Foo"
  bar
end

def bar
  puts "Bar"
end

VisualCallGraph.trace(show_path: true) { foo }