function getName()
	return "Map 17"
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-ice-07", 0, 0)
	map:addTile("tile-background-ice-02", 0, 1)
	map:addTile("tile-background-ice-03", 0, 2)
	map:addTile("tile-background-ice-02", 0, 3)
	map:addTile("tile-background-ice-01", 0, 4)
	map:addTile("tile-background-ice-07", 0, 5)
	map:addTile("tile-background-ice-01", 0, 6)
	map:addTile("tile-ground-ice-04", 0, 8)
	map:addTile("tile-rock-ice-big-01", 0, 9)
	map:addTile("tile-rock-ice-01", 0, 11)
	map:addTile("tile-background-ice-02", 1, 0)
	map:addTile("tile-background-ice-big-01", 1, 1)
	map:addTile("tile-background-ice-05", 1, 3)
	map:addTile("tile-background-ice-05", 1, 4)
	map:addTile("tile-background-ice-big-01", 1, 5)
	map:addTile("tile-background-ice-window-02", 1, 7)
	map:addTile("tile-ground-ice-02", 1, 8)
	map:addTile("tile-rock-ice-01", 1, 11)
	map:addTile("tile-background-ice-03", 2, 0)
	map:addTile("tile-background-ice-05", 2, 3)
	map:addTile("tile-background-ice-04", 2, 4)
	map:addTile("tile-background-ice-cave-art-01", 2, 7)
	map:addTile("tile-ground-ice-04", 2, 8)
	map:addTile("tile-rock-ice-02", 2, 9)
	map:addTile("tile-rock-ice-01", 2, 10)
	map:addTile("tile-rock-ice-02", 2, 11)
	map:addTile("tile-background-ice-02", 3, 0)
	map:addTile("tile-background-ice-07", 3, 1)
	map:addTile("tile-background-ice-07", 3, 2)
	map:addTile("tile-background-ice-02", 3, 3)
	map:addTile("tile-background-ice-02", 3, 4)
	map:addTile("tile-background-ice-window-02", 3, 5)
	map:addTile("tile-ground-ice-03", 3, 6)
	map:addTile("tile-rock-ice-02", 3, 7)
	map:addTile("tile-ground-ice-03", 3, 8)
	map:addTile("tile-rock-ice-01", 3, 9)
	map:addTile("tile-rock-ice-big-01", 3, 10)
	map:addTile("tile-background-ice-02", 4, 0)
	map:addTile("tile-background-ice-04", 4, 1)
	map:addTile("tile-background-ice-02", 4, 2)
	map:addTile("tile-background-ice-03", 4, 3)
	map:addTile("tile-background-ice-02", 4, 4)
	map:addTile("tile-ground-ice-03", 4, 6)
	map:addTile("tile-rock-ice-03", 4, 7)
	map:addTile("tile-ground-ice-04", 4, 8)
	map:addTile("tile-rock-ice-02", 4, 9)
	map:addTile("tile-background-ice-01", 5, 0)
	map:addTile("tile-background-ice-03", 5, 1)
	map:addTile("tile-background-ice-03", 5, 2)
	map:addTile("tile-background-ice-05", 5, 3)
	map:addTile("tile-background-ice-03", 5, 4)
	map:addTile("tile-background-ice-cave-art-01", 5, 5)
	map:addTile("tile-rock-ice-01", 5, 6)
	map:addTile("tile-rock-ice-02", 5, 7)
	map:addTile("tile-ground-ice-04", 5, 8)
	map:addTile("tile-rock-ice-01", 5, 9)
	map:addTile("tile-rock-ice-03", 5, 10)
	map:addTile("tile-rock-ice-01", 5, 11)
	map:addTile("tile-background-ice-05", 6, 0)
	map:addTile("tile-background-ice-01", 6, 1)
	map:addTile("tile-background-ice-03", 6, 2)
	map:addTile("tile-background-ice-window-02", 6, 3)
	map:addTile("tile-ground-ice-04", 6, 4)
	map:addTile("tile-rock-ice-01", 6, 5)
	map:addTile("tile-rock-ice-02", 6, 6)
	map:addTile("tile-rock-ice-01", 6, 7)
	map:addTile("tile-ground-ice-04", 6, 8)
	map:addTile("tile-rock-ice-03", 6, 9)
	map:addTile("tile-rock-ice-big-01", 6, 10)
	map:addTile("tile-background-ice-07", 7, 0)
	map:addTile("tile-background-ice-01", 7, 1)
	map:addTile("tile-background-ice-06", 7, 2)
	map:addTile("tile-ground-ice-03", 7, 4)
	map:addTile("tile-packagetarget-ice-01-idle", 7, 5, 180)
	map:addTile("tile-background-ice-05", 7, 6)
	map:addTile("tile-geyser-ice-01-active", 7, 7)
	map:addTile("tile-rock-ice-01", 7, 9)
	map:addTile("tile-background-ice-06", 8, 0)
	map:addTile("tile-background-ice-02", 8, 1)
	map:addTile("tile-background-ice-07", 8, 2)
	map:addTile("tile-background-ice-cave-art-01", 8, 3)
	map:addTile("tile-ground-ice-04", 8, 4)
	map:addTile("tile-rock-slope-ice-right-02", 8, 5)
	map:addTile("tile-background-ice-big-01", 8, 6)
	map:addTile("tile-ground-ice-05", 8, 8)
	map:addTile("tile-background-ice-06", 8, 9)
	map:addTile("tile-background-ice-big-01", 8, 10)
	map:addTile("tile-background-ice-03", 9, 0)
	map:addTile("tile-background-ice-06", 9, 1)
	map:addTile("tile-background-ice-06", 9, 2)
	map:addTile("tile-background-ice-07", 9, 3)
	map:addTile("tile-ground-ledge-ice-right-01", 9, 4)
	map:addTile("tile-background-ice-03", 9, 5)
	map:addTile("tile-ground-ice-05", 9, 8)
	map:addTile("tile-background-ice-05", 9, 9)
	map:addTile("tile-background-ice-big-01", 10, 0)
	map:addTile("tile-background-ice-02", 10, 2)
	map:addTile("tile-background-ice-02", 10, 3)
	map:addTile("tile-background-ice-02", 10, 4)
	map:addTile("tile-background-ice-big-01", 10, 5)
	map:addTile("tile-background-ice-02", 10, 7)
	map:addTile("tile-ground-ice-05", 10, 8)
	map:addTile("tile-background-ice-02", 10, 9)
	map:addTile("tile-background-ice-04", 10, 10)
	map:addTile("tile-background-ice-03", 10, 11)
	map:addTile("tile-background-ice-01", 11, 2)
	map:addTile("tile-background-ice-03", 11, 3)
	map:addTile("tile-background-ice-01", 11, 4)
	map:addTile("tile-background-ice-07", 11, 7)
	map:addTile("tile-ground-ice-05", 11, 8)
	map:addTile("tile-background-ice-04", 11, 9)
	map:addTile("tile-background-ice-05", 11, 10)
	map:addTile("tile-background-ice-04", 11, 11)
	map:addTile("tile-background-ice-big-01", 12, 0)
	map:addTile("tile-background-ice-02", 12, 2)
	map:addTile("tile-background-ice-04", 12, 3)
	map:addTile("tile-background-ice-05", 12, 4)
	map:addTile("tile-background-ice-06", 12, 5)
	map:addTile("tile-background-ice-05", 12, 6)
	map:addTile("tile-background-ice-03", 12, 7)
	map:addTile("tile-ground-ice-02", 12, 8)
	map:addTile("tile-rock-ice-01", 12, 9)
	map:addTile("tile-rock-ice-big-01", 12, 10)
	map:addTile("tile-background-ice-02", 13, 2)
	map:addTile("tile-background-ice-02", 13, 3)
	map:addTile("tile-background-ice-02", 13, 4)
	map:addTile("tile-background-ice-05", 13, 5)
	map:addTile("tile-background-ice-04", 13, 6)
	map:addTile("tile-background-ice-cave-art-01", 13, 7)
	map:addTile("tile-ground-ice-04", 13, 8)
	map:addTile("tile-rock-ice-02", 13, 9)
	map:addTile("tile-background-ice-03", 14, 0)
	map:addTile("tile-background-ice-05", 14, 1)
	map:addTile("tile-background-ice-05", 14, 2)
	map:addTile("tile-background-ice-big-01", 14, 3)
	map:addTile("tile-background-ice-04", 14, 5)
	map:addTile("tile-background-ice-04", 14, 6)
	map:addTile("tile-background-ice-window-01", 14, 7)
	map:addTile("tile-ground-ice-02", 14, 8)
	map:addTile("tile-rock-ice-big-01", 14, 9)
	map:addTile("tile-rock-ice-01", 14, 11)
	map:addTile("tile-background-ice-06", 15, 0)
	map:addTile("tile-background-ice-04", 15, 1)
	map:addTile("tile-background-ice-03", 15, 2)
	map:addTile("tile-background-ice-04", 15, 5)
	map:addTile("tile-background-ice-06", 15, 6)
	map:addTile("tile-ground-ice-04", 15, 8)
	map:addTile("tile-rock-ice-02", 15, 11)

	map:addCave("tile-cave-ice-01", 0, 7, "none", 5000)
	map:addCave("tile-cave-ice-01", 4, 5, "none", 5000)
	map:addCave("tile-cave-ice-01", 7, 3, "none", 5000)
	map:addCave("tile-cave-ice-01", 15, 7, "none", 5000)

	map:addEmitter("item-package-ice", 7.2, 7, 1, 0)
	map:addEmitter("tree", 12, 6, 1, 0)

	map:setSetting("fishnpc", "true")
	map:setSetting("flyingnpc", "false")
	map:setSetting("gravity", "9.81")
	map:setSetting("height", "12")
	map:setSetting("packagetransfercount", "3")
	map:addStartPosition("9", "7")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "30")
	map:setSetting("theme", "ice")
	map:setSetting("waterheight", "3.5")
	map:setSetting("waterchangespeed", "0")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("width", "16")
	map:setSetting("wind", "0.0")
end
