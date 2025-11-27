# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "req_accnt_prod01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "dark9121+ctaftprod01@gmail.com"
    AccountName  = "aftprod01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "PROD"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Production (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "dark9121@gmail.com"
    SSOUserFirstName = "MYUNGHOON"
    SSOUserLastName  = "KIM"
  }

  account_tags = {
    "ABC:Owner"       = "mhoonkim"
    "ABC:Environment" = "PROD"
    "ABC:Project"     = "CT-AFT-PROD"
  }

  change_management_parameters = {
    change_requested_by = "mhoonkim"
    change_reason       = "Customized PROD account vending with AFT"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  #account_customizations_name = "DEV2-BUDGET-2"
  account_customizations_name = "PROD"
}

#어카운트 네임 Rule
#AccountName 은 특수문자나 공백을 포함하면 안됩니다.
#지원되는 캐릭터는 [a-zA-Z0-9][a-zA-Z0-9._-] 입니다.
#account_tags, custom_field의 값 역시 특수문자나 공백을 포함하면 안됩니다.
#Tag의 key, value 모두 대소문자를 구분합니다. 더 자세한 내용은 다음의 Tagging reference 를 참조하세요.
#https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html