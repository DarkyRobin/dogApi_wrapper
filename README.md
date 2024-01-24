# Dog Api Project
## Overview
The [Dog Api](https://dogapi.dog/) developed by kinduff, is a Ruby on Rails application designed to provide information about various dog breeds through a RESTful API. It allows users to retrieve a list of all dog breeds, as well as detailed information about each breed.

## Features
  * List All Breeds: Get an information on over 340 dog breeds and informations.
  * Breed Groups
  * Fun Facts

## Get Started
### Pre-requisites
  * Ruby version: 3.2.2
  * Rails version: 7.1.3
### External gems for delevelopment/test environment
```
  gem 'rspec-rails', '~> 6.1.0'
  gem 'webmock'
  gem 'httparty', '~> 0.21.0'
```
### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/DarkyRobin/dogApi_wrapper.git
2. Navigate to the project directory and run `bundle install` to install all necessary dependencies
3. Start the API server by running `rails server` The API will be available at http://localhost:3000.

### API Endpoints
1. List All Breeds
  ```
  URL: /dogs
  Method: GET
  Success Response:
  Code: 200
  Content: JSON array of breeds
  ```
2. Get Breed Information
  ```
  URL: /dogs/breed_info/:id
  Method: GET
  URL Params: id=[string] (breed ID)
  Success Response:
  Code: 200
  Content: JSON object containing breed details
  ```
3. List All Group Breeds
  ```
  URL: /breed_groups
  Method: GET
  Success Response:
  Code: 200
  Content: JSON array of breeds
  ```
4. Get Breed Group Info
  ```
  URL: /dogs/group_info/:id
  Method: GET
  URL Params: id=[string] (group ID)
  Success Response:
  Code: 200
  Content: JSON object containing breed details
  ```
## Testing
Run RSpec tests:
```bash
  rspec
```
## Contributions
Contributions are welcome. Please open an issue to discuss your idea or submit a pull request.

## Acknowledgments
[Dog Api](https://dogapi.dog/) data provided by kinduff.
