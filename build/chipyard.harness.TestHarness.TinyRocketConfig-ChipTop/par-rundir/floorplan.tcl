# --------------------------------------------------------------------------------
# This script was written and developed by HAMMER at UC Berkeley; however, the
# underlying commands and reports are copyrighted by Cadence. We thank Cadence for
# granting permission to share our research to help promote and foster the next
# generation of innovators.
# --------------------------------------------------------------------------------

create_floorplan -core_margins_by die -flip f -die_size_by_io_height max -site asap7sc7p5t -die_size { 800 500 0 0 0 0 }
# Floorplan automatically generated from HAMMER
place_inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_0 550 25 r0
create_place_halo -insts system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_0 -halo_deltas {0.0 0.0 0.0 0.0} -snap_to_site
create_route_halo -bottom_layer M1 -space 0.0 -top_layer M4 -inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_0
create_route_blockage -pg_nets -inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_0 -layers {M1 M2 M3} -cover
place_inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_1 550 270 r0
create_place_halo -insts system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_1 -halo_deltas {0.0 0.0 0.0 0.0} -snap_to_site
create_route_halo -bottom_layer M1 -space 0.0 -top_layer M4 -inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_1
create_route_blockage -pg_nets -inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_1 -layers {M1 M2 M3} -cover
place_inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_2 675 25 r0
create_place_halo -insts system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_2 -halo_deltas {0.0 0.0 0.0 0.0} -snap_to_site
create_route_halo -bottom_layer M1 -space 0.0 -top_layer M4 -inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_2
create_route_blockage -pg_nets -inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_2 -layers {M1 M2 M3} -cover
place_inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_3 675 270 r0
create_place_halo -insts system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_3 -halo_deltas {0.0 0.0 0.0 0.0} -snap_to_site
create_route_halo -bottom_layer M1 -space 0.0 -top_layer M4 -inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_3
create_route_blockage -pg_nets -inst system/tile_prci_domain/tile_reset_domain_tile/dcache/data/data_arrays_0/data_arrays_0_ext/mem_0_3 -layers {M1 M2 M3} -cover
place_inst system/tile_prci_domain/tile_reset_domain_tile/frontend/icache/tag_array_0/tag_array_0_ext/mem_0_0 125 150 my
create_place_halo -insts system/tile_prci_domain/tile_reset_domain_tile/frontend/icache/tag_array_0/tag_array_0_ext/mem_0_0 -halo_deltas {0.0 0.0 0.0 0.0} -snap_to_site
create_route_halo -bottom_layer M1 -space 0.0 -top_layer M4 -inst system/tile_prci_domain/tile_reset_domain_tile/frontend/icache/tag_array_0/tag_array_0_ext/mem_0_0
create_route_blockage -pg_nets -inst system/tile_prci_domain/tile_reset_domain_tile/frontend/icache/tag_array_0/tag_array_0_ext/mem_0_0 -layers {M1 M2 M3} -cover
place_inst system/tile_prci_domain/tile_reset_domain_tile/frontend/icache/data_arrays_0_0/data_arrays_0_0_ext/mem_0_0 0 25 my
create_place_halo -insts system/tile_prci_domain/tile_reset_domain_tile/frontend/icache/data_arrays_0_0/data_arrays_0_0_ext/mem_0_0 -halo_deltas {0.0 0.0 0.0 0.0} -snap_to_site
create_route_halo -bottom_layer M1 -space 0.0 -top_layer M4 -inst system/tile_prci_domain/tile_reset_domain_tile/frontend/icache/data_arrays_0_0/data_arrays_0_0_ext/mem_0_0
create_route_blockage -pg_nets -inst system/tile_prci_domain/tile_reset_domain_tile/frontend/icache/data_arrays_0_0/data_arrays_0_0_ext/mem_0_0 -layers {M1 M2 M3} -cover