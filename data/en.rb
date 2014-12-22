# 5-24 - " - escape

file_in  = "en.txt"
file_out = "info.en.js"

p "read file: #{file_in}"
f = File.open(file_in).read
f2 = File.open(file_out, 'w')
f2 << 'items["en"] = [' << "\n"
#     'm-d': '1-2'},

# 1-1:
# text
# 

row = {}
f.each_line.each do |line|
  line.chop!
  if line.end_with?(':')
    row = {}
    row[:date] = line
    next
  end
  next if line == ''
  row[:text] = line

  f2 <<  '  {"date": "' << row[:date] << '",'
  f2 <<  ' "name": "' << row[:text].gsub('"', '\"')
  f2 <<  '"},'
  f2 << "\n"
end
f2 << '  ];'
f2.close
p "generated: #{file_out}"