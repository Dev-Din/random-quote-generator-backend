# Quote Generator Backend

The Quote Generator Backend is a Sinatra application with ActiveRecord that provides API routes to handle CRUD operations on quotes. It is used in conjunction with the frontend to manage and store quotes in a database.

## Technologies Used

- Ruby
- Sinatra
- ActiveRecord
- SQLite

## Getting Started

### Prerequisites

- Ruby (version 2.6 or higher)

### Installation

1. Clone the repository to your local machine:

   ```
   git clone https://github.com/your-username/quote-generator.git
   ```

2. Navigate to the backend directory:

   ```
   cd quote-generator/backend
   ```

3. Install backend dependencies:

   ```
   bundle install
   ```

### Database Setup

1. Create a db directory in the backend directory to store the database file.

2. Run the following command to create the SQLite database and the quotes table:

   ```
   bundle exec rake db:create_migration NAME=create_quotes
   ```

3. This will generate a migration file in the `db/migrate` directory. Open the migration file and modify it as follows:

   ```ruby
   # db/migrate/XXXXXXXXXXXXXX_create_quotes.rb

   class CreateQuotes < ActiveRecord::Migration[6.0]
     def change
       create_table :quotes do |t|
         t.string :quote
         t.string :author

         t.timestamps
       end
     end
   end
   ```

4. Run the migration to create the quotes table:

   ```
   bundle exec rake db:migrate
   ```

### Starting the Application

1. Start the backend server:

   ```
   bundle exec rackup config.ru
   ```

   The server will start running on `http://localhost:9292`.

## API Routes

- `GET /quotes/random`: Fetches a random quote from the database and returns it in JSON format.

- `POST /quotes`: Creates a new quote in the database based on the request body.

- `PUT /quotes/:id`: Updates an existing quote in the database based on the quote ID and request body.

- `DELETE /quotes/:id`: Deletes a quote from the database based on the quote ID.

## Deployment

To deploy the backend application to a production environment, consider deploying it on a platform like Heroku.

## Contributing

If you would like to contribute to the development of this project, feel free to submit a pull request.

## Issues

If you encounter any issues or bugs, please open an issue on the GitHub repository.