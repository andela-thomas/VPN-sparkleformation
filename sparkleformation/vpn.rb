SparkleFormation.new(:compute, :provider => :aws).load(:base, :mappings).overrides do
  dynamic!(:parameters, :sparkle)
  dynamic!(:node, :sparkle, :ami)
end
