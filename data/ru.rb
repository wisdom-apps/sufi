file_in  = "ru.txt"
file_out = "info.ru.js"

p "read file: #{file_in}"
f = File.open(file_in).read
f2 = File.open(file_out, 'w')
f2 << 'items["ru"] = [' << "\n"
#     'm-d': '1-2'},

# 1-1:
# text
# 

row = {}
state = nil
f.each_line.each do |line|
  line.chop!
  next if line == ''
  if state == nil
    state = 'date'
  elsif state == 'date'
    state = 'text'
  elsif state == 'text'
    state = 'date'
  end

  if state == 'date'
    row = {}
    row[:date] = line
    next
  end
  row[:text] = line

  f2 <<  '  {"date": "' << row[:date] << '",'
  f2 <<  ' "name": "' << row[:text].gsub('"', '\"')
  f2 <<  '"},'
  f2 << "\n"
end
f2 << '  ];'
f2.close
p "generated: #{file_out}"