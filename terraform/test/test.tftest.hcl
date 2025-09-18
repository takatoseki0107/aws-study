run "check_vpc_cidr" {
  command = plan
  variables {
    db_password = "Dummy#Password1!"
  }

  # 本当は 10.0.0.0/16 だけど、わざと失敗させる
  assert {
    condition     = output.vpc_cidr == "192.168.0.0/16"
    error_message = "VPC の CIDR が 192.168.0.0/16 ではありません。"
  }
}

run "check_public_subnets_are_public" {
  command = plan
  variables {
    db_password = "Dummy#Password1!"
  }

  assert {
    condition     = output.public_subnet_map_public[0] == true && output.public_subnet_map_public[1] == true
    error_message = "パブリックサブネットでパブリックIP自動割り当てが有効になっていません。"
  }
}

run "check_alb_type" {
  command = plan
  variables {
    db_password = "Dummy#Password1!"
  }

  assert {
    condition     = output.alb_type == "application"
    error_message = "ALB のタイプが application ではありません。"
  }
}

run "check_ec2_instance_type" {
  command = plan
  variables {
    db_password = "Dummy#Password1!"
  }

  # 本当は t2.micro だけど、わざと失敗させる
  assert {
    condition     = output.ec2_instance_type == "t3.micro"
    error_message = "EC2 のインスタンスタイプが t3.micro ではありません。"
  }
}

run "check_rds_is_private" {
  command = plan
  variables {
    db_password = "Dummy#Password1!"
  }

  assert {
    condition     = output.rds_publicly_accessible == false
    error_message = "RDS がパブリックアクセス可能になっています。"
  }
}
