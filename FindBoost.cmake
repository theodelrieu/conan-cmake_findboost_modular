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

# Level1group deps
set(BOOST_ASSERT_DEPS config)
set(BOOST_IO_DEPS config)
set(BOOST_MP11_DEPS config)
set(BOOST_STATIC_ASSERT_DEPS config)
set(BOOST_VMD_DEPS preprocessor)
set(BOOST_WINAPI_DEPS config predef)

# Level2group deps
set(BOOST_CORE_DEPS assert config)
set(BOOST_THROW_EXCEPTION_DEPS assert config)

# Level3group deps
set(BOOST_ALIGN_DEPS assert config core static_assert throw_exception)
set(BOOST_ARRAY_DEPS assert config core static_assert throw_exception)
set(BOOST_BIND_DEPS config core)
set(BOOST_INTEGER_DEPS assert config core static_assert)
set(BOOST_LOGIC_DEPS config core)
set(BOOST_MOVE_DEPS assert config core static_assert)
set(BOOST_SYSTEM_DEPS assert config core predef winapi)
set(BOOST_TYPE_TRAITS_DEPS config core static_assert)

# Level4group deps
set(BOOST_ATOMIC_DEPS assert config type_traits)
set(BOOST_CRC_DEPS config integer)
set(BOOST_SMART_PTR_DEPS assert config core move predef static_assert throw_exception type_traits)
set(BOOST_TIMER_DEPS config core system)
set(BOOST_TUPLE_DEPS config core static_assert type_traits)

# Level5group deps
set(BOOST_CONCEPT_CHECK_DEPS config core mpl preprocessor type_traits)
set(BOOST_CONTAINER_HASH_DEPS assert config core detail integer static_assert type_traits)
set(BOOST_CONVERSION_DEPS assert config smart_ptr throw_exception type_traits typeof)
set(BOOST_DETAIL_DEPS config core mpl preprocessor static_assert type_traits)
set(BOOST_EXCEPTION_DEPS assert config core smart_ptr throw_exception tuple type_traits)
set(BOOST_FUNCTION_TYPES_DEPS config core detail mpl preprocessor type_traits)
set(BOOST_FUSION_DEPS config container_hash core function_types mpl preprocessor static_assert tuple type_traits typeof utility)
set(BOOST_ITERATOR_DEPS assert concept_check config conversion core detail function_types fusion mpl optional smart_ptr static_assert type_traits utility)
set(BOOST_MPL_DEPS config core predef preprocessor static_assert type_traits utility)
set(BOOST_OPTIONAL_DEPS assert config core detail move mpl static_assert throw_exception type_traits utility)
set(BOOST_TYPEOF_DEPS config core mpl preprocessor type_traits)
set(BOOST_UTILITY_DEPS config core iterator mpl preprocessor static_assert throw_exception type_traits)

# Level6group deps
set(BOOST_ENDIAN_DEPS assert config core predef static_assert system type_traits utility)
set(BOOST_FORMAT_DEPS assert config core optional smart_ptr throw_exception utility)
set(BOOST_GIL_DEPS bind concept_check config core iterator mpl preprocessor smart_ptr static_assert type_traits)
set(BOOST_HANA_DEPS config core fusion mpl tuple)
set(BOOST_INTRUSIVE_DEPS assert config container_hash core move static_assert)
set(BOOST_LAMBDA_DEPS bind config core detail iterator mpl preprocessor tuple type_traits utility)
set(BOOST_METAPARSE_DEPS config mpl predef preprocessor static_assert type_traits)
set(BOOST_NUMERIC_CONVERSION_DEPS config conversion core mpl preprocessor throw_exception type_traits)
set(BOOST_NUMERIC_INTERVAL_DEPS config detail logic)
set(BOOST_POLYGON_DEPS config core mpl)
set(BOOST_QVM_DEPS assert core exception static_assert throw_exception)
set(BOOST_RATIONAL_DEPS assert config core integer static_assert throw_exception type_traits utility)
set(BOOST_REGEX_DEPS assert concept_check config container_hash core integer iterator mpl predef smart_ptr static_assert throw_exception type_traits)
set(BOOST_TOKENIZER_DEPS assert config iterator mpl throw_exception)
set(BOOST_TTI_DEPS config function_types mpl preprocessor type_traits)
set(BOOST_TYPE_ERASURE_DEPS assert config core fusion iterator mpl preprocessor smart_ptr throw_exception type_traits typeof)
set(BOOST_TYPE_INDEX_DEPS config container_hash core mpl preprocessor smart_ptr static_assert throw_exception type_traits)

