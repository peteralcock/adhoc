# Deployment Instructions for SLCSP Application

## Prerequisites

- Ruby (version 2.7.2 or later)
- Rails (version 6.0.3 or later)
- PostgreSQL
- Git (for version control)

## Setup

1. **Clone the Repository**
   - Clone the application repository using Git.
     ```
     git clone [repository-url]
     cd slcsp_app
     ```

2. **Install Dependencies**
   - Install the required Ruby gems.
     ```
     bundle install
     ```

3. **Database Setup**
   - Ensure PostgreSQL is running.
   - Set up the database.
     ```
     rails db:create
     rails db:migrate
     ```

4. **Import CSV Data**
   - Place the `plans.csv`, `zips.csv`, and `slcsp.csv` files in the 
appropriate directory (e.g., `lib/assets`).
   - Run the rake tasks to import data from these files.
     ```
     rake import:zips
     rake import:plans
     ```

## Running the Application

1. **Calculate SLCSP**
   - Run the script or rake task to calculate the SLCSP and output the 
results.
     ```
     rails runner script/calculate_slcsp.rb
     ```
   - This will generate an output file with the SLCSP rates for each ZIP 
code.

2. **Running Tests**
   - Ensure the correctness of the application by running the test suite.
     ```
     bundle exec rspec
     ```

## Additional Information

- Ensure environment variables and configuration settings are correctly 
set for different deployment environments (development, test, production).
- For production deployment, additional steps for setting up a web server 
(like Puma or Unicorn) and reverse proxy server (like Nginx or Apache) 
might be required.

## Troubleshooting

- If you encounter issues with database connections, verify your database 
configuration in `config/database.yml`.
- For errors during CSV import, ensure the CSV files are correctly 
formatted and located in the specified directory.

