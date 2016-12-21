SparkleFormation.dynamic(:parameters) do |name, opts={}|

  outputs do
    vpn_server_address do
      description "Use the IP as Server Address or VPN Host"
      value attr!(:VPN_server_instance, :public_ip)
    end
  end


  parameters do
    set!("speed") {
      type 'String'
      description "Network Speed of VPN Server. Standard should do for most browsing and video."
      default "Standard.VPN-Free"
      allowed_values registry!(:speed)
    }

    set!("Username".to_sym) {
      type 'String'
      allowed_pattern "[a-zA-Z][a-zA-Z0-9]*"
      description "VPN Username"
      max_length "255"
      min_length "1"
    }

    set!("VPN_password".to_sym) {
      constraint_description "must contain atleast 4 characters."
      description  "VPN Password (Min 4 characters)"
      max_length  "255"
      min_length "4"
      no_echo  "true"
      type  "String"
    }

    set!("VPNPhrase") {
      constraint_description  "must contain atleast 4 characters."
      description  "Passphrase for IPSEC PSK (Min 4 characters)"
      max_length  "255"
      min_length  "4"
      no_echo  "true"
      type  "String"
    }

  end
end

