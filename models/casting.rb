require_relative("../db/sql_runner")

class Casting

attr_reader :id
attr_accessor :star_id, :movie_id, :fee

def initialize(options)
  @id = options['id'].to_i if options['id']
  @star_id = options['star_id'].to_i
  @movie_id = options['movie_id'].to_i
  @fee = options['fee']
end


end
