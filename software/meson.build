project('violet', 'cpp',
    version : '0.1.0',
    license : 'GPLv2')

cc = meson.get_compiler('cpp')
wpi_dep = cc.find_library('wiringPi', required : true)

inc = include_directories('include')
subdir('include')
subdir('src')
# subdir('test')

executable('demo', 
            main_source, 
            include_directories : inc, 
            dependencies : wpi_dep)
