# Pet Salon Database
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?logo=mysql&logoColor=white)](https://www.mysql.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Build](https://img.shields.io/github/actions/workflow/status/Gitubrr/PetSalonDatabase_HW/build.yaml?label=build)](https://github.com/Gitubrr/PetSalonDatabase_HW/actions/workflows/build.yaml)

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
- **Vaccine_Type** — directory of vaccine types
- **Vaccine** — vaccination log

## ERD diagram

![ERD](docs/erd2.png)

## Installation

Create a database and import data
```bash
mysql -u root -p < src/init.sql
```
