function getName()
	return "Test"
end

function onMapLoaded()
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-03", 0, 0)
	map:addTile("tile-background-03", 0, 1)
	map:addTile("tile-background-03", 0, 2)
	map:addTile("tile-rock-03", 0, 3)
	map:addTile("tile-ground-01", 0, 4)
	map:addTile("tile-background-03", 0, 5)
	map:addTile("tile-background-03", 0, 6)
	map:addTile("tile-background-01", 0, 7)
	map:addTile("tile-background-03", 0, 8)
	map:addTile("tile-background-03", 0, 9)
	map:addTile("tile-background-03", 0, 10)
	map:addTile("tile-background-02", 0, 11)
	map:addTile("tile-background-02", 0, 12)
	map:addTile("tile-background-03", 0, 13)
	map:addTile("tile-background-03", 0, 14)
	map:addTile("tile-background-03", 0, 15)
	map:addTile("tile-background-03", 0, 16)
	map:addTile("tile-background-04", 1, 0)
	map:addTile("tile-background-big-01", 1, 1)
	map:addTile("tile-background-cave-art-01", 1, 3)
	map:addTile("tile-background-big-01", 1, 4)
	map:addTile("tile-background-cave-art-01", 1, 6)
	map:addTile("tile-background-cave-art-01", 1, 7)
	map:addTile("bridge-wall-left-01", 1, 7)
	map:addTile("tile-background-04", 1, 8)
	map:addTile("tile-background-02", 1, 9)
	map:addTile("tile-ground-02", 1, 10)
	map:addTile("tile-background-02", 1, 11)
	map:addTile("tile-background-03", 1, 12)
	map:addTile("tile-background-03", 1, 13)
	map:addTile("tile-background-big-01", 1, 14)
	map:addTile("tile-background-cave-art-01", 1, 16)
	map:addTile("tile-background-01", 2, 0)
	map:addTile("tile-background-03", 2, 3)
	map:addTile("tile-background-01", 2, 6)
	map:addTile("tile-background-big-01", 2, 7)
	map:addTile("bridge-plank-01", 2, 7)
	map:addTile("tile-background-window-01", 2, 9)
	map:addTile("tile-ground-02", 2, 10)
	map:addTile("tile-background-04", 2, 11)
	map:addTile("tile-background-big-01", 2, 12)
	map:addTile("tile-background-cave-art-01", 2, 16)
	map:addTile("tile-background-cave-art-01", 3, 0)
	map:addTile("tile-background-04", 3, 1)
	map:addTile("tile-background-cave-art-01", 3, 2)
	map:addTile("tile-background-03", 3, 3)
	map:addTile("tile-background-cave-art-01", 3, 4)
	map:addTile("tile-background-cave-art-01", 3, 5)
	map:addTile("tile-background-cave-art-01", 3, 6)
	map:addTile("bridge-wall-right-01", 3, 7)
	map:addTile("tile-ground-02", 3, 10)
	map:addTile("tile-background-04", 3, 11)
	map:addTile("tile-background-cave-art-01", 3, 14)
	map:addTile("tile-background-cave-art-01", 3, 15)
	map:addTile("tile-background-cave-art-01", 3, 16)
	map:addTile("tile-background-03", 4, 0)
	map:addTile("tile-background-03", 4, 1)
	map:addTile("tile-ground-05", 4, 2)
	map:addTile("tile-background-03", 4, 3)
	map:addTile("tile-background-03", 4, 4)
	map:addTile("tile-background-03", 4, 5)
	map:addTile("tile-background-03", 4, 6)
	map:addTile("tile-ground-02", 4, 7)
	map:addTile("tile-rock-03", 4, 8)
	map:addTile("tile-rock-03", 4, 9)
	map:addTile("tile-rock-03", 4, 10)
	map:addTile("tile-background-03", 4, 11)
	map:addTile("tile-background-03", 4, 12)
	map:addTile("tile-background-03", 4, 13)
	map:addTile("tile-background-03", 4, 14)
	map:addTile("tile-background-04", 4, 15)
	map:addTile("tile-background-04", 4, 16)
	map:addTile("tile-rock-shim-01", 5, 0)
	map:addTile("tile-background-03", 5, 1)
	map:addTile("tile-ground-06", 5, 2)
	map:addTile("tile-background-big-01", 5, 3)
	map:addTile("tile-background-03", 5, 5)
	map:addTile("tile-background-03", 5, 6)
	map:addTile("tile-background-03", 5, 7)
	map:addTile("tile-rock-slope-left-01", 5, 8)
	map:addTile("tile-background-big-01", 5, 9)
	map:addTile("tile-background-03", 5, 11)
	map:addTile("tile-ground-01", 5, 12)
	map:addTile("tile-background-03", 5, 13)
	map:addTile("tile-background-03", 5, 14)
	map:addTile("tile-background-big-01", 5, 15)
	map:addTile("tile-background-03", 6, 0)
	map:addTile("tile-background-03", 6, 1)
	map:addTile("tile-ground-ledge-left-01", 6, 2)
	map:addTile("tile-rock-slope-left-01", 6, 5)
	map:addTile("tile-background-03", 6, 6)
	map:addTile("tile-background-window-01", 6, 7)
	map:addTile("tile-background-03", 6, 8)
	map:addTile("bridge-wall-left-01", 6, 8)
	map:addTile("tile-background-03", 6, 11)
	map:addTile("tile-ground-01", 6, 12)
	map:addTile("tile-background-03", 6, 13)
	map:addTile("tile-background-03", 6, 14)
	map:addTile("tile-background-03", 7, 0)
	map:addTile("tile-background-03", 7, 1)
	map:addTile("tile-ground-ledge-right-01", 7, 2)
	map:addTile("tile-background-03", 7, 3)
	map:addTile("tile-background-03", 7, 4)
	map:addTile("tile-ground-06", 7, 5)
	map:addTile("tile-background-03", 7, 6)
	map:addTile("tile-background-03", 7, 8)
	map:addTile("bridge-plank-01", 7, 8)
	map:addTile("tile-background-03", 7, 9)
	map:addTile("tile-background-03", 7, 10)
	map:addTile("tile-background-03", 7, 11)
	map:addTile("tile-background-03", 7, 12)
	map:addTile("tile-background-03", 7, 13)
	map:addTile("tile-background-03", 7, 14)
	map:addTile("tile-ground-01", 7, 15)
	map:addTile("tile-background-04", 7, 16)
	map:addTile("tile-rock-shim-01", 8, 0)
	map:addTile("tile-background-03", 8, 1)
	map:addTile("tile-ground-ledge-left-02", 8, 2)
	map:addTile("tile-background-03", 8, 3)
	map:addTile("tile-background-03", 8, 4)
	map:addTile("tile-ground-ledge-left-01", 8, 5)
	map:addTile("tile-background-03", 8, 6)
	map:addTile("tile-background-03", 8, 7)
	map:addTile("tile-background-03", 8, 8)
	map:addTile("bridge-wall-right-01", 8, 8)
	map:addTile("tile-background-03", 8, 9)
	map:addTile("tile-packagetarget-rock-01-idle", 8, 10, 270)
	map:addTile("tile-background-03", 8, 11)
	map:addTile("tile-background-03", 8, 12)
	map:addTile("tile-background-03", 8, 13)
	map:addTile("tile-background-03", 8, 14)
	map:addTile("tile-ground-01", 8, 15)
	map:addTile("tile-background-04", 8, 16)
	map:addTile("tile-background-03", 9, 0)
	map:addTile("tile-background-03", 9, 1)
	map:addTile("tile-ground-ledge-right-02", 9, 2)
	map:addTile("tile-background-03", 9, 3)
	map:addTile("tile-background-03", 9, 4)
	map:addTile("tile-rock-slope-right-01", 9, 5)
	map:addTile("tile-background-03", 9, 6)
	map:addTile("tile-background-03", 9, 7)
	map:addTile("tile-rock-slope-right-01", 9, 8)
	map:addTile("tile-background-03", 9, 9)
	map:addTile("tile-ground-01", 9, 10)
	map:addTile("tile-background-03", 9, 11)
	map:addTile("tile-background-big-01", 9, 12)
	map:addTile("tile-background-03", 9, 14)
	map:addTile("tile-ground-01", 9, 15)
	map:addTile("tile-background-04", 9, 16)
	map:addTile("tile-background-big-01", 10, 0)
	map:addTile("tile-background-03", 10, 2)
	map:addTile("tile-background-big-01", 10, 3)
	map:addTile("tile-background-03", 10, 5)
	map:addTile("tile-background-03", 10, 6)
	map:addTile("tile-background-03", 10, 7)
	map:addTile("tile-background-03", 10, 8)
	map:addTile("tile-background-03", 10, 9)
	map:addTile("tile-packagetarget-rock-01-idle", 10, 10)
	map:addTile("tile-background-03", 10, 11)
	map:addTile("tile-background-03", 10, 14)
	map:addTile("tile-rock-slope-left-01", 10, 15)
	map:addTile("tile-background-04", 10, 16)
	map:addTile("tile-background-03", 11, 2)
	map:addTile("tile-background-03", 11, 5)
	map:addTile("tile-background-03", 11, 6)
	map:addTile("tile-background-03", 11, 7)
	map:addTile("tile-ground-01", 11, 8)
	map:addTile("tile-background-03", 11, 9)
	map:addTile("tile-ground-01", 11, 10)
	map:addTile("tile-background-03", 11, 11)
	map:addTile("tile-background-03", 11, 12)
	map:addTile("tile-background-03", 11, 13)
	map:addTile("tile-background-03", 11, 14)
	map:addTile("tile-packagetarget-rock-01-idle", 11, 15)
	map:addTile("tile-background-04", 11, 16)
	map:addTile("tile-background-03", 12, 0)
	map:addTile("tile-background-03", 12, 1)
	map:addTile("tile-ground-05", 12, 2)
	map:addTile("tile-background-03", 12, 3)
	map:addTile("tile-background-03", 12, 4)
	map:addTile("tile-rock-slope-left-01", 12, 5)
	map:addTile("tile-background-03", 12, 6)
	map:addTile("tile-ground-01", 12, 8)
	map:addTile("tile-background-03", 12, 9)
	map:addTile("tile-packagetarget-rock-01-idle", 12, 10, 90)
	map:addTile("tile-background-03", 12, 11)
	map:addTile("tile-background-03", 12, 12)
	map:addTile("tile-background-03", 12, 13)
	map:addTile("tile-background-03", 12, 14)
	map:addTile("tile-rock-slope-right-01", 12, 15)
	map:addTile("tile-background-04", 12, 16)
	map:addTile("tile-background-03", 13, 0)
	map:addTile("tile-ground-05", 13, 2)
	map:addTile("tile-background-03", 13, 3)
	map:addTile("tile-background-03", 13, 4)
	map:addTile("tile-background-04", 13, 5)
	map:addTile("bridge-plank-01", 13, 5)
	map:addTile("tile-background-03", 13, 6)
	map:addTile("tile-geyser-rock-01-active", 13, 7)
	map:addTile("tile-background-03", 13, 9)
	map:addTile("tile-background-03", 13, 10)
	map:addTile("tile-background-03", 13, 11)
	map:addTile("tile-rock-slope-left-01", 13, 12)
	map:addTile("tile-background-03", 13, 13)
	map:addTile("tile-background-03", 13, 14)
	map:addTile("tile-ground-01", 13, 15)
	map:addTile("tile-background-04", 13, 16)
	map:addTile("tile-background-03", 14, 0)
	map:addTile("tile-background-03", 14, 1)
	map:addTile("tile-ground-05", 14, 2)
	map:addTile("tile-background-big-01", 14, 3)
	map:addTile("tile-background-04", 14, 5)
	map:addTile("bridge-plank-01", 14, 5)
	map:addTile("tile-background-03", 14, 6)
	map:addTile("tile-background-03", 14, 7)
	map:addTile("tile-ground-01", 14, 8)
	map:addTile("tile-background-03", 14, 9)
	map:addTile("tile-background-03", 14, 10)
	map:addTile("tile-background-03", 14, 11)
	map:addTile("tile-ground-01", 14, 12)
	map:addTile("tile-background-03", 14, 13)
	map:addTile("tile-background-03", 14, 14)
	map:addTile("tile-ground-01", 14, 15)
	map:addTile("tile-background-04", 14, 16)
	map:addTile("tile-background-03", 15, 0)
	map:addTile("tile-background-03", 15, 1)
	map:addTile("tile-background-03", 15, 2)
	map:addTile("tile-rock-slope-right-01", 15, 5)
	map:addTile("tile-background-big-01", 15, 6)
	map:addTile("tile-background-03", 15, 8)
	map:addTile("tile-background-big-01", 15, 9)
	map:addTile("tile-background-03", 15, 11)
	map:addTile("tile-rock-slope-right-01", 15, 12)
	map:addTile("tile-background-03", 15, 13)
	map:addTile("tile-background-03", 15, 14)
	map:addTile("tile-ground-01", 15, 15)
	map:addTile("tile-background-04", 15, 16)
	map:addTile("tile-background-03", 16, 0)
	map:addTile("tile-ground-01", 16, 1)
	map:addTile("tile-rock-right-04", 16, 2)
	map:addTile("tile-background-03", 16, 3)
	map:addTile("tile-background-03", 16, 4)
	map:addTile("tile-background-03", 16, 5)
	map:addTile("tile-rock-slope-left-01", 16, 8)
	map:addTile("tile-background-03", 16, 11)
	map:addTile("tile-background-03", 16, 12)
	map:addTile("tile-background-03", 16, 13)
	map:addTile("tile-background-03", 16, 14)
	map:addTile("tile-packagetarget-rock-01-idle", 16, 15)
	map:addTile("tile-background-04", 16, 16)
	map:addTile("tile-background-03", 17, 0)
	map:addTile("tile-ground-01", 17, 1)
	map:addTile("tile-rock-left-04", 17, 2)
	map:addTile("tile-background-03", 17, 3)
	map:addTile("tile-background-03", 17, 4)
	map:addTile("tile-ground-01", 17, 5)
	map:addTile("tile-background-03", 17, 6)
	map:addTile("tile-ground-01", 17, 8)
	map:addTile("tile-background-03", 17, 9)
	map:addTile("tile-background-03", 17, 10)
	map:addTile("tile-background-03", 17, 11)
	map:addTile("tile-ground-01", 17, 12)
	map:addTile("tile-background-big-01", 17, 13)
	map:addTile("tile-ground-01", 17, 15)
	map:addTile("tile-background-04", 17, 16)
	map:addTile("tile-background-03", 18, 0)
	map:addTile("tile-background-03", 18, 1)
	map:addTile("tile-background-03", 18, 2)
	map:addTile("tile-background-03", 18, 3)
	map:addTile("tile-background-03", 18, 4)
	map:addTile("tile-ground-01", 18, 5)
	map:addTile("tile-background-03", 18, 6)
	map:addTile("tile-background-03", 18, 7)
	map:addTile("tile-ground-01", 18, 8)
	map:addTile("tile-background-03", 18, 9)
	map:addTile("tile-background-03", 18, 10)
	map:addTile("tile-ground-01", 18, 12)
	map:addTile("tile-ground-01", 18, 15)
	map:addTile("tile-background-04", 18, 16)
	map:addTile("tile-background-03", 19, 0)
	map:addTile("tile-background-big-01", 19, 1)
	map:addTile("tile-background-03", 19, 3)
	map:addTile("tile-ground-01", 19, 5)
	map:addTile("tile-background-03", 19, 6)
	map:addTile("tile-background-03", 19, 7)
	map:addTile("tile-rock-slope-right-01", 19, 8)
	map:addTile("tile-background-03", 19, 9)
	map:addTile("tile-ground-01", 19, 10)
	map:addTile("tile-rock-03", 19, 11)
	map:addTile("tile-ground-01", 19, 12)
	map:addTile("tile-rock-right-04", 19, 13)
	map:addTile("tile-background-03", 19, 14)
	map:addTile("tile-background-04", 19, 15)
	map:addTile("tile-background-04", 19, 16)
	map:addTile("tile-background-03", 20, 0)
	map:addTile("tile-background-03", 20, 3)
	map:addTile("tile-rock-03", 20, 4)
	map:addTile("tile-rock-03", 20, 5)
	map:addTile("tile-background-big-01", 20, 6)
	map:addTile("tile-background-03", 20, 8)
	map:addTile("tile-background-03", 20, 9)
	map:addTile("tile-background-03", 20, 10)
	map:addTile("tile-background-03", 20, 11)
	map:addTile("tile-ground-01", 20, 12)
	map:addTile("tile-packagetarget-rock-01-idle", 20, 13, 180)
	map:addTile("tile-geyser-rock-01-active", 20, 14)
	map:addTile("tile-background-04", 20, 16)
	map:addTile("tile-background-big-01", 21, 0)
	map:addTile("tile-background-03", 21, 2)
	map:addTile("tile-background-03", 21, 3)
	map:addTile("tile-background-03", 21, 4)
	map:addTile("tile-ground-01", 21, 5)
	map:addTile("tile-ground-01", 21, 8)
	map:addTile("tile-background-03", 21, 9)
	map:addTile("tile-background-big-01", 21, 10)
	map:addTile("tile-ground-01", 21, 12)
	map:addTile("tile-rock-left-04", 21, 13)
	map:addTile("tile-background-big-01", 21, 14)
	map:addTile("tile-background-04", 21, 16)
	map:addTile("tile-background-03", 22, 2)
	map:addTile("tile-background-03", 22, 3)
	map:addTile("tile-background-03", 22, 4)
	map:addTile("tile-background-03", 22, 5)
	map:addTile("tile-background-03", 22, 6)
	map:addTile("tile-background-03", 22, 7)
	map:addTile("tile-packagetarget-rock-01-idle", 22, 8)
	map:addTile("tile-background-03", 22, 9)
	map:addTile("tile-background-03", 22, 12)
	map:addTile("tile-background-03", 22, 13)
	map:addTile("tile-background-04", 22, 16)

	map:addCave("tile-cave-01", 3, 9, "none", 5000)
	map:addCave("tile-cave-02", 7, 7, "none", 5000)
	map:addCave("tile-cave-02", 12, 7, "none", 5000)
	map:addCave("tile-cave-02", 13, 1, "none", 5000)
	map:addCave("tile-cave-02", 17, 7, "none", 5000)
	map:addCave("tile-cave-02", 18, 11, "none", 5000)
	map:addCave("tile-cave-02", 19, 4, "none", 5000)

	map:addEmitter("item-package", 2, 1, 1, 0, "")
	map:addEmitter("item-stone", 3, 1, 1, 0, "")
	map:addEmitter("item-egg", 7, 7, 1, 0, "")
	map:addEmitter("item-apple", 9, 4, 1, 0, "")
	map:addEmitter("npc-blowing", 9, 14, 1, 0, "")
	map:addEmitter("item-package", 12, 0, 1, 0, "")
	map:addEmitter("item-package", 13, 4, 1, 0, "")
	map:addEmitter("item-package", 15, 14, 1, 0, "")
	map:addEmitter("item-package", 15.9, 14, 1, 0, "")
	map:addEmitter("item-package", 17, 14, 1, 0, "")

	map:setSetting("fishnpc", "false")
	map:setSetting("flyingnpc", "false")
	map:setSetting("gravity", "9.81")
	map:setSetting("height", "17")
	map:setSetting("packagetransfercount", "3")
	map:addStartPosition("6", "11")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "10")
	map:setSetting("theme", "rock")
	map:setSetting("waterheight", "1")
	map:setSetting("waterchangespeed", "0")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("width", "23")
	map:setSetting("wind", "0.0")
end
