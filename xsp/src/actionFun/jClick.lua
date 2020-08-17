---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 11301.
--- DateTime: 2020/8/16 22:45
--- 点击
jClick = {
    p = nil;
};

function jClick.new(...)
    local new ={};
    jClick.__index = jClick;
    setmetatable(new,jClick);
    new.p = {...};
    return new;
end

function jClick:run(action,points)
    if #self.p > 0 then
        for k,v in pairs(self.p) do
            jTouch(v);
            ec= JoJo:showTouch(points);
            log("点击:"..action.name.. "页面, 坐标: X: [" .. points.x .. "], Y:[" .. points.y .."]" )
            sleep(action.action_pre or 1000);
            JoJo:hideTouch(ec);
        end
    else
        jTouch(points);
        ec= JoJo:showTouch(points);
        sleep(500);
        JoJo:hideTouch(ec);
        log("点击:"..action.name.. "页面, 坐标: X: [" .. points.x .. "], Y:[" .. points.y .."]" )
    end
end