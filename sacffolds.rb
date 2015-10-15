rails g scaffold role user_id:integer idea_id:integer name:string
rails g scaffold permissions role_id:integer user_id:integer idea_id:integer
rails g scaffold idea user_id:integer permissions_id:integer
rails g scaffold category idea_id:integer recomendation_id:integer
rails g scaffold subcategory category_id:integer name:string
rails g scaffold mature idea_id:integer
rails g scaffold actions mature_id:integer action:string
rails g scaffold postulations user_id:integer idea_id:integer
rails g scaffold user_habilities user_id:integer hability_id:integer
rails g scaffold habilities name:integer
