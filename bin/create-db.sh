#!/usr/bin/env bash

echo "drop database if exists shopping_list" | mysql -uroot
echo "create database shopping_list" | mysql -uroot
cat ~/Projects/ShoppingList/db/initialize.sql | mysql -t -uroot shopping_list
# mysql -uroot
