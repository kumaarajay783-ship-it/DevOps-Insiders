variable "infrastructure" {

  type = map(object({

    rg_name              = string
    location             = string
    storage_account_name = string
    account_tier         = string
    replication_type     = string

  }))

}