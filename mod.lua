local f = "TeddyHub/teddymain.json"

local library = loadfile("a.txt")()
local lib = {}
local lastsection = false
function lib:MakeWindow(...)
	local Main = library.CreateMain({
		Desc = ""
	})
	local windowllib = {}
	function windowllib:MakeTab(tcf)
		local Title = tcf.Title
		local Page = Main.CreatePage({
			Page_Name = Title,
			Page_Title = Title
		})
		local tlib = {}
		-- local Section = Page.CreateSection(Title)
        local Section
		function tlib:AddSection(v)
			if not lastsection then
				Section = Page.CreateSection(v)
				lastsection = true
			end
		end
		function tlib:AddButton(cfg)
			if not Section then
				Section = Page.CreateSection(Title)
			end
			lastsection = false
			Section.CreateButton({
				Title = cfg.Name
			}, cfg.Callback)
		end
		function tlib:AddParagraph(cfg)
			if not Section then
				Section = Page.CreateSection(Title)
			end
			lastsection = false
			local label = Section.CreateLabel({
				Title = cfg.Title .. ": " .. cfg.Desc
			})
			local prgh = {}
			function prgh:SetDesc(v)
				label.SetText(cfg.Title .. ": " .. v)
			end
			return prgh
		end
		function tlib:AddSlider(cfg)
			if not Section then
				Section = Page.CreateSection(Title)
			end
			lastsection = false
			Section.CreateSlider({
				Title = cfg.Name,
				Min = cfg.Min,
				Max = cfg.Max,
				Default = cfg.Default,
				Precise = true
			}, cfg.Callback)
		end
		function tlib:AddTextBox(cfg)
			if not Section then
				Section = Page.CreateSection(Title)
			end
			lastsection = false
			Section.CreateBox({
				Title = cfg.Name,
				Placeholder = cfg.Placeholder,
				Default = "",
				Number = false
			}, cfg.Callback)
		end
		function tlib:AddDropdown(cfg)
			if not Section then
				Section = Page.CreateSection(Title)
			end
			lastsection = false
			local oldcallback = cfg.Callback
			local a, b = pcall(function ()
				if not isfolder("TeddyHub") then
					makefolder("TeddyHub")
				end
				return game.HttpService:JSONDecode(readfile("TeddyHub/teddymain.json"))
			end)
			if not a then
				b = {}
				writefile(f, "{}")
			end
			if b[cfg.Name] and b[cfg.Name]["Type"] and b[cfg.Name]["Type"] == "Dropdown" then
				cfg.Default = b[cfg.Name]["Value"] or ""
			end
			local newc = function (vl)
				local x, y = pcall(function ()
					if not isfolder("TeddyHub") then
						makefolder("TeddyHub")
					end
					return game.HttpService:JSONDecode(readfile("TeddyHub/teddymain.json"))
				end)
				if not x then
					y = {}
					writefile(f, "{}")
				end
				y[cfg.Name] = {
					["Value"] = vl,
					["Type"] = "Dropdown"
				}
				writefile(f, game.HttpService:JSONEncode(y))
				oldcallback(vl)
			end
            oldcallback(cfg.Desc)
			Section.CreateDropdown({
				Title = cfg.Name,
				List = cfg.Options,
				Search = false,
				Selected = false,
				Default = cfg.Default,
			}, newc)
		end
		function tlib:AddToggle(cfg)
			if not Section then
				Section = Page.CreateSection(Title)
			end
			lastsection = false
			local oldcallback = cfg.Callback
			local a, b = pcall(function ()
				if not isfolder("TeddyHub") then
					makefolder("TeddyHub")
				end
				return game.HttpService:JSONDecode(readfile("TeddyHub/teddymain.json"))
			end)
			if not a then
				b = {}
				writefile(f, "{}")
			end
			if b[cfg.Name] and b[cfg.Name]["Type"] and b[cfg.Name]["Type"] == "Toggle" then
				cfg.Default = b[cfg.Name]["Value"] and true or false
			end
			local newc = function (vl)
				local x, y = pcall(function ()
					if not isfolder("TeddyHub") then
						makefolder("TeddyHub")
					end
					return game.HttpService:JSONDecode(readfile("TeddyHub/teddymain.json"))
				end)
				if not x then
					y = {}
					writefile(f, "{}")
				end
				y[cfg.Name] = {
					["Value"] = vl,
					["Type"] = "Toggle"
				}
				writefile(f, game.HttpService:JSONEncode(y))
				oldcallback(vl)
			end
            oldcallback(cfg.Desc)
			Section.CreateToggle({
				Title = cfg.Name,
				Desc = cfg.Desc or "",
				Default = cfg.Default
			}, newc)
		end
        return tlib
	end
	return windowllib
end

return lib
