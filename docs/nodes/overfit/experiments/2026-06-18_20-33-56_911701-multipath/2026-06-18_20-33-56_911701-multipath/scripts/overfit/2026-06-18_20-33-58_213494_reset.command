action: reset
note: Synthetic reset action description. This is not a literal executed shell command;
  reset execution is interface- and node-type specific.
node:
  id: overfit
  fqdn: overfit.ai.net.cit.tum.de
  node_type: dgx_host
execution:
  initialization_interface:
    id: overfit
    type: always_on
    transport: always_on
    details: {}
  strategy: power_cycle_if_running_then_start
  steps:
  - power_off_if_running
  - power_on
  implementation_hint: Interface-specific reset implementation
  access_levels:
  - user
boot:
  booted_image: default/ubuntu-noble-dgx-cuda-toolkit
  boot_parameters:
  - iommu=pt
