SparkleFormation.build do
  mappings.AWS_region_arch2_AMI do
    set!("ap-northeast-1"._no_hump, :HVM64 => "ami-20b6aa21")
    set!("ap-southeast-1"._no_hump, :HVM64 => "ami-ca381398")
    set!("ap-southeast-2"._no_hump, :HVM64 => "ami-abeb9e91")
    set!("eu-central-1"._no_hump, :HVM64 => "ami-9a380b87")
    set!("eu-west-1"._no_hump, :HVM64 => "ami-234ecc54")
    set!("sa-east-1"._no_hump, :HVM64 => "ami-69f54974")
    set!("us-east-1"._no_hump, :HVM64 => "ami-9a562df2")
    set!("us-west-1"._no_hump, :HVM64 => "ami-5c120b19")
    set!("us-west-2"._no_hump, :HVM64 => "ami-29ebb519")
    set!("ap-south-1"._no_hump, :HVM64 => "ami-4eff8a21")
  end

  mappings.AWS_instance_type2_arch do

    set!("high._speed._VPN-_paid") {
      instance_type "t2.medium"
    }

    set!("ultra._high._speed_.VPN-_paid") {
      instance_type "m3.xlarge"
    }

    set!("standard._VPN-_free") {
      instance_type "t2.micro"
    }

  end
end
