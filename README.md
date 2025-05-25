# My First Repo
# badminton_league
A simple Ruby on Rails application to manage a badminton league where users can:
Add and manage players
Record match results
View player statistics and leaderboard
Secure login/logout functionality with Devise

**🚀 Features**
Player Management: Add, delete, and view players.
Match Tracking: Record match results between players.
Leaderboard: Sort players by number of wins.
Authentication: Login and logout via Devise.
Icons & Styling: Font Awesome icons and clean UI using HTML/CSS.
Seed Data: Pre-populated users, players, and matches.

**Tech Stack**
Ruby on Rails 8
SQLite3 (default DB)
Devise (authentication)
HTML/CSS (UI)
Font Awesome (icons)
Turbo (Hotwire)
Importmap (no JS bundler)

⚙️ **Setup Instructions
Clone the Repository**

git clone https://github.com/yourusername/badminton_league.git
cd badminton_league

**Install Dependencies**
bundle install

**Set up the Database**
rails db:create
rails db:migrate
rails db:seed
Start the Server

rails server
**Access the App**
Go to http://127.0.0.1:3000

👥 **Demo Users**
Email	Password
admin@example.com	password
user@example.com	password

**🔐 Authentication Notes**
Devise handles all login, signup, logout flows.
You can update redirection by overriding Devise methods in application_controller.rb.

**Seeded Data**
2 demo users

5 players (Alice, Bob, Charlie, Diana, Eve)

3 matches recorded for testing leaderboard and match history

