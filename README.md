# Quote Generator Backend

This is the backend for the Quote Generator application, which is built using Sinatra and ActiveRecord to handle API routes and manage the database.

## Prerequisites

Before running the backend, make sure you have the following installed:

- Ruby (version 2.6.0 or higher)
- Bundler (if not installed, run `gem install bundler`)
- SQLite3 (for local development)

## Getting Started

Follow the steps below to set up and run the backend:

1. Clone the repository to your local machine.

2. Navigate to the backend directory:

   ```
   cd quote_generator_backend
   ```

3. Install the required gems:

   ```
   bundle install
   ```

4. Create the database and run the migration to set up the database schema:

   ```
   bundle exec rake db:create_migration NAME=create_quotes
   bundle exec rake db:migrate
   ```

5. Start the Sinatra server:

   ```
   bundle exec rackup config.ru
   ```

   The server will start running on `http://localhost:9292`.

## API Endpoints

The backend provides the following API endpoints:

- `GET /quotes/random`: Fetches a random quote from the database.

- `POST /quotes`: Creates a new quote. The request body should contain a JSON object with the keys `quote` and `author`.

- `PUT /quotes/:id`: Updates an existing quote with the specified ID. The request body should contain a JSON object with the keys `quote` and `author`.

- `DELETE /quotes/:id`: Deletes the quote with the specified ID.

## Models

The backend uses the `Quote` model to interact with the `quotes` table in the database. The `Quote` model is defined in the `app.rb` file.

## Database

The database is set up using SQLite3 and consists of a single table named `quotes`. The migration file to create this table is located in the `db/migrate` directory.

## Deployment

To deploy the backend to a production environment, you can use a web server like Heroku. Make sure to set the appropriate environment variables and database configurations.

## Contributing

If you would like to contribute to the development of this project, feel free to submit a pull request.

## Issues

If you encounter any issues or bugs, please open an issue on the GitHub repository.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---