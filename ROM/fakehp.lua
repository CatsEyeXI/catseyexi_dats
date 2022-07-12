-----------------------------------
-- func: !npc
-- desc: Test dynamic entity before its placed into a module for testing.
-- note: Will spawn after you move from your current position
-----------------------------------
-----------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
}

function onTrigger(player, npc)
    local tele = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = "Teleport",
        look = 51, -- HomePoint
        x = -14.130,
        y = 1.500,
        z = -16.436,
        rotation = 85,
        widescan = 1,

        onTrade = function(player, npc, trade)
        end,

        onTrigger = function(player, npc)
        local menu =
        {
        title = "Teleport",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            
        end,
        
		options =
        {
            {
                "Option 1: Test1",
                function(playerArg)
                    player:setPos(161.000, -2.000, 161.000, 94, 230 ) -- Southern San d'Oria
                end,             -- x ^    y ^     z ^  rot ^ zone ^,
            },
            {
                "Option 2: Test2",
                function(playerArg)
                    player:setPos(161.000, -2.000, 161.000, 94, 230 ) -- Southern San d'Oria
                end,             -- x ^    y ^     z ^  rot ^ zone ^                
            },
            {
                "Option 3: Test3",
                function(playerArg)
                    player:setPos(161.000, -2.000, 161.000, 94, 230 ) -- Southern San d'Oria
                end,             -- x ^    y ^     z ^  rot ^ zone ^,
            },
        },
        onCancelled = function(playerArg)
            
        end,
        onEnd = function(playerArg)
            -- NOTE: This could be used to release a locked player,
            
        end,
    }
    player:customMenu(menu)
	})
	end
end