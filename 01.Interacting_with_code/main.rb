require 'sqlite3'

# opens the database
database_path = "db/jukebox.sqlite"
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
	n = db.execute("SELECT count(*) FROM #{table_name}")
   n[0][0]
end

puts "There are #{number_of_rows(db,"Artist")} artists"
puts "There are #{number_of_rows(db,"Track")} tracks"
puts "There are #{number_of_rows(db,"Album")} albums"
puts "There are #{number_of_rows(db,"Genre")} genres"
puts "There are #{number_of_rows(db,"MediaType")} media types"


# returns all the artists sorted by alphabetical order.

def sort(db, field, table_name)
	db.execute("SELECT #{field} FROM #{table_name} ORDER BY #{field}")
end
artists = sort(db, "name", "Artist")

puts "Here is the list: #{artists} "

#puts "Here is the list #{alphabetical_sort(db,"Artist")} "
# returns all the love songs
love_songs = db.execute("SELECT Track.name, Album.title FROM Track INNER JOIN Album ON Track.albumId = Album.albumId  WHERE Track.name LIKE '%love%' ") # your code here
p love_songs

# returns all the tracks that are longer than 5 minutes.
#long_tracks = # your code here
