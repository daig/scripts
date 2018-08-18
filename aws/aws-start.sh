AMI=ami-8a7859ef

instID=$(aws ec2 run-instances --image-id "$AMI" --count 1 --instance-type t2.micro --key-name t430 --security-groups default | jq '.Instances[0].InstanceId' | tr -d '"')

aws ec2 create-tags --resources $instID --tags "Key=Name,Value=$1"


echo $instID

