# =================================================================================================
#  JSON src data for the Orchestrate.io example application
# =================================================================================================
module Orchestrate::Demo

  module FilmData

    def init_film_data(collection_name)
      @films = {
        'the_godfather' =>
          '{
          "Title":"The Godfather",
          "Year":1972,
          "Rated":"R",
          "Released":"24 Mar 1972",
          "Runtime":"2 h 55 min",
          "Genre":"Crime, Drama",
          "Director":"Francis Ford Coppola",
          "Writer":"Mario Puzo, Francis Ford Coppola",
          "Actors":"Marlon Brando, Al Pacino, James Caan, Diane Keaton",
          "Plot":"The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
          "Poster":"http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX300.jpg",
          "imdbRating":9.2,
          "imdbVotes":"730,156",
          "imdbID":"tt0068646",
          "Type":"movie",
          "Response":"True"
          }',
        'the_godfather_part_2' =>
          '{
          "Title":"The Godfather:Part II",
          "Year":1974,
          "Rated":"R",
          "Released":"20 Dec 1974",
          "Runtime":"3 h 20 min",
          "Genre":"Crime, Drama",
          "Director":"Francis Ford Coppola",
          "Writer":"Francis Ford Coppola, Mario Puzo",
          "Actors":"Al Pacino, Robert De Niro, Robert Duvall, Diane Keaton",
          "Plot":"The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on his crime syndicate stretching from Lake Tahoe, Nevada to pre-revolution 1958 Cuba.",
          "Poster":"http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_SX300.jpg",
          "imdbRating":9.0,
          "imdbVotes":"473,096",
          "imdbID":"tt0071562",
          "Type":"movie",
          "Response":"True"
          }',
        'the_godfather_part_3' =>
          '{
          "Title":"The Godfather:Part III",
          "Year":1990,
          "Rated":"R",
          "Released":"25 Dec 1990",
          "Runtime":"2 h 49 min",
          "Genre":"Crime, Drama, Mystery, Thriller",
          "Director":"Francis Ford Coppola",
          "Writer":"Mario Puzo, Francis Ford Coppola",
          "Actors":"Al Pacino, Diane Keaton, Andy Garcia, Talia Shire",
          "Plot":"In the midst of trying to legitimize his business dealings in 1979 New York and Italy, aging mafia don Michael Corleone seeks to vow for his sins while taking a young protégé under his wing.",
          "Poster":"http://ia.media-imdb.com/images/M/MV5BMTU2MTA1NDMwNF5BMl5BanBnXkFtZTcwNjQzNDM5MQ@@._V1_SX300.jpg",
          "imdbRating":7.6,
          "imdbVotes":"172,878",
          "imdbID":"tt0099674",
          "Type":"movie",
          "Response":"True"
          }',
        'the_shawshank_redemption' =>
          '{
          "Title":"The Shawshank Redemption",
          "Year":1994,
          "Rated":"R",
          "Released":"14 Oct 1994",
          "Runtime":"2 h 22 min",
          "Genre":"Crime, Drama",
          "Director":"Frank Darabont",
          "Writer":"Stephen King, Frank Darabont",
          "Actors":"Tim Robbins, Morgan Freeman, Bob Gunton, William Sadler",
          "Plot":"Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
          "Poster":"http://ia.media-imdb.com/images/M/MV5BMTc3NjM4MTY3MV5BMl5BanBnXkFtZTcwODk4Mzg3OA@@._V1_SX300.jpg",
          "imdbRating":9.3,
          "imdbVotes":"1,027,465",
          "imdbID":"tt0111161",
          "Type":"movie",
          "Response":"True"
          }',
        'pulp_fiction' =>
          '{
          "Title":"Pulp Fiction",
          "Year":1994,
          "Rated":"R",
          "Released":"14 Oct 1994",
          "Runtime":"2 h 48 min",
          "Genre":"Crime, Drama, Thriller",
          "Director":"Quentin Tarantino",
          "Writer":"Quentin Tarantino, Roger Avary",
          "Actors":"John Travolta, Uma Thurman, Samuel L. Jackson, Bruce Willis",
          "Plot":"The lives of two mob hit men, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
          "Poster":"http://ia.media-imdb.com/images/M/MV5BMjE0ODk2NjczOV5BMl5BanBnXkFtZTYwNDQ0NDg4._V1_SX300.jpg",
          "imdbRating":9.0,
          "imdbVotes":"801,931",
          "imdbID":"tt0110912",
          "Type":"movie",
          "Response":"True"
          }',
        'the_good_the_bad_and_the_ugly' =>
          '{
          "Title":"The Good, the Bad and the Ugly",
          "Year":1966,
          "Rated":"M",
          "Released":"29 Dec 1967",
          "Runtime":"2 h 41 min",
          "Genre":"Adventure, Western",
          "Director":"Sergio Leone",
          "Writer":"Luciano Vincenzoni, Sergio Leone",
          "Actors":"Clint Eastwood, Eli Wallach, Lee Van Cleef, Aldo Giuffrè",
          "Plot":"A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.",
          "Poster":"http://ia.media-imdb.com/images/M/MV5BMjIxNjYwNDMzMl5BMl5BanBnXkFtZTcwODA5Mzg3OA@@._V1_SX300.jpg",
          "imdbRating":9.0,
          "imdbVotes":"312,469",
          "imdbID":"tt0060196",
          "Type":"movie",
          "Response":"True"
          }'
      } # @films

      @movies = {
        'the_godfather_part_4' =>
          '{
             "Title":"The Godfather:Part IV",
             "Year":2014,
             "Rated":"R",
             "Released":"24 Mar 2014",
             "Runtime":"8 h 55 min",
             "Genre":"Crime, Drama",
             "Director":"Francis Ford Coppola",
             "Writer":"Mario Puzo, Francis Ford Coppola",
             "Actors":"Marlon Brando, Al Pacino, James Caan, Diane Keaton",
             "Plot":"The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
             "Poster":"http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX300.jpg",
             "imdbRating":9.2,
             "imdbVotes":"730,156",
             "imdbID":"tt0068646",
             "Type":"movie",
             "Response":"True"
          }',
        'citizen_kane' =>
          '{
             "Title":"Citizen Kane",
             "Year":"1941",
             "Rated":"M",
             "Genre":"Drama, Mystery",
             "Director":"Orson Welles",
             "Writer":"Herman J. Mankiewicz",
             "Actors":"Orson Welles, Joseph Cotten, Dorothy Comingore",
             "Type":"All time classic!"
          }',
        'star_wars' =>
          '{
             "Title":"Star Wars",
             "Year":1977,
             "Rated":"G",
             "Genre":"SciFi",
             "Director":"George Lucas",
             "Writer":"George Lucas",
             "Actors":"Mark Hamill, Carrie Fisher, Harrison Ford, Sir Alec Guinness",
             "Type":"movie",
             "Response":"True"
           }',
        'the_empire_strikes_back' =>
          '{
             "Title":"The Empire Strikes Back",
              "Year":1980,
              "Rated":"PG",
              "Genre":"SciFi",
              "Writer":"George Lucas",
              "Director":"Irvin Kershner",
              "Actors":"Mark Hamill, Carrie Fisher, Harrison Ford, James Earl Jones",
              "Type":"movie",
              "Response":"True"
           }',
        'return_of_the_jedi' =>
          '{
              "Title":"Return of the Jedi",
              "Year":1983, "Rated":"PG",
              "Genre":"SciFi",
              "Director":"Richard Marquand",
              "Writer":"George Lucas",
              "Actors":"Mark Hamill, Carrie Fisher, Harrison Ford, Billy Dee Williams",
              "Type":"movie",
              "Response":"True"
           }'
      }

      @comments = [
        '{
          "User":"hank_sartin",
          "Text":"It\'s hard to find a moment in the film that isn\'t great. The Godfather lives up to the term masterpiece."
         }',
        '{
          "User":"ryan_cracknell",
          "Text":"Coppola offers a rich and layered look at family and does so with an incredible cast and a meticulous amount of detail."
         }',
        '{
          "User":"andrew_sarris",
          "Text":"Brando\'s triumph and fascination is less that of an actor of parts than of a star galaxy of myths."
         }',
        '{
          "User":"gene_siskel",
          "Text":"To permit us a glimpse at The Mob, with all of its ethnic insularity, is like giving a chronic gambler a chance to wander above the false mirrors that overlook every casino."
         }',
        '{
          "User":"peter_bradshaw",
          "Text":"A measured, deathly serious epic."
         }',
      ] # @comments

      @film_relations = [
        {
          collection: collection_name, key: 'the_godfather', kind: 'sequel',
          to_collection: collection_name, to_key: 'the_godfather_part_2'
        },
        {
          collection: collection_name, key: 'the_godfather_part_2', kind: 'sequel',
          to_collection: collection_name, to_key: 'the_godfather_part_3'
        }
      ]

      @movie_relations = [
        {
          collection: collection_name, key: 'star_wars', kind: 'sequel',
          to_collection: collection_name, to_key: 'the_empire_strikes_back'
        },
        {
          collection: collection_name, key: 'the_empire_strikes_back', kind: 'sequel',
          to_collection: collection_name, to_key: 'return_of_the_jedi'
        }
      ]
    end
  end
end
