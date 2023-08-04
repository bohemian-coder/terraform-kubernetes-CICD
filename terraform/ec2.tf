resource "aws_instance" "demo-server" {
  ami                    = var.ami_ids[each.key]
  instance_type          = var.instance_types[each.key]
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  for_each               = toset(["jenkins-master", "jenkins-node", "ansible-controller"])
  tags = {
    Name    = "${each.key}"
    Project = local.project
  }
  user_data                   = file("${path.module}/${var.setup_files[each.key]}")
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true
}
