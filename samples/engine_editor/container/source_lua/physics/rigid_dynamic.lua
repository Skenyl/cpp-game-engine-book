﻿---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by captain.
--- DateTime: 5/16/2022 10:55 PM
---

require("lua_extension")

--- @class RigidDynamic : RigidActor
RigidDynamic=class("RigidDynamic",RigidActor)

function RigidDynamic:ctor()
    RigidDynamic.super.ctor(self)
end

function RigidDynamic:InitCppComponent()
    ---@type Cpp.RigidDynamic
    self.cpp_component_instance_=Cpp.RigidDynamic() --创建对应的C++实例
end