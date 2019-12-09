project('violet', 'cpp')
cc = meson.get_compiler('cpp')
wp_dep = cc.find_library('wiringPi', required : true)
executable('demo', 'tca9555.cpp', dependencies : wp_dep)
