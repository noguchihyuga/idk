
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 2500, 0, 2000);
G2L["2"]["Position"] = UDim2.new(0.53734, 0, 0.52525, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 0.3;


-- StarterGui.ScreenGui.Frame
G2L["3"] = Instance.new("Frame", G2L["1"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["Size"] = UDim2.new(0, 1205, 0, 792);
G2L["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["4"] = Instance.new("TextLabel", G2L["3"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextSize"] = 50;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/LuckiestGuy.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[Teddy Hub]];
G2L["4"]["Position"] = UDim2.new(0.42988, 0, 0.25758, 0);


-- StarterGui.ScreenGui.Frame.TextLabel.UIStroke
G2L["5"] = Instance.new("UIStroke", G2L["4"]);
G2L["5"]["Thickness"] = 4;
G2L["5"]["Color"] = Color3.fromRGB(171, 86, 255);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["6"] = Instance.new("TextLabel", G2L["3"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 15;
G2L["6"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[Teddy Hub - Hop Boss]];
G2L["6"]["Position"] = UDim2.new(0.4249, 0, 0.32071, 0);


-- StarterGui.ScreenGui.Frame.TextLabel
G2L["7"] = Instance.new("TextLabel", G2L["3"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 20;
G2L["7"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["RichText"] = true;
G2L["7"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[<font color="##aaaaff">"https://discord.gg/pkAQt56uBc"</font> Is Best Script Hop]];
G2L["7"]["Position"] = UDim2.new(0.4249, 0, 0.35227, 0);


-- StarterGui.ScreenGui.Frame.beli
G2L["8"] = Instance.new("TextLabel", G2L["3"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 20;
G2L["8"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["RichText"] = true;
G2L["8"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["8"]["Visible"] = false;
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[Beli: <font color="#55ff00">10000</font>]];
G2L["8"]["Name"] = [[beli]];
G2L["8"]["Position"] = UDim2.new(0.42988, 0, 0.45707, 0);


-- StarterGui.ScreenGui.Frame.fragment
G2L["9"] = Instance.new("TextLabel", G2L["3"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 20;
G2L["9"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["RichText"] = true;
G2L["9"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Fragment: <font color="#aa55ff">10000</font>]];
G2L["9"]["Name"] = [[fragment]];
G2L["9"]["Position"] = UDim2.new(0.42988, 0, 0.42551, 0);


-- StarterGui.ScreenGui.Frame.level
G2L["a"] = Instance.new("TextLabel", G2L["3"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 20;
G2L["a"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["RichText"] = true;
G2L["a"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Level: <font color="#55aaff">1750</font>    Beli: <font color="#55ff00">10000</font>]];
G2L["a"]["Name"] = [[level]];
G2L["a"]["Position"] = UDim2.new(0.42988, 0, 0.39394, 0);


-- StarterGui.ScreenGui.Frame.status
G2L["b"] = Instance.new("TextLabel", G2L["3"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 23;
G2L["b"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["RichText"] = true;
G2L["b"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[<font color="##aaaaff">Status</font>: None]];
G2L["b"]["Name"] = [[status]];
G2L["b"]["Position"] = UDim2.new(0.43154, 0, 0.45833, 0);


-- StarterGui.ScreenGui.Frame.executor
G2L["c"] = Instance.new("TextLabel", G2L["3"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 20;
G2L["c"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["RichText"] = true;
G2L["c"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Executor: Delta]];
G2L["c"]["Name"] = [[executor]];
G2L["c"]["Position"] = UDim2.new(0.43154, 0, 0.49116, 0);


-- StarterGui.ScreenGui.Frame.time
G2L["d"] = Instance.new("TextLabel", G2L["3"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextSize"] = 20;
G2L["d"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["RichText"] = true;
G2L["d"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[Account Time: 1m36s]];
G2L["d"]["Name"] = [[time]];
G2L["d"]["Position"] = UDim2.new(0.43154, 0, 0.52273, 0);


-- StarterGui.ScreenGui.Frame.button
G2L["e"] = Instance.new("TextButton", G2L["3"]);
G2L["e"]["RichText"] = true;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(171, 171, 255);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["e"]["Size"] = UDim2.new(0, 200, 0, 39);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Discord Scripts]];
G2L["e"]["Name"] = [[button]];
G2L["e"]["Position"] = UDim2.new(0.43154, 0, 0.5846, 0);


-- StarterGui.ScreenGui.Frame.button.UIStroke
G2L["f"] = Instance.new("UIStroke", G2L["e"]);
G2L["f"]["Thickness"] = 2;
G2L["f"]["Color"] = Color3.fromRGB(171, 86, 255);
G2L["f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.ScreenGui.Frame.button.UICorner
G2L["10"] = Instance.new("UICorner", G2L["e"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 20);


-- StarterGui.ScreenGui.Frame.button.UIStroke
G2L["11"] = Instance.new("UIStroke", G2L["e"]);
G2L["11"]["Thickness"] = 2;
G2L["11"]["Color"] = Color3.fromRGB(70, 36, 105);
local ppp = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
ppp.Enabled = true
G2L["12"] = Instance.new("TextButton", ppp);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextSize"] = 35;
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["Size"] = UDim2.new(0, 160, 0, 50);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[Hide]];
G2L["12"]["Position"] = UDim2.new(0.01, 0, 0.5, 0);
G2L["12"].ZIndex = 5
G2L["12"].Draggable = true
G2L["13"] = Instance.new("UICorner", G2L["12"]);
return G2L