# Level7group deps
set(BOOST_ANY_DEPS config core mpl static_assert throw_exception type_index type_traits)
set(BOOST_CONTAINER_DEPS assert config container_hash core intrusive move static_assert type_traits)
set(BOOST_FUNCTION_DEPS assert bind config core integer move mpl preprocessor throw_exception type_traits typeof)
set(BOOST_POLY_COLLECTION_DEPS assert config core iterator mpl type_erasure type_traits)
set(BOOST_RANGE_DEPS array assert concept_check config container_hash core detail iterator mpl numeric_conversion optional preprocessor regex static_assert tuple type_traits utility)
set(BOOST_RATIO_DEPS config core integer mpl rational static_assert type_traits)

# Level8group deps
set(BOOST_CHRONO_DEPS assert config core integer mvoe mpl predef ratio static_assert system throw_exception type_traits typeof utility)
set(BOOST_CIRCULAR_BUFFER_DEPS assert concept_check config container core iterator move static_assert throw_exception type_traits utility)
set(BOOST_FILESYSTEM_DEPS assert config container_hash core detail io iterator range smart_ptr static_assert system type_traits)
set(BOOST_FOREACH_DEPS config core iterator mpl range type_traits)
set(BOOST_FUNCTIONAL_DEPS config core function function_types iterator mpl optional preprocessor type_traits typeof utility)
set(BOOST_LEXICAL_CAST_DEPS array assert config container core integer math mpl numeric_conversion range static_assert throw_exception type_traits)
set(BOOST_LOCALE_DEPS assert config function iterator smart_ptr static_assert type_traits)
set(BOOST_MATH_DEPS array assert atomic concept_check config core detail fusion integer lambda lexical_cast mpl predef range smart_ptr static_assert throw_exception tuple type_traits)
set(BOOST_PROTO_DEPS config core fusion mpl preprocessor range static_assert type_traits typeof utility)
set(BOOST_SCOPE_EXIT_DEPS config core function mpl preprocessor type_traits typeof)
set(BOOST_SIGNALS_DEPS any config core function iterator mpl optional smart_ptr type_traits utility)
set(BOOST_UNORDERED_DEPS assert config container container_hash core detail iterator predef preprocessor smart_ptr throw_exception)

# Level9group deps
set(BOOST_ALGORITHM_DEPS array assert bind concept_check config core exception function iterator mpl range regex static_assert throw_exception tuple type_traits unordered)
set(BOOST_LOCAL_FUNCTION_DEPS config mpl preprocessor scope_exit type_traits typeof utility)
set(BOOST_MULTI_ARRAY_DEPS array assert concept_check config core functional iterator mpl static_assert type_traits)
set(BOOST_PHOENIX_DEPS assert bind config core function fusion mpl predef preprocessor proto range smart_ptr type_traits utility)
set(BOOST_PROGRAM_OPTIONS_DEPS any config core detail function iterator lexical_cast smart_ptr static_assert throw_exception type_traits)
set(BOOST_PYTHON_DEPS bind config conversion core detail foreach function iterator lexical_cast mpl numeric_conversion preprocessor smart_ptr static_assert tuple type_traits utility)
set(BOOST_RANDOM_DEPS assert config core integer math mpl range static_assert system throw_exception type_traits utility)
set(BOOST_STACKTRACE_DEPS array config core lexical_cast static_assert type_traits winapi)
set(BOOST_VARIANT_DEPS assert bind config container_hash core detail math move mpl preprocessor static_assert throw_exception type_index type_traits utility)
set(BOOST_XPRESSIVE_DEPS assert config conversion core exception fusion integer iterator lexical_cast mpl numeric_conversion optional preprocessor proto range smart_ptr static_assert throw_exception type_traits typeof utility)

