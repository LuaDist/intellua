# Copyright (C) 2013 LuaDist.
# Created by Michal Kottman
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

project ( intellua NONE )
cmake_minimum_required ( VERSION 2.8 )
include ( cmake/dist.cmake )
include ( lua )

install_lua_module ( intellua intellua.lua )
install_lua_module ( intellua.modules modules.lua )
