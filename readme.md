Shopping List
=============


Database
--------

- Users
- List
- ListItems
- user_right


Users
-----
    id, name
    1,  John
    10, David
    11, Julia


List
----
    id, name,      owner
    1,  ShopList    1
    2,  ShoolList  10
    3,  Personal   10

ListItem
--------

    id, list_id, title,    done
    1,  1,       Banana, false
    2,  1,       apple,    true
    3,  2,       oranges   false


user_right
----------
id, user_id, list_id, right
1    1        1        owner
2    10       2        owner
3    11       2        member
4    1        2        member
5    10       3        owner
