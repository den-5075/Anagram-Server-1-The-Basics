require 'byebug'
csv = File.open('db/words')
csv.each do |row|
   Word.create(title: row.chomp)
end
      # raise NotImplementedError, "TODO: figure out what to do with this row and do it!"