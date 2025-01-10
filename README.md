# ApartmentSearch

Apartment search is a mock apartment listing and search application used for Rentable interviews. You may be asked to review specific PRs in this repo as part of the interview process.

## Getting Started

To run this application, you'll need to have Ruby 3.3.4 installed.

```
rbenv install 3.3.4
```

To run the application, you will need to run the following commands:

```
bundle install
bin/rails db:setup
bin/setup
bin/rails s
```

If you are working with Tailwind and would like to recomplile your CSS on save, you will want to run `bin/dev` instead of `bin/rails s`.
