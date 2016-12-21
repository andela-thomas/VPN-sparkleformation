SfnRegistry.register(:security_group_ingress) do
  [
    {
      "CidrIp": "0.0.0.0/0",
      "FromPort": "500",
      "IpProtocol": "tcp",
      "ToPort": "500"
    },
    {
      "CidrIp": "0.0.0.0/0",
      "FromPort": "500",
      "IpProtocol": "udp",
      "ToPort": "500"
    },
    {
      "CidrIp": "0.0.0.0/0",
      "FromPort": "4500",
      "IpProtocol": "udp",
      "ToPort": "4500"
    },
    {
      "CidrIp": "0.0.0.0/0",
      "FromPort": "1723",
      "IpProtocol": "tcp",
      "ToPort": "1723"
    },
    {
      "CidrIp": "0.0.0.0/0",
      "FromPort": "1723",
      "IpProtocol": "udp",
      "ToPort": "1723"
    }
  ]
end
