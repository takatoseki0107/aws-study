# ====== テスト用の出力 ======

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "public_subnet_map_public" {
  value = [
    aws_subnet.public_a.map_public_ip_on_launch,
    aws_subnet.public_c.map_public_ip_on_launch,
  ]
}

output "alb_type" {
  value = aws_lb.this.load_balancer_type
}

output "ec2_instance_type" {
  value = aws_instance.web[0].instance_type
}

output "rds_publicly_accessible" {
  value = aws_db_instance.this.publicly_accessible
}