# Level10group deps
set(BOOST_IOSTREAMS_DEPS assert bind config core detail function integer iterator mpl preprocessor random range regex smart_ptr static_assert throw_exception type_traits utility)
set(BOOST_MULTIPRECISION_DEPS array assert config container_hash core integer lexical_cast math mpl predef random rational smart_ptr static_assert throw_exception type_traits)
set(BOOST_PARAMETER_DEPS config core detail mpl optional preprocessor python type_traits utility)
set(BOOST_TEST_DEPS algorithm assert bind config core detail exception function io iterator mpl numeric_conversion optional preprocessor smart_ptr static_assert timer type_traits utility)

# Level11group deps
set(BOOST_DATE_TIME_DEPS algorithm assert config io lexical_cast mpl range serialization1 smart_ptr static_assert throw_exception tokenizer type_traits utility winapi)
set(BOOST_HEAP_DEPS array assert bind concept_check config intrusive iterator mpl parameter static_assert throw_exception type_traits)
set(BOOST_LOCKFREE_DEPS align array assert atomic config core integer mpl parameter predef static_assert tuple type_traits utility)
set(BOOST_POOL_DEPS assert config integer thread throw_exception type_traits)
set(BOOST_SERIALIZATION_DEPS array assert config core detail integer io iterator move mpl optional predef preprocessor smart_ptr spirit static_assert type_traits unordered utility variant)
set(BOOST_SPIRIT_DEPS algorithm array assert concept_check config core endian filesystem foreach function function_types fusion integer io iostreams iterator lexical_cast locale math move mpl optional phoenix pool predef preprocessor proto range regex serialization smart_ptr static_assert thread throw_exception tti type_traits typeof unordered utility variant)
set(BOOST_THREAD_DEPS assert atomic bind chrono concept_check config container container_hash core date_time exception function intrusive io iterator move mpl optional predef preprocessor smart_ptr static_assert system throw_exception tuple type_traits utility winapi)

# Level12group deps
set(BOOST_CONTEXT_DEPS assert config pool predef smart_ptr)
set(BOOST_CONTRACT_DEPS any assert config core exception function function_types mpl optional preprocessor smart_ptr static_assert thread type_traits typeof utility)
set(BOOST_CONVERT_DEPS config core function_types lexical_cast math mpl optional parameter range spirit type_traits)
set(BOOST_DLL_DEPS config core filesystem function move mpl predef smart_ptr spirit static_assert system throw_exception type_index type_traits winapi)
set(BOOST_DYNAMIC_BITSET_DEPS config core integer move serialization static_assert throw_exception)
set(BOOST_GEOMETRY_DEPS algorithm array assert concept_check config container core function_types fusion integer iterator lexical_cast math move mpl multiprecision numeric_conversion polygon qvm range rational serialization smart_ptr static_assert throw_exception tokenizer tuple type_traits utility variant)
set(BOOST_ICL_DEPS assert concept_check config container core date_time detail iterator move mpl rational static_assert type_traits utility)
set(BOOST_INTERPROCESS_DEPS assert config container core date_time integer intrusive move static_assert type_traits unordered winapi)
set(BOOST_MSM_DEPS any assert bind circular_buffer config core function fusion mpl parameter phoenix preprocessor proto serialization tuple type_traits typeof)
set(BOOST_MULTI_INDEX_DEPS assert bind config container_hash core detail foreach integer iterator move mpl preprocessor serialization smart_ptr static_assert throw_exception tuple type_traits utility)
set(BOOST_NUMERIC_UBLAS_DEPS concept_check config core iterator mpl numeric_interval range serialization smart_ptr static_assert type_traits typeof)
set(BOOST_PTR_CONTAINER_DEPS array assert circular_buffer config core iterator mpl range serialization smart_ptr static_assert type_traits unordered utility)
set(BOOST_SORT_DEPS config core range serialization static_assert type_traits)
set(BOOST_STATECHART_DEPS assert bind config conversion core detail function mpl smart_ptr static_assert thread type_traits)
set(BOOST_UNITS_DEPS assert config core integer io lambda math mpl preprocessor serialization static_assert type_traits typeof)
set(BOOST_UUID_DEPS assert config core io iterator numeric~conversion random serialization smart_ptr static_assert throw_exception type_traits winapi)

