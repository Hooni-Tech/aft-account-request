# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
terraform {
  #required_version = ">= 1.0.0"
  required_version = ">= 0.15.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = ">= 5.11.0, < 6.0.0"
      version = ">= 3.15"
    }
  }
}