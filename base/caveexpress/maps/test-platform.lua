function getName()
	return "test-platform"
end

function onMapLoaded()
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-ice-01", 0, 0)
	map:addTile("tile-background-ice-05", 0, 1)
	map:addTile("tile-ground-ice-01", 0, 2)
	map:addTile("tile-background-ice-04", 0, 3)
	map:addTile("tile-ground-ice-01", 0, 4)
	map:addTile("tile-background-ice-02", 0, 5)
	map:addTile("tile-background-ice-02", 0, 6)
	map:addTile("tile-background-ice-01", 0, 7)
	map:addTile("tile-ground-ledge-ice-right-02", 0, 8)
	map:addTile("tile-background-ice-cave-art-02", 0, 9)
	map:addTile("tile-background-ice-03", 0, 10)
	map:addTile("tile-background-ice-cave-art-02", 0, 11)
	map:addTile("tile-ground-ledge-ice-left-02", 0, 12)
	map:addTile("tile-background-ice-cave-art-02", 0, 13)
	map:addTile("tile-ground-ice-05", 0, 14)
	map:addTile("tile-background-ice-01", 0, 15)
	map:addTile("tile-background-ice-01", 0, 16)
	map:addTile("tile-background-ice-02", 0, 17)
	map:addTile("tile-ground-ice-01", 0, 18)
	map:addTile("tile-background-ice-01", 0, 19)
	map:addTile("tile-background-ice-03", 0, 20)
	map:addTile("tile-rock-ice-03", 0, 21)
	map:addTile("tile-ground-ice-01", 0, 22)
	map:addTile("tile-background-ice-05", 0, 23)
	map:addTile("tile-background-ice-cave-art-01", 0, 24)
	map:addTile("tile-background-ice-cave-art-02", 0, 25)
	map:addTile("tile-background-ice-cave-art-01", 0, 26)
	map:addTile("tile-background-ice-04", 0, 27)
	map:addTile("tile-background-ice-05", 1, 0)
	map:addTile("tile-background-ice-07", 1, 1)
	map:addTile("tile-ground-ice-02", 1, 2)
	map:addTile("tile-background-ice-04", 1, 3)
	map:addTile("tile-background-ice-06", 1, 4)
	map:addTile("tile-background-ice-04", 1, 5)
	map:addTile("tile-ground-ice-01", 1, 6)
	map:addTile("tile-background-ice-02", 1, 7)
	map:addTile("tile-ground-ice-05", 1, 8)
	map:addTile("tile-background-ice-04", 1, 9)
	map:addTile("tile-background-ice-01", 1, 10)
	map:addTile("tile-background-ice-08", 1, 11)
	map:addTile("tile-ground-ledge-ice-left-01", 1, 12)
	map:addTile("tile-background-ice-02", 1, 13)
	map:addTile("tile-background-ice-07", 1, 14)
	map:addTile("tile-waterfall-ice-01", 1, 15)
	map:addTile("tile-background-ice-01", 1, 17)
	map:addTile("tile-packagetarget-ice-01-idle", 1, 18)
	map:addTile("tile-background-ice-cave-art-02", 1, 19)
	map:addTile("tile-background-ice-05", 1, 20)
	map:addTile("tile-background-ice-05", 1, 21)
	map:addTile("tile-ground-ice-02", 1, 22)
	map:addTile("tile-background-ice-06", 1, 23)
	map:addTile("tile-background-ice-08", 1, 24)
	map:addTile("tile-background-ice-cave-art-01", 1, 25)
	map:addTile("tile-background-ice-01", 1, 26)
	map:addTile("tile-background-ice-01", 1, 27)
	map:addTile("tile-background-ice-05", 2, 0)
	map:addTile("tile-background-ice-05", 2, 1)
	map:addTile("tile-background-ice-01", 2, 2)
	map:addTile("bridge-wall-ice-left-01", 2, 2)
	map:addTile("tile-background-ice-05", 2, 3)
	map:addTile("tile-background-ice-08", 2, 4)
	map:addTile("tile-background-ice-06", 2, 5)
	map:addTile("tile-background-ice-04", 2, 6)
	map:addTile("bridge-wall-ice-left-01", 2, 6)
	map:addTile("tile-background-ice-cave-art-02", 2, 7)
	map:addTile("tile-ground-ledge-ice-left-02", 2, 8)
	map:addTile("tile-background-ice-04", 2, 9)
	map:addTile("tile-background-ice-05", 2, 10)
	map:addTile("tile-background-ice-08", 2, 11)
	map:addTile("tile-ground-ledge-ice-right-01", 2, 12)
	map:addTile("tile-background-ice-02", 2, 13)
	map:addTile("tile-ground-ice-05", 2, 14)
	map:addTile("tile-background-ice-03", 2, 15)
	map:addTile("tile-packagetarget-ice-01-idle", 2, 16)
	map:addTile("tile-background-ice-04", 2, 17)
	map:addTile("tile-packagetarget-ice-01-idle", 2, 18)
	map:addTile("tile-background-ice-08", 2, 19)
	map:addTile("tile-background-ice-06", 2, 20)
	map:addTile("tile-rock-ice-03", 2, 21)
	map:addTile("tile-ground-ice-03", 2, 22)
	map:addTile("tile-background-ice-07", 2, 23)
	map:addTile("tile-background-ice-02", 2, 24)
	map:addTile("tile-background-ice-04", 2, 25)
	map:addTile("tile-background-ice-05", 2, 26)
	map:addTile("tile-background-ice-06", 2, 27)
	map:addTile("tile-background-ice-07", 3, 0)
	map:addTile("tile-background-ice-01", 3, 1)
	map:addTile("tile-background-ice-02", 3, 2)
	map:addTile("bridge-plank-ice-01", 3, 2)
	map:addTile("tile-background-ice-08", 3, 3)
	map:addTile("tile-background-ice-cave-art-02", 3, 4)
	map:addTile("tile-background-ice-06", 3, 5)
	map:addTile("tile-background-ice-04", 3, 6)
	map:addTile("bridge-wall-ice-right-01", 3, 6)
	map:addTile("tile-background-ice-04", 3, 7)
	map:addTile("tile-background-ice-cave-art-02", 3, 8)
	map:addTile("tile-ground-ledge-ice-right-02", 3, 9)
	map:addTile("tile-background-ice-06", 3, 10)
	map:addTile("tile-background-ice-01", 3, 11)
	map:addTile("tile-background-ice-cave-art-02", 3, 12)
	map:addTile("tile-background-ice-08", 3, 13)
	map:addTile("tile-background-ice-03", 3, 14)
	map:addTile("tile-background-ice-06", 3, 15)
	map:addTile("tile-ground-ice-05", 3, 16)
	map:addTile("tile-background-ice-02", 3, 17)
	map:addTile("tile-ground-ice-01", 3, 18)
	map:addTile("tile-background-ice-04", 3, 19)
	map:addTile("tile-background-ice-01", 3, 20)
	map:addTile("tile-background-ice-03", 3, 21)
	map:addTile("tile-ground-ice-04", 3, 22)
	map:addTile("tile-background-ice-04", 3, 23)
	map:addTile("tile-background-ice-01", 3, 24)
	map:addTile("tile-background-ice-07", 3, 25)
	map:addTile("tile-background-ice-cave-art-01", 3, 26)
	map:addTile("tile-background-ice-03", 3, 27)
	map:addTile("tile-background-ice-05", 4, 0)
	map:addTile("tile-background-ice-07", 4, 1)
	map:addTile("tile-background-ice-02", 4, 2)
	map:addTile("bridge-wall-ice-right-01", 4, 2)
	map:addTile("tile-background-ice-04", 4, 3)
	map:addTile("tile-background-ice-01", 4, 4)
	map:addTile("tile-background-ice-01", 4, 5)
	map:addTile("tile-ground-ledge-ice-left-02", 4, 6)
	map:addTile("tile-background-ice-04", 4, 7)
	map:addTile("tile-background-ice-04", 4, 8)
	map:addTile("tile-ground-ledge-ice-left-02", 4, 9)
	map:addTile("tile-background-ice-01", 4, 10)
	map:addTile("tile-geyser-ice-01-idle", 4, 11)
	map:addTile("tile-background-ice-cave-art-02", 4, 13)
	map:addTile("tile-ground-ice-05", 4, 14)
	map:addTile("tile-background-ice-08", 4, 15)
	map:addTile("tile-background-ice-05", 4, 16)
	map:addTile("bridge-wall-ice-left-01", 4, 16)
	map:addTile("tile-background-ice-01", 4, 17)
	map:addTile("tile-background-ice-01", 4, 18)
	map:addTile("tile-background-ice-02", 4, 19)
	map:addTile("tile-background-ice-01", 4, 20)
	map:addTile("tile-geyser-ice-01-active", 4, 21)
	map:addTile("tile-background-ice-04", 4, 23)
	map:addTile("tile-background-ice-01", 4, 24)
	map:addTile("tile-background-ice-cave-art-02", 4, 25)
	map:addTile("tile-background-ice-02", 4, 26)
	map:addTile("tile-background-ice-04", 4, 27)
	map:addTile("tile-background-ice-04", 5, 0)
	map:addTile("tile-background-ice-04", 5, 1)
	map:addTile("tile-ground-ledge-ice-left-02", 5, 2)
	map:addTile("tile-background-ice-05", 5, 3)
	map:addTile("tile-background-ice-01", 5, 4)
	map:addTile("tile-background-ice-01", 5, 5)
	map:addTile("tile-background-ice-03", 5, 6)
	map:addTile("tile-background-ice-08", 5, 7)
	map:addTile("tile-background-ice-08", 5, 8)
	map:addTile("tile-packagetarget-ice-01-idle", 5, 9)
	map:addTile("tile-background-ice-01", 5, 10)
	map:addTile("tile-background-ice-05", 5, 11)
	map:addTile("tile-ground-ice-05", 5, 12)
	map:addTile("tile-background-ice-08", 5, 13)
	map:addTile("tile-background-ice-07", 5, 14)
	map:addTile("tile-background-ice-08", 5, 15)
	map:addTile("tile-background-ice-01", 5, 16)
	map:addTile("tile-background-ice-01", 5, 17)
	map:addTile("tile-ground-ice-01", 5, 18)
	map:addTile("tile-background-ice-05", 5, 19)
	map:addTile("tile-background-ice-01", 5, 20)
	map:addTile("tile-rock-ice-03", 5, 21)
	map:addTile("tile-ground-ice-02", 5, 22)
	map:addTile("tile-background-ice-08", 5, 23)
	map:addTile("tile-background-ice-cave-art-02", 5, 24)
	map:addTile("tile-background-ice-01", 5, 25)
	map:addTile("tile-background-ice-06", 5, 26)
	map:addTile("tile-background-ice-03", 5, 27)

	map:addEmitter("item-package-ice", 4, 1, 1, 0, "")

	map:setSetting("width", "6")
	map:setSetting("height", "28")
	map:setSetting("fishnpc", "false")
	map:setSetting("flyingnpc", "false")
	map:setSetting("gravity", "9.81")
	map:setSetting("packagetransfercount", "3")
	map:addStartPosition("2", "11")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "30")
	map:setSetting("theme", "ice")
	map:setSetting("waterchangespeed", "0")
	map:setSetting("waterfallingdelay", "0")
	map:setSetting("waterheight", "1")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("wind", "0.0")
end
