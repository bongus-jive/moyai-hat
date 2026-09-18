local _die = die
function die(...)
  if config.getParameter("pat_moyai") then
    world.spawnItem("pat_moyai", entity.position())
  end

  if _die then _die(...) end
end