# Level13group deps
set(BOOST_ACCUMULATORS_DEPS array assert circular_buffer concept_check config core fusion iterator mpl numeric_conversion numeric_ublas parameter preprocessor range static_assert throw_exception tuple type_traits typeof)
set(BOOST_ASSIGN_DEPS array config mpl preprocessor ptr_container range static_assert throw_exception tuple type_traits)
set(BOOST_COROUTINE_DEPS assert config context core exception move range system throw_exception type_traits utility)
set(BOOST_COROUTINE2_DEPS assert config context)
set(BOOST_FIBER_DEPS assert config context core intrusive predef smart_ptr)
set(BOOST_FLYWEIGHT_DEPS assert config container_hash core detail interprocess mpl multi_index parameter preprocessor serialization smart_ptr throw_exception type_traits)
set(BOOST_PROPERTY_TREE_DEPS any assert bind config core format iterator mpl multi_index optional range serialization static_assert throw_exception type_traits)
set(BOOST_SIGNALS_DEPS assert bind config core function iterator mpl multi_index optional parameter predef preprocessor smart_ptr throw_exception tuple type_traits variant)
set(BOOST_WAVE_DEPS assert concept_check config core filesystem iterator lexical_cast mpl multi_index pool preprocessor serialization smart_ptr spirit static_assert throw_exception type_traits)

# Level14group deps
set(BOOST_ASIO_DEPS array assert bind chrono config core coroutine date_time function regex smart_ptr system throw_exception type_traits utility)
set(BOOST_BIMAP_DEPS concept_check config container_hash core iterator lambda mpl multi_index preprocessor property_map serialization static_assert throw_exception type_traits utility)
set(BOOST_CHRONO_STOPWATCHES accumulators assert chrono config format system)
set(BOOST_COMPUTE_DEPS algorithm array assert chrono config core filesystem function function_types fusion iterator lexical_cast mpl optional preprocessor property_tree proto range smart_ptr static_assert thread throw_exception tuple type_traits typeof utility uuid)
set(BOOST_DISJOINT_SETS graph)
set(BOOST_GRAPH_DEPS algorithm any array assert bimap bind concept_check config container_hash conversion core detail disjoint_sets foreach function graph_parallel integer iterator lexical_cast math move mpl multi_index optional parameter preprocessor property_map property_tree random range serialization smart_ptr spirit static_assert test throw_exception tti tuple type_traits typeof unordered utility xpressive)
set(BOOST_GRAPH_PARALLEL_DEPS assert concept_check config container_hash core detail disjoint_sets dynamic_bitset filesystem foreach function graph iterator lexical_cast mpi mpl optional property_map random serialization smart_ptr static_assert tuple type_traits variant)
set(BOOST_LOG_DEPS array assert atomic bind config container core date_time exception filesystem function_types fusion intrusive iterator lexical_cast locale move mpl optional parameter phoenix predef preprocessor property_tree proto range regex smart_ptr spirit static_assert system thread throw_exception type_index type_traits utility winapi xpressive)
set(BOOST_MPI_DEPS assert config core function graph integer iterator mpl optional property_map python serialization smart_ptr static_assert throw_exception type_traits)
set(BOOST_PROPERTY_MAP_DEPS any assert bind concept_check config core function iterator lexical_cast mpi mpl multi_index optional serialization smart_ptr static_assert throw_exception type_traits utility)

# Level15group deps
set(BOOST_BEAST_DEPS asio assert config container core endian intrusive optional smart_ptr static_assert system throw_exception type_traits utility winapi)
set(BOOST_NUMERIC_ODEINT_DEPS array assert bind compute config core function fusion iterator math mpi mpl multi_array numeric_ublas preprocessor range static_assert throw_exception type_traits units utility)
set(BOOST_PROCESS_DEPS algorithm asio config core filesystem fusion iterator move optional system tokenizer type_index winapi)

## TODO circular deps at the end of each block
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
