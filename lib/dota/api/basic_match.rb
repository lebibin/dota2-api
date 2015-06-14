module Dota
  module API
    class BasicMatch < Entity
      include Utilities::Inspectable

      TYPES = {
        -1 => "Invalid",
        0 => "Public Matchmaking",
        1 => "Practice",
        2 => "Tournament",
        3 => "Tutorial",
        4 => "Co-op with Bots",
        5 => "Team Match",
        6 => "Solo Queue",
        7 => "Ranked"
      }.freeze

      MODES = {
        0 => "None",
        1 => "All Pick",
        2 => "Captain's Mode",
        3 => "Random Draft",
        4 => "Single Draft",
        5 => "All Random",
        6 => "Intro",
        7 => "Diretide",
        8 => "Reverse Captain's Mode",
        9 => "The Greeviling",
        10 => "Tutorial",
        11 => "Mid Only",
        12 => "Least Played",
        13 => "Limited Hero Pool",
        14 => "Compendium Matchmaking",
        15 => "Custom",
        16 => "Captain's Draft",
        17 => "Balanced Draft",
        18 => "Ability Draft",
        19 => "Event",
        20 => "All Random Death Match",
        21 => "1v1 Solo Mid",
        22 => "Ranked All Pick"
      }.freeze

      SKILL_LEVELS = {
        0 => "Any",
        1 => "Normal",
        2 => "High",
        3 => "Very High"
      }.freeze

      CLUSTERS = {
        111 => "US West",
        112 => "US West",
        114 => "US West",
        121 => "US East",
        122 => "US East",
        123 => "US East",
        124 => "US East",
        131 => "Europe West",
        132 => "Europe West",
        133 => "Europe West",
        134 => "Europe West",
        135 => "Europe West",
        136 => "Europe West",
        142 => "South Korea",
        143 => "South Korea",
        151 => "Southeast Asia",
        152 => "Southeast Asia",
        153 => "Southeast Asia",
        161 => "China",
        163 => "China",
        171 => "Australia",
        181 => "Russia",
        182 => "Russia",
        183 => "Russia",
        184 => "Russia",
        191 => "Europe East",
        200 => "South America",
        204 => "South America",
        211 => "South Africa",
        212 => "South Africa",
        213 => "South Africa",
        221 => "China ",
        222 => "China",
        223 => "China",
        231 => "China"
      }.freeze

      def id
        raw["match_id"]
      end
    end
  end
end
