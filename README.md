<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-scaffolding/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-scaffolding/actions/workflows/test.yml)

# Terraform ACI Scaffolding Module

Description

Location in GUI:
`Tenants` » `XXX`

## Examples

```hcl
module "aci_scaffolding" {
  source  = "netascode/scaffolding/aci"
  version = ">= 0.0.1"

  name        = "ABC"
  alias       = "ABC-ALIAS"
  description = "My Description"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | PIM Policy name. | `string` | n/a | yes |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | PIM Policy's Tenant name. | `string` | n/a | yes |
| <a name="input_auth_key"></a> [auth\_key](#input\_auth\_key) | PIM Policy Authorization Key. | `string` | `""` | no |
| <a name="input_auth_type"></a> [auth\_type](#input\_auth\_type) | PIM Policy Authorization Type. Valid values are: `none` or `ah-md5`. | `string` | `"none"` | no |
| <a name="input_mcast_dom_boundary"></a> [mcast\_dom\_boundary](#input\_mcast\_dom\_boundary) | PIM Policy Multicast Domain Boundary Flag. | `bool` | `false` | no |
| <a name="input_passive"></a> [passive](#input\_passive) | PIM Policy Multicast Strict RFC Compliant Flag. | `bool` | `false` | no |
| <a name="input_designated_router_delay"></a> [designated\_router\_delay](#input\_designated\_router\_delay) | PIM Policy Designated Router Delay (seconds). | `number` | `3` | no |
| <a name="input_designated_router_priority"></a> [designated\_router\_priority](#input\_designated\_router\_priority) | PIM Policy Multicast Designated Router Priority. | `number` | `1` | no |
| <a name="input_hello_interval"></a> [hello\_interval](#input\_hello\_interval) | PIM Policy Multicast Hello Interval (milliseconds). | `number` | `30000` | no |
| <a name="input_join_prune_interval"></a> [join\_prune\_interval](#input\_join\_prune\_interval) | PIM Policy Join Prune Interval (seconds). | `number` | `60` | no |
| <a name="input_neighbor_filter_policy"></a> [neighbor\_filter\_policy](#input\_neighbor\_filter\_policy) | PIM Policy Interface-Level Neighbor Filter Policy. | `string` | `""` | no |
| <a name="input_join_prune_filter_policy_out"></a> [join\_prune\_filter\_policy\_out](#input\_join\_prune\_filter\_policy\_out) | PIM Policy Interface-Level Outbound Join-Prune Filter Policy. | `string` | `""` | no |
| <a name="input_join_prune_filter_policy_in"></a> [join\_prune\_filter\_policy\_in](#input\_join\_prune\_filter\_policy\_in) | PIM Policy Interface-Level Inbound Join-Prune Filter Policy. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `pimIfPol` object. |
| <a name="output_name"></a> [name](#output\_name) | PIM Policy name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest_managed.pimIfPol](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
| [aci_rest_managed.pimJPInbFilterPol](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
| [aci_rest_managed.pimJPOutbFilterPol](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
| [aci_rest_managed.pimNbrFilterPol](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
| [aci_rest_managed.rtdmcRsFilterToRtMapPol_join_prune_filter_in](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
| [aci_rest_managed.rtdmcRsFilterToRtMapPol_join_prune_filter_out](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
| [aci_rest_managed.rtdmcRsFilterToRtMapPol_neighbor_filter](https://registry.terraform.io/providers/CiscoDevNet/aci/latest/docs/resources/rest_managed) | resource |
<!-- END_TF_DOCS -->