aws ec2 terminate-instances --instance-ids "$1"
aws ec2 delete-tags --resources "$1"

