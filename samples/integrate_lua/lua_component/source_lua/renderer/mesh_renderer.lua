﻿---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by captain.
--- DateTime: 5/16/2022 10:55 PM
---

require("lua_extension")
require("cpp_component")
require("material")

MeshRenderer=class("MeshRenderer",CppComponent)

function MeshRenderer:ctor()
    MeshRenderer.super.ctor(self)
end

function MeshRenderer:InitCppComponent()
    ---@type Cpp.MeshRenderer
    self.cpp_component_instance_=Cpp.MeshRenderer()
end

--- 设置Material
--- @param material Material 材质
function MeshRenderer:SetMaterial(material)
    self.cpp_component_instance_:SetMaterial(material)
end

--- 材质
--- @return Material @返回当前使用的材质
function MeshRenderer:material()
    return self.cpp_component_instance_:material()
end

--- 渲染
function MeshRenderer:Render()
    self.cpp_component_instance_:Render()
end