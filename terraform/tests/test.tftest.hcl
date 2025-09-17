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
