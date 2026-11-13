param location string = 'eastus'
param vnetName string = 'vnet-az104-lab001'

resource vnet 'Microsoft.Network/virtualNetworks@2023-09-01' = {
	name: vnetName
	location: location
	properties: {
		addressSpace: {
			addressPrefixes: [
				'10.10.0.0/16'
			]
		}
		subnets: [
			{
				name: 'snet-workloads'
				properties: {
					addressPrefix: '10.10.1.0/24'
				}
			}
		]
	}
}

output vnetId string = vnet.id
