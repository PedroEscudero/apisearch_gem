# apisearch gem

Gem for connecting to Apisearch server

## Available methods


Create a new Apisearch instance
```
apisearch = Apisearch.new(url:'server_url', token: 'whatever_token', app_id: 'whatever_app_id' )
```
Set a query string
```
apisearch.set_query_text("text_to_search")
```
Do a search
```
apisearch.search
```
Note, if you don't set previously a text to search this method will retrieve a warning message.

The search will response an object in JSON format. Also the instance variables:
`total_hits`number of items found
`items` with an array of all occurrences found
`total_items` all items in the universe of the search

## TODO

* Include Score strategies
* Include Filters
* Include score searchs
* Include universe options
