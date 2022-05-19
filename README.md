# README

# Gnomadic App

### Stack: ruby 3, rails 6, postgres 10+ database, supporting active storage 
### Current State: bootstrap 5, devise with user model, basic pages

### Scaffolds already done

#### User 
#### name:string:uniq pronouns:string has_land:boolean acreage:decimal footage:decimal open_spaces:integer land_description:text  
#### gnomeparcel
#### landaddress:text open_to_visitors:boolean open_to_new_members:boolean latlong:string waterbodies:integer maps:text population:integer maxcapacity:integer vision:text landhookups:integer roadaccess:boolean seasonalhazards:string water:boolean electric:boolean sewage:boolean wifi:boolean user:references (parcels have attached images, gps plugin for latlong form)
#### community 
#### name:string mission:text calendar:text gnomeparcel:references 
#### event
#### name:string starttime:datetime endtime:datetime community:references
#### role 
#### name:string description:text community:references

# Roadmap
## navigation menu
## IPFS & active storage accounts
## Figure out Gnomadic Infrastructure and payments.
## Front End
