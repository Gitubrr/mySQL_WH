# Pet Salon Database
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?logo=mysql&logoColor=white)](https://www.mysql.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Build](https://img.shields.io/github/actions/workflow/status/Gitubrr/GoSymGym/build_and_lint.yaml?label=build&job=build)](https://github.com/Gitubrr/mySQL_WH/actions/workflows/test.yaml)
[![Lint](https://img.shields.io/github/actions/workflow/status/Gitubrr/GoSymGym/build_and_lint.yaml?label=lint&job=lint)](https://github.com/Gitubrr/mySQL_WH/actions/workflows/lint.yamls)

Database for a pet salon

## Database structure

- **Person** — people (owners and employees)
- **Owner** — pet owners
- **Employee** — employees
- **Pet_Type** — types of animals (dog, cat, etc.)s
- **Pet** — pets
- **Service** — services
- **Employee_Service** — employee skills
- **Order1** — orders for services

## ERD diagram

![ERD](docs/erd.png)

## Installation

Create a database
```bash
mysql -u root -p -e "CREATE DATABASE pet_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
```
Import structure and data
```bash
mysql -u root -p pet_db < sql/pets.sql
```