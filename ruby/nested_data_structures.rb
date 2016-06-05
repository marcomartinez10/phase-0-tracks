soccer_league = {
    details: {
        league_name: 'LIGA',
        league_number_teams: {
            total_teams: 3,
            winners: 1
        },
        teams: [
            "Real Madrid", 
            "Atletico",
            "Barcelona"
        ]
    }
}

puts "the best team is"
puts soccer_league[:details][:teams][0].upcase