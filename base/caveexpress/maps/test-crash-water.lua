function getName()
	return "water"
end

function onMapLoaded()
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-background-ice-03", 0, 0)
	map:addTile("tile-background-ice-cave-art-01", 0, 1)
	map:addTile("tile-background-ice-cave-art-02", 0, 2)
	map:addTile("tile-background-ice-cave-art-01", 0, 3)
	map:addTile("tile-background-ice-cave-art-02", 1, 0)
	map:addTile("tile-background-ice-04", 1, 1)
	map:addTile("tile-background-ice-cave-art-01", 1, 2)
	map:addTile("tile-background-ice-08", 1, 3)
	map:addTile("tile-background-ice-03", 2, 0)
	map:addTile("tile-background-ice-cave-art-01", 2, 1)
	map:addTile("tile-background-ice-01", 2, 2)
	map:addTile("tile-background-ice-cave-art-01", 2, 3)
	map:addTile("tile-background-ice-03", 3, 0)
	map:addTile("tile-background-ice-cave-art-02", 3, 1)
	map:addTile("tile-background-ice-07", 3, 2)
	map:addTile("tile-background-ice-06", 3, 3)
	map:addTile("tile-background-ice-07", 4, 0)
	map:addTile("tile-background-ice-08", 4, 1)
	map:addTile("tile-background-ice-cave-art-01", 4, 2)
	map:addTile("tile-rock-ice-01", 4, 3)
	map:addTile("tile-background-ice-02", 5, 0)
	map:addTile("tile-background-ice-06", 5, 1)
	map:addTile("tile-background-ice-03", 5, 2)
	map:addTile("tile-packagetarget-ice-01-idle", 5, 3)

	map:addEmitter("item-package-ice", 0, 2, 1, 0, "")

	map:setSetting("width", "6")
	map:setSetting("height", "4")
	map:setSetting("fishnpc", "false")
	map:setSetting("flyingnpc", "false")
	map:setSetting("gravity", "9.81")
	map:setSetting("packagetransfercount", "3")
	map:addStartPosition("0", "0")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "30")
	map:setSetting("sideborderfail", "false")
	map:setSetting("theme", "ice")
	map:setSetting("waterchangespeed", "1.6")
	map:setSetting("waterfallingdelay", "0")
	map:setSetting("waterheight", "1")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("wind", "0.0")
end
