# Bank App Ruby
Basic banking app created in week 10 of Makers as part of practice for Tech tests

Requirements
-----
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

*Acceptance criteria*
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When they print their bank statement
Then they would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

Getting Started
----
This app will be built using Ruby and a strict TDD process. Tests will be run using rspec. The simplecov and rubocop gems will be used for covergae and code quality.

* From your projects folder on your local machine `mkdir bank-app`
* `cd bank-app` to change into the directory and run `git init` to initialise git.
* To quickly set up your gemfile, run `bundle init`. Add the required gems using `bundle add xxxxx`.
* `bundle install` once all gems have been added to have them installed in the repo.
