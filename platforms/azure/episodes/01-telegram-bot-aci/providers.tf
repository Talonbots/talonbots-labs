terraform {
  required_version = ">= 1.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }

  # Episode 01 uses LOCAL state for simplicity — it's ephemeral anyway.
  # If you want remote state: run Episode 00 first, then plug in the backend
  # snippet from `terraform output backend_snippet` there.
}

provider "azurerm" {
  features {}

  # Auth comes from ARM_* env vars exported by scripts/load-azure-creds.sh.
  # Nothing sensitive is set here.
}
