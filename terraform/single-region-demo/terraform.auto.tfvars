# Rename this to `terraform.auto.tfvars` and edit.
# Set all of variables.

# 'project_name' and 'hashi_tags["owner"]' are combined to set Consul 'cluster name'
# cloud auto-join uses 'cluster name'

# Unique Project Name
project_name = "rpeteuil-consul-demo"

hashi_tags = {
  "project" = "jaddington consul demo"
  "owner"   = "jaddington@hashicorp.com"
  "TTL"     = "6"
}

# zone ID for TLD (ex: zone id for hashidemos.io)
route53_zone_id = "Z2VGUC188F45PC"

# TLD to register nodes and lb in
top_level_domain = "jaddington.hashidemos.io"

# AWS Keypair in Region - specifies key used when sshing to instance
#   https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
ssh_key_name = "jaddington_demo"

### CONSUL LICENSE KEY - HIGHLY RECOMMENDED 

# Consul Enterprise License Key
# consul_lic = "02MV4UU43BK5HGYYTOJZWFQMTMNNEWU33JLJWUM2KZNJNGQWSEIV2FUV2ZPFNFGMBVJV5ECNKMK5ETEWLKNN2FUVDENRHVORJVJYZEM22NNJGTCSLJO5UVSM2WPJSEOOLULJMEUZTBK5IWST3JJJWFU2SJPBGUIRJQLJBTC2KNI5FGSTCUNN4U6V2VORGWUTTKJ5BTC3CNK5JGUTSUMM2VSV2RGVHFOWLJJRBUU4DCNZHDAWKXPBZVSWCSOBRDENLGMFLVC2KPNFEXCSLJO5UWCWCOPJSFOVTGMRDWY5C2KNETMSLKJF3U22SBORGUIRLUJVCEUVKNNJCTMTSUIE3E4VDLOVGUIYZTJVVFCMCNPJMTKV3JJFZUS3SOGBMVQSRQLAZVE4DCK5KWST3JJF4U2RCJO5GFIQLYJRKEC6KWIRAXOT3KIF3U62SBO5LWSSLTJFWVMNDDI5WHSWKYKJYGEMRVMZSEO3DULJJUSNSJNJEXOTLKIV2E2RCFORGUISSVJVVE2NSOKRVTMTSUNN2U6VDLGVLWSSLTJFXFE3DDNUYXAYTNIYYGCVZZOVMDGUTQMJLVK2KPNFEXSTKEJF4EYVCBPBGFIQLZKZCES6SPNJKTKT3KKU2UY2TLGVHVM33JJRBUU53DNU4WWZCXJYYES2TPNFMTEOLVMMZVM42JNF3WSWTNPBUFUM2NNFHW45BZMZIT2PJOHFLGOMSGMZGDSQTHGNFEWM3DPBZHIVDMIFVFI2TNONLVKMZRLBYHA3SEGBRHMOKHJ5YWOQRVGVGES6KOOZLXCRKUOEXW6YRTIY2WUWSUMZUDMRJQOQXXSVKDOJZDC2CWHBRFG3CEJIYWIQLLMNQTIZCWGAZTGOCQO5WVM3DBOZFFANDQJJ4ESSJZIQ3FKRSMKVQVMUDKNNLUU5DDIQ3HAYLMGZXU6ZSHNZFTE6SQJNFFE3KHJBLDGZK2O5YUMZJLN43WWL3TFNAVITTIKBNGOUZPJNLFSZZPJMVWYR2QO5GDO2SCPBETOR2PMFVTMVLBNFQUQ33FNMYFEVDPG4ZEIUJ5HU"

#   If Consul License not provided - Consul service will shutdown (on all hosts) in 30m
#     Terraform will be unable to destroy the environment since Consul is not running
#   To repair demo environment after shutdown
#     Reboot or restart the consul service on each host (including clients)

### OPTIONAL 

# Consul Cluster region and DC Name
# aws_region = "us-west-2"
# consul_dc  = "dc1"

# AMI prefix name - set if custom AMI's created
# ami_prefix = "consul-demo"
