project('violet', 'c', 'cpp',
    version : '0.1.0',
    license : 'GPLv2')

library_path = []
project_sources = []
project_header_files = []
project_test_sources = []
project_benchmark_sources = []

inc = [include_directories('include')]
subdir('include')
subdir('src')

violet_bin_deps = [
    meson.get_compiler('cpp').find_library('wiringPi', required : true)
]

violet_bin_dep_libs = [
    tca9555_lib,
    qpc6614_lib,
    rffc5072_lib
]

violet_bin = executable('violet_bin', 
            main_source, 
            include_directories : inc, 
            dependencies : violet_bin_deps,
            link_with : violet_bin_dep_libs)

