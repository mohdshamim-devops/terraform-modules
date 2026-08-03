# Azure Resource Group Module

## Features

- Creates an Azure Resource Group
- Supports custom tags
- Reusable child module

## Inputs

| Name | Type | Required |
|------|------|----------|
| name | string | Yes |
| location | string | Yes |
| tags | map(string) | No |

## Outputs

| Name | Description |
|------|-------------|
| id | Resource Group ID |
| name | Resource Group Name |
