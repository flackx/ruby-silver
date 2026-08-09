def banana
  puts "Before block"

  yield

  puts "After block"
end

banana do
  puts "Inside block"
end

# Prediction:
# What gets printed?