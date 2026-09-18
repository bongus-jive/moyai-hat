local _die = die

function die(...)
  pcall(function()
    local portrait = world.entityPortrait(entity.id(), "full") or {}
    for _, draw in ipairs(portrait) do
      if draw.image and draw.image:find("/maoi.png", nil, true) then
        world.spawnItem("pat_moyai", mcontroller.position())
        break
      end
    end
  end)

  if _die then return _die(...) end
end
