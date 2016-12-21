SparkleFormation.dynamic(:node) do |name, ami|
  resources do

    set!("VPN_security_group") {
      properties {
        group_description "VPN Security Groups"
        security_group_ingress registry!(:security_group_ingress)
      }
      type "AWS::EC2::SecurityGroup"
    }

    set!("VPN_server_instance") {
      type "AWS::EC2::Instance"
      properties {

        image_id map!(
          :AWS_region_arch2_AMI,
          ref!(
            'AWS::Region'
          ),
             "HVM64"
        )

        instance_type map!(
          :AWS_instance_type2_arch,
          ref!(:speed),
          :instance_type
        )

        security_groups [
          ref!(:VPN_security_group)
        ]

        user_data base64!(
          join!(registry!(:user_data))
        )
      }
    }

  end
end
