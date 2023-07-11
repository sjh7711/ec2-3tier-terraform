# resource "aws_key_pair" "sjh" {
#   key_name   = "sjh-key"
#   public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUbjaePusUEJlpa8aMQ7QumH1cb8kItxZA2RgrWy/fe30NMzi0f28s2IBw1+Ch5awWhZ0bJLXcpW55FOiomuaYWFpaXCthMiaVKamKiK9e9xp8tY2IYltN0AG+W3MaCKPGQhWRsCC8y7nUFY3NSw/AjnPZyZEJTJdUc90LW1MV/GjoPAz5M6woKtdTqaMLVj/8c6KrFm4gta6cnJe05aFw+NaprTnyx2h1rQ1oyHcKOrS3/zryi24X41V4NTxA92bgS466VMnu4TEBuTRVMO2HzIWd/UjaPWf2tysHZiEgoI/pgCMxKBlrNE9Jn/89POQo7QRrMZwIRRaqlnjntM+gLSUbaR4cZteanfPYEl/k1sN2OZ6X3eyem6NbBm1tefgxbY4YHl3JWdEzyOB/RNbswz+Ozqa4wyMqDTqPvfANmCKcxO744njYT5cDZiAJEm8CrOipgSwf4k8avvwLmKNFvE1C+qKekXfz2DmegRCqCnkMdU9zKwrHcuvN2Y1qO10= "
# }

resource "aws_key_pair" "sjh" {
  key_name   = var.keyname
  public_key = file("./${var.keyname}.pub")
}
