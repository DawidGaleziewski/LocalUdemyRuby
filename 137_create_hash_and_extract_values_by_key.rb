#sugar of {}
#hash of players as keys and teams as values
#using rocket operator => for assigning
nfl_roster = {"Tom Brady" => "New England Patriots",
              "tom brady" => "New England Patriots", #casing can create dups
              "Tony Romo" => "Dallas Cowboys",
              "Rob Gronkowski" => "New England Patriots"}
              #Keys need to be unique, values don't
              #casing matters

nba_roster = {"Cleveland Cavaliers" => ["LeBron James", "Kevin Love", "Kyrie Irving"],
                "Golden State Warriors" => ["Stephen Curry", "Kevin Imbad", "Klay Thompson"] }
                #keys and values dont have to be of a consistant data type

p nfl_roster["Tony Romo"] #we need to provide the key. The value will be returned to us
p nfl_roster["Rob Gronkowski"]
p nba_roster["Cleveland Cavaliers"]
p nba_roster["Golden State Warriors"]

# what happens when you put a key that does not exist?
p nfl_roster["Donald Duck"] #nil!
p nba_roster["Mighty Ducks"]
