set(LEVEL0GROUP
  callable_traits
  compatibility
  config
  predef
  preprocessor
)

set(LEVEL1GROUP
  assert
  io
  mp11
  static_assert
  vmd
  winapi
)

set(LEVEL2GROUP
  core
  throw_exception
)

set(LEVEL3GROUP
  align
  array
  bind
  integer
  logic
  move
  system
  type_traits
)

set(LEVEL4GROUP
  atomic
  crc
  smart_ptr
  timer
  tuple
)


set(LEVEL5GROUP
  concept_check
  container_hash
  conversion
  detail
  exception
  function_types
  fusion
  iterator
  mpl
  optional
  typeof
  utility
)


set(LEVEL6GROUP
  endian
  format
  gil
  hana
  intrusive
  lambda
  metaparse
  numeric_conversion
  numeric_interval
  polygon
  qvm
  rational
  regex
  tokenizer
  tti
  type_erasure
  type_index
)

set(LEVEL7GROUP
  any
  container
  function
  poly_collection
  range
  ratio
)

set(LEVEL8GROUP
  chrono
  circular_buffer
  filesystem
  foreach
  functional
  lexical_cast
  locale
  math
  proto
  scope_exit
  signals
  unordered
)

set(LEVEL9GROUP
  algorithm
  local_function
  multi_array
  phoenix
  program_options
  python
  random
  stacktrace
  variant
  xpressive
)

set(LEVEL10GROUP
  iostreams
  multiprecision
  parameter
  test
)

set(LEVEL11GROUP
  date_time
  heap
  lockfree
  pool
  serialization
  spirit
  thread
)

set(LEVEL12GROUP
  context
  contract
  convert
  dll
  dynamic_bitset
  geometry
  icl
  interprocess
  msm
  multi_index
  numeric_ublas
  ptr_container
  sort
  statechart
  units
  uuid
)

set(LEVEL13GROUP
  accumulators
  assign
  coroutine
  coroutine2
  fiber
  flyweight
  property_tree
  signals2
  wave
)

set(LEVEL14GROUP
  asio
  bimap
  chrono_stopwatches
  compute
  disjoint_sets
  graph
  graph_parallel
  log
  mpi
  property_map
)

set(LEVEL15GROUP
  beast
  numeric_odeint
  process
)

set(COMPONENT_PROPERTIES 
	INTERFACE_LINK_LIBRARIES 
	INTERFACE_INCLUDE_DIRECTORIES 
	INTERFACE_COMPILE_DEFINITIONS 
	INTERFACE_COMPILE_OPTIONS
)

function(add_cloned_imported_target dst_target src_target)
		add_library(${dst_target} INTERFACE IMPORTED)
    # foreach(property_name COMPONENT_PROPERTIES)
    foreach(property_name INTERFACE_LINK_LIBRARIES INTERFACE_INCLUDE_DIRECTORIES INTERFACE_COMPILE_DEFINITIONS INTERFACE_COMPILE_OPTIONS)
        get_property(value TARGET ${src_target} PROPERTY ${property_name} )
        set_property(TARGET ${dst_target} PROPERTY ${property_name} ${value})
    endforeach()
#     add_library(${dst} INTERFACE IMPORTED)
#     foreach(name INTERFACE_LINK_LIBRARIES INTERFACE_INCLUDE_DIRECTORIES INTERFACE_COMPILE_DEFINITIONS INTERFACE_COMPILE_OPTIONS)
#         get_property(value TARGET ${src} PROPERTY ${name} )
#         set_property(TARGET ${dst} PROPERTY ${name} ${value})
#     endforeach()
endfunction()

foreach(component ${Boost_FIND_COMPONENTS})
	message("component: ${component}")
	if(NOT TARGET Boost::${component})
    set(boost_${component}_found FALSE)

		message("Adding library: Boost::${component}")
		foreach(group_name ${LEVEL_GROUPS})
      if (NOT boost_${component}_found)
        # IN_LIST only works since CMake 3.3, use the old way
        list(FIND ${group_name} ${component} _index)
        if(${_index} GREATER -1)
					message("found ${component} is member of group ${group_name}")
					message("creating vars for ${component} under ${group_name}")
					add_cloned_imported_target(Boost::${component} CONAN_PKG::boost_${group_name})
					set(boost_${component}_found TRUE)
					message("boost_${component}_found set to ${boost_${component}_found}")
				endif()
			endif()
		endforeach(group_name)
		
		if (NOT ${boost_${component}_found})
			message("Determined that ${component} is NOT a member of any group")
			add_cloned_imported_target(Boost::${component} CONAN_PKG::boost_${component})
		endif()
		message("Done Adding library: Boost::${component}")
	endif()
endforeach(component)

set(Boost_FOUND TRUE)	
