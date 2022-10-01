---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by captain.
--- DateTime: 5/26/2022 12:03 AM
---

require("lua_extension")
require("physics/raycast_hit")

--- @class Physics @物理引擎
Physics={

}

--- 初始化
function Physics:Init()
    Cpp.Physics.Init()
end

--- 驱动物理模拟
function Physics:FixedUpdate()
    Cpp.Physics.FixedUpdate()
end

--- 创建物理模拟的场景单元
--- @return PxScene @创建的物理场景单元
function Physics:CreatePxScene()
    return Cpp.Physics.CreatePxScene()
end

function Physics:CreateRigidDynamic(pos,name)
    return Cpp.Physics.CreateRigidDynamic(pos,name)
end

function Physics:CreateRigidStatic(pos,name)
    return Cpp.Physics.CreateRigidStatic(pos,name)
end

function Physics:CreateMaterial(static_friction,dynamic_friction,restitution)
    return Cpp.Physics.CreateMaterial(static_friction,dynamic_friction,restitution)
end

function Physics:CreateSphereShape(radius,material)
    Cpp.Physics.CreateSphereShape(radius,material)
end

function Physics:CreateBoxShape(size,material)
    Cpp.Physics.CreateBoxShape(size,material)
end

--- 射线检测：从指定位置发出射线，返回射线击中的第一个物体信息。
--- @param origin table @射线起点
--- @param dir table @射线方向
--- @param distance number @射线最大距离
--- @param raycast_hit RaycastHit @射线结果，需要传入引用
function Physics:RaycastSingle(origin,dir,distance,raycast_hit)
    return Cpp.Physics.RaycastSingle(origin,dir,distance,raycast_hit.cpp_class_instance_)
end