# README

# Gnomadic App

## ruby 3, rails 6, postgres 10+ database, supporting active storage 
## bootstrap 5, devise with user model, basic pages

# so far we have already generated the following data scaffold

### rails g devise user name:string:uniq pronouns:string has_land:boolean acreage:decimal footage:decimal open_spaces:integer land_description:text  
### rails g scaffold gnomeparcel landaddress:text open_to_visitors:boolean open_to_new_members:boolean latlong:string waterbodies:integer maps:text population:integer maxcapacity:integer vision:text landhookups:integer roadaccess:boolean seasonalhazards:string water:boolean electric:boolean sewage:boolean wifi:boolean user:references (parcels have attached images, gps plugin for latlong form)
### rails g scaffold community name:string mission:text calendar:text gnomeparcel:references 
### rails g scaffold event name:string starttime:datetime endtime:datetime community:references
### rails g scaffold role name:string description:text community:references

# Roadmap
## navigation menu
## IPFS & active storage accounts
## Figure out Gnomadic Infrastructure and payments.
## Front End