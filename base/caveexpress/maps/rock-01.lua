function getName()
	return "Map 01"
end

function onMapLoaded()
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-big-01", 0, 0)
	map:addTile("tile-background-cave-art-01", 0, 2)
	map:addTile("tile-ground-02", 0, 3)
	map:addTile("tile-rock-big-01", 0, 4)
	map:addTile("tile-background-01", 0, 6)
	map:addTile("tile-background-02", 0, 7)
	map:addTile("tile-background-01", 0, 8)
	map:addTile("tile-ground-02", 0, 9)
	map:addTile("tile-rock-02", 0, 10)
	map:addTile("tile-rock-02", 0, 11)
	map:addTile("tile-ground-02", 1, 3)
	map:addTile("tile-background-01", 1, 6)
	map:addTile("tile-background-cave-art-01", 1, 7)
	map:addTile("tile-background-01", 1, 8)
	map:addTile("tile-ground-02", 1, 9)
	map:addTile("tile-rock-02", 1, 10)
	map:addTile("tile-rock-02", 1, 11)
	map:addTile("tile-background-cave-art-01", 2, 0)
	map:addTile("tile-background-01", 2, 1)
	map:addTile("tile-background-window-02", 2, 2)
	map:addTile("tile-ground-02", 2, 3)
	map:addTile("tile-background-01", 2, 4)
	map:addTile("tile-background-03", 2, 5)
	map:addTile("tile-background-01", 2, 6)
	map:addTile("tile-background-01", 2, 7)
	map:addTile("tile-background-03", 2, 8)
	map:addTile("tile-ground-02", 2, 9)
	map:addTile("tile-rock-02", 2, 10)
	map:addTile("tile-rock-02", 2, 11)
	map:addTile("tile-background-01", 3, 0)
	map:addTile("tile-background-02", 3, 1)
	map:addTile("tile-background-big-01", 3, 2)
	map:addTile("tile-background-02", 3, 4)
	map:addTile("tile-background-03", 3, 5)
	map:addTile("tile-background-big-01", 3, 6)
	map:addTile("tile-background-cave-art-01", 3, 8)
	map:addTile("tile-ground-02", 3, 9)
	map:addTile("tile-rock-02", 3, 10)
	map:addTile("tile-rock-02", 3, 11)
	map:addTile("tile-background-big-01", 4, 0)
	map:addTile("tile-background-02", 4, 4)
	map:addTile("tile-background-01", 4, 5)
	map:addTile("tile-ground-03", 4, 8)
	map:addTile("tile-rock-big-01", 4, 9)
	map:addTile("tile-rock-02", 4, 11)
	map:addTile("tile-background-big-01", 5, 2)
	map:addTile("tile-background-big-01", 5, 4)
	map:addTile("tile-background-03", 5, 6)
	map:addTile("tile-ground-01", 5, 8)
	map:addTile("tile-rock-02", 5, 11)
	map:addTile("tile-background-03", 6, 0)
	map:addTile("tile-background-cave-art-01", 6, 1)
	map:addTile("tile-background-02", 6, 6)
	map:addTile("tile-background-window-02", 6, 7)
	map:addTile("tile-ground-01", 6, 8)
	map:addTile("tile-rock-02", 6, 9)
	map:addTile("tile-rock-02", 6, 10)
	map:addTile("tile-rock-02", 6, 11)
	map:addTile("tile-background-01", 7, 0)
	map:addTile("tile-background-02", 7, 1)
	map:addTile("tile-background-03", 7, 2)
	map:addTile("tile-background-02", 7, 3)
	map:addTile("tile-background-03", 7, 4)
	map:addTile("tile-background-01", 7, 5)
	map:addTile("tile-background-cave-art-01", 7, 6)
	map:addTile("tile-background-01", 7, 7)
	map:addTile("tile-packagetarget-rock-01-idle", 7, 8)
	map:addTile("tile-rock-01", 7, 9)
	map:addTile("tile-rock-02", 7, 10)
	map:addTile("tile-rock-02", 7, 11)
	map:addTile("tile-background-02", 8, 0)
	map:addTile("tile-background-01", 8, 1)
	map:addTile("tile-background-cave-art-01", 8, 2)
	map:addTile("tile-ground-ledge-left-02", 8, 3)
	map:addTile("tile-background-02", 8, 4)
	map:addTile("tile-background-01", 8, 5)
	map:addTile("tile-background-03", 8, 6)
	map:addTile("tile-background-01", 8, 7)
	map:addTile("tile-ground-03", 8, 8)
	map:addTile("tile-rock-01", 8, 9)
	map:addTile("tile-rock-02", 8, 10)
	map:addTile("tile-rock-02", 8, 11)
	map:addTile("tile-background-cave-art-01", 9, 0)
	map:addTile("tile-background-big-01", 9, 1)
	map:addTile("tile-ground-02", 9, 3)
	map:addTile("tile-rock-slope-left-02", 9, 4)
	map:addTile("tile-background-01", 9, 5)
	map:addTile("tile-background-03", 9, 6)
	map:addTile("tile-background-01", 9, 7)
	map:addTile("tile-background-01", 9, 8)
	map:addTile("tile-background-01", 9, 9)
	map:addTile("tile-background-01", 9, 10)
	map:addTile("tile-background-01", 9, 11)
	map:addTile("tile-background-03", 10, 0)
	map:addTile("tile-ground-02", 10, 3)
	map:addTile("tile-rock-02", 10, 4)
	map:addTile("tile-background-01", 10, 5)
	map:addTile("tile-background-big-01", 10, 6)
	map:addTile("tile-background-02", 10, 8)
	map:addTile("tile-background-cave-art-01", 10, 9)
	map:addTile("tile-background-01", 10, 10)
	map:addTile("tile-background-01", 10, 11)
	map:addTile("tile-background-big-01", 11, 0)
	map:addTile("tile-background-01", 11, 2)
	map:addTile("tile-ground-02", 11, 3)
	map:addTile("tile-rock-02", 11, 4)
	map:addTile("tile-rock-02", 11, 5)
	map:addTile("tile-background-01", 11, 8)
	map:addTile("tile-background-01", 11, 9)
	map:addTile("tile-background-03", 11, 10)
	map:addTile("tile-background-01", 11, 11)
	map:addTile("tile-background-02", 12, 2)
	map:addTile("tile-ground-02", 12, 3)
	map:addTile("tile-rock-big-01", 12, 4)
	map:addTile("tile-background-02", 12, 6)
	map:addTile("tile-background-big-01", 12, 7)
	map:addTile("tile-ground-ledge-left-02", 12, 9)
	map:addTile("tile-background-02", 12, 10)
	map:addTile("tile-background-01", 12, 11)
	map:addTile("tile-rock-02", 13, 0)
	map:addTile("tile-rock-02", 13, 1)
	map:addTile("tile-rock-02", 13, 2)
	map:addTile("tile-rock-02", 13, 3)
	map:addTile("tile-background-02", 13, 6)
	map:addTile("tile-ground-ledge-left-01", 13, 9)
	map:addTile("tile-background-01", 13, 10)
	map:addTile("tile-background-01", 13, 11)
	map:addTile("tile-rock-02", 14, 0)
	map:addTile("tile-rock-02", 14, 1)
	map:addTile("tile-rock-big-01", 14, 2)
	map:addTile("tile-rock-02", 14, 4)
	map:addTile("tile-background-cave-art-01", 14, 5)
	map:addTile("tile-background-03", 14, 6)
	map:addTile("tile-background-01", 14, 7)
	map:addTile("tile-ground-01", 14, 9)
	map:addTile("tile-rock-big-01", 14, 10)
	map:addTile("tile-rock-02", 15, 0)
	map:addTile("tile-rock-02", 15, 1)
	map:addTile("tile-background-03", 15, 4)
	map:addTile("tile-background-01", 15, 5)
	map:addTile("tile-background-01", 15, 6)
	map:addTile("tile-background-03", 15, 7)
	map:addTile("tile-background-window-02", 15, 8)
	map:addTile("tile-ground-01", 15, 9)

	map:addCave("tile-cave-01", 1, 2, "none", 1000)
	map:addCave("tile-cave-02", 5, 7, "none", 2000)
	map:addCave("tile-cave-01", 14, 8, "none", 3000)

	map:addEmitter("tree", 1, 7, 1, 0, "")
	map:addEmitter("item-stone", 12, 2, 1, 0, "")

	map:setSetting("fishnpc", "true")
	map:setSetting("flyingnpc", "true")
	map:setSetting("gravity", "9.81")
	map:setSetting("height", "12")
	map:setSetting("packagetransfercount", "4")
	map:addStartPosition("8", "2")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "30")
	map:setSetting("theme", "rock")
	map:setSetting("waterheight", "2.3")
	map:setSetting("waterchangespeed", "0")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("width", "16")
	map:setSetting("wind", "0")
end
