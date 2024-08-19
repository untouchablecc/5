local __DARKLUA_BUNDLE_MODULES

__DARKLUA_BUNDLE_MODULES = {
    cache = {},
    load = function(m)
        if not __DARKLUA_BUNDLE_MODULES.cache[m] then
            __DARKLUA_BUNDLE_MODULES.cache[m] = {
                c = __DARKLUA_BUNDLE_MODULES[m](),
            }
        end

        return __DARKLUA_BUNDLE_MODULES.cache[m].c
    end,
}

do
    function __DARKLUA_BUNDLE_MODULES.a()
        return 0
    end
    function __DARKLUA_BUNDLE_MODULES.b()
        local Utilities = {}
        local Workspace = game:GetService('Workspace')
        local CurrentCamera = Workspace.CurrentCamera

        function Utilities.math_round(Number, Scale)
            if typeof(Number) == 'string' then
                return Number
            end

            local Multiplier = 10 ^ (Scale or 0)
            local Rounded = math.floor(Number * Multiplier + 0.5) / Multiplier
            local _, DecimalPart = math.modf(Rounded)

            if DecimalPart == 0 then
                return string.format('%.0f', Rounded) .. '.00'
            else
                return string.format('%.' .. Scale .. 'f', Rounded)
            end
        end
        function Utilities.Vector3ToVector2(v)
            return Vector2 .new(v.X, v.Y)
        end
        function Utilities.WorldToScreen(v)
            local ViewportPoint, _ = CurrentCamera:WorldToViewportPoint(v)

            return Utilities.Vector3ToVector2(ViewportPoint)
        end
        function Utilities.DeepCopy(tableToClone, ignoreIndexes)
            local copy = {}

            for key, value in pairs(tableToClone)do
                if typeof(value) == 'table' then
                    if ignoreIndexes and table.find(ignoreIndexes, key) then
                        copy[key] = value
                    else
                        copy[key] = Utilities.DeepCopy(value, nil)
                    end
                else
                    copy[key] = value
                end
            end

            return copy
        end
        function Utilities.CombineTables(Base, ToAdd, Count)
            Base = Base or {}
            ToAdd = ToAdd or {}
            Count = Count and Count or 0

            for i, BaseValue in pairs(Base)do
                local ToAddValue = ToAdd[i]

                if typeof(BaseValue) == 'table' and typeof(ToAddValue) == 'table' then
                    Utilities.CombineTables(BaseValue, ToAddValue, (Count) + 1)

                    continue
                end

                local ToAddNewValue = ToAddValue

                if ToAddNewValue == nil then
                    ToAddNewValue = BaseValue
                end

                ToAdd[i] = ToAddNewValue
            end

            return ToAdd
        end
        function Utilities.CheckChance(Chance)
            return math.random(0, 100) <= Chance
        end
        function Utilities.ApplyVector2(v, Func)
            return Vector2 .new(Func(v.X), Func(v.Y))
        end
        function Utilities.IsPointInDrawing(
            Object,
            Type,
            Point,
            OverridePosition
        )
            if Type == 'Square' then
                local Position = OverridePosition or Object.Position
                local Size = Object.Size

                return Point.X >= Position.X and Point.X <= Position.X + Size.X and Point.Y >= Position.Y and Point.Y <= Position.Y + Size.Y
            elseif Type == 'Circle' then
                local Position = OverridePosition or Object.Position

                return (Position - Point).Magnitude <= Object.Radius
            elseif Type == 'Triangle' then
                local PointA = Object.PointA
                local PointB = Object.PointB
                local PointC = Object.PointC
                local AS = Point - PointA
                local AB = (PointB - PointA):Cross(AS) > 0

                if ((PointC - PointA):Cross(AS) > 0) == AB then
                    return false
                end
                if ((PointC - PointB):Cross(Point - PointB) > 0) ~= AB then
                    return false
                end

                return true
            end

            return false
        end

        return Utilities
    end
    function __DARKLUA_BUNDLE_MODULES.c()
        local ConfigurationTypes = __DARKLUA_BUNDLE_MODULES.load('a')
        local DefaultConfig = {
end
local __DARKLUA_BUNDLE_MODULES

__DARKLUA_BUNDLE_MODULES = {
    cache = {},
    load = function(m)
        if not __DARKLUA_BUNDLE_MODULES.cache[m] then
            __DARKLUA_BUNDLE_MODULES.cache[m] = {
                c = __DARKLUA_BUNDLE_MODULES[m](),
            }
        end

        return __DARKLUA_BUNDLE_MODULES.cache[m].c
    end,
}

do
    function __DARKLUA_BUNDLE_MODULES.a()
        return 0
    end
    function __DARKLUA_BUNDLE_MODULES.b()
        local Utilities = {}
        local Workspace = game:GetService('Workspace')
        local CurrentCamera = Workspace.CurrentCamera

        function Utilities.math_round(Number, Scale)
            if typeof(Number) == 'string' then
                return Number
            end

            local Multiplier = 10 ^ (Scale or 0)
            local Rounded = math.floor(Number * Multiplier + 0.5) / Multiplier
            local _, DecimalPart = math.modf(Rounded)

            if DecimalPart == 0 then
                return string.format('%.0f', Rounded) .. '.00'
            else
                return string.format('%.' .. Scale .. 'f', Rounded)
            end
        end
        function Utilities.Vector3ToVector2(v)
            return Vector2 .new(v.X, v.Y)
        end
        function Utilities.WorldToScreen(v)
            local ViewportPoint, _ = CurrentCamera:WorldToViewportPoint(v)

            return Utilities.Vector3ToVector2(ViewportPoint)
        end
        function Utilities.DeepCopy(tableToClone, ignoreIndexes)
            local copy = {}

            for key, value in pairs(tableToClone)do
                if typeof(value) == 'table' then
                    if ignoreIndexes and table.find(ignoreIndexes, key) then
                        copy[key] = value
                    else
                        copy[key] = Utilities.DeepCopy(value, nil)
                    end
                else
                    copy[key] = value
                end
            end

            return copy
        end
        function Utilities.CombineTables(Base, ToAdd, Count)
            Base = Base or {}
            ToAdd = ToAdd or {}
            Count = Count and Count or 0

            for i, BaseValue in pairs(Base)do
                local ToAddValue = ToAdd[i]

                if typeof(BaseValue) == 'table' and typeof(ToAddValue) == 'table' then
                    Utilities.CombineTables(BaseValue, ToAddValue, (Count) + 1)

                    continue
                end

                local ToAddNewValue = ToAddValue

                if ToAddNewValue == nil then
                    ToAddNewValue = BaseValue
                end

                ToAdd[i] = ToAddNewValue
            end

            return ToAdd
        end
        function Utilities.CheckChance(Chance)
            return math.random(0, 100) <= Chance
        end
        function Utilities.ApplyVector2(v, Func)
            return Vector2 .new(Func(v.X), Func(v.Y))
        end
        function Utilities.IsPointInDrawing(
            Object,
            Type,
            Point,
            OverridePosition
        )
            if Type == 'Square' then
                local Position = OverridePosition or Object.Position
                local Size = Object.Size

                return Point.X >= Position.X and Point.X <= Position.X + Size.X and Point.Y >= Position.Y and Point.Y <= Position.Y + Size.Y
            elseif Type == 'Circle' then
                local Position = OverridePosition or Object.Position

                return (Position - Point).Magnitude <= Object.Radius
            elseif Type == 'Triangle' then
                local PointA = Object.PointA
                local PointB = Object.PointB
                local PointC = Object.PointC
                local AS = Point - PointA
                local AB = (PointB - PointA):Cross(AS) > 0

                if ((PointC - PointA):Cross(AS) > 0) == AB then
                    return false
                end
                if ((PointC - PointB):Cross(Point - PointB) > 0) ~= AB then
                    return false
                end

                return true
            end

            return false
        end

        return Utilities
    end
    function __DARKLUA_BUNDLE_MODULES.c()
        local ConfigurationTypes = __DARKLUA_BUNDLE_MODULES.load('a')
        local DefaultConfig = {


        return DefaultConfig
    end
    function __DARKLUA_BUNDLE_MODULES.d()
        local Utilities = __DARKLUA_BUNDLE_MODULES.load('b')
        local DefaultConfiguration = __DARKLUA_BUNDLE_MODULES.load('c')
        local Configuration = (Utilities.CombineTables(DefaultConfiguration, getgenv().AllahWare))

        getgenv().AllahWare = Configuration

        return Configuration
    end
    function __DARKLUA_BUNDLE_MODULES.e()
        local Versions = loadstring(game:HttpGet(
[[https://raw.githubusercontent.com/untouchablecc/allaware/main/allahW]]))()
        local FullServerVersion = game:GetService('RobloxReplicatedStorage').GetServerVersion:InvokeServer()
        local ServerVersion = FullServerVersion:split(' ')[2]

        return Versions[game.PlaceId] == ServerVersion
    end
    function __DARKLUA_BUNDLE_MODULES.f()
        if not LPH_OBFUSCATED then
            local assert = assert
            local type = type
            local setfenv = setfenv

            LPH_ENCNUM = function(toEncrypt, ...)
                assert(type(toEncrypt) == 'number' and #{...} == 0, 
[[LPH_ENCNUM only accepts a single constant double or integer as an argument.]])

                return toEncrypt
            end
            LPH_NUMENC = LPH_ENCNUM
            LPH_ENCSTR = function(toEncrypt, ...)
                assert(type(toEncrypt) == 'string' and #{...} == 0, 
[[LPH_ENCSTR only accepts a single constant string as an argument.]])

                return toEncrypt
            end
            LPH_STRENC = LPH_ENCSTR
            LPH_ENCFUNC = function(toEncrypt, encKey, decKey, ...)
                assert(type(toEncrypt) == 'function' and type(encKey) == 'string' and #{
...} == 0, 
[[LPH_ENCFUNC accepts a constant function, constant string, and string variable as arguments.]])

                return toEncrypt
            end
            LPH_FUNCENC = LPH_ENCFUNC
            LPH_JIT = function(f, ...)
                assert(type(f) == 'function' and #{...} == 0, 
[[LPH_JIT only accepts a single constant function as an argument.]])

                return f
            end
            LPH_JIT_MAX = LPH_JIT
            LPH_NO_VIRTUALIZE = function(f, ...)
                assert(type(f) == 'function' and #{...} == 0, 
[[LPH_NO_VIRTUALIZE only accepts a single constant function as an argument.]])

                return f
            end
            LPH_NO_UPVALUES = function(f, ...)
                assert(type(setfenv) == 'function', 
[[LPH_NO_UPVALUES can only be used on Lua versions with getfenv & setfenv]])
                assert(type(f) == 'function' and #{...} == 0, 
[[LPH_NO_UPVALUES only accepts a single constant function as an argument.]])

                return f
            end
            LPH_CRASH = function(...)
                assert(#{...} == 0, 'LPH_CRASH does not accept any arguments.')
            end

            return false
        end

        return true
    end
    function __DARKLUA_BUNDLE_MODULES.g()
        local Maid = {}

        Maid.__index = Maid
        Maid.__type = 'Maid'

        do
            function Maid.new()
                local self = setmetatable({}, Maid)

                self._tasks = {}

                return self
            end
            function Maid.GetTask(self, name)
                return self._tasks[name]
            end
            function Maid.DestroyTask(self, name, task)
                if name then
                    self._tasks[name] = nil
                end

                local task_type = typeof(task)

                if task_type == 'function' then
                    (task)()
                elseif task_type == 'RBXScriptConnection' then
                    (task):Disconnect()
                elseif task_type == 'table' and (task).Destroy then
                    (task):Destroy()
                elseif task_type == 'thread' then
                    coroutine.close(task)
                elseif task_type == 'Instance' then
                    (task):Destroy()
                end
            end
            function Maid.DestroyTaskByName(self, name)
                local task = self:GetTask(name)

                if not task then
                    return false
                end

                self:DestroyTask(name, task)

                return true
            end
            function Maid.Destroy(self)
                local tasks = self._tasks

                for i, task in pairs(tasks)do
                    if typeof(task) == 'RBXScriptConnection' then
                        tasks[i] = nil

                        task:Disconnect()
                    end
                end

                local i, task = next(tasks)

                while task ~= nil do
                    self:DestroyTask(i, task)

                    i, task = next(tasks, i)
                end
            end

            Maid.DoCleaning = Maid.Destroy

            function Maid.NewTask(self, task, _name)
                local name = (_name or #self._tasks + 1)

                self:DestroyTaskByName(name)

                self._tasks[name] = task

                return name
            end
        end

        return Maid
    end
    function __DARKLUA_BUNDLE_MODULES.h()
        local taskwait = task.wait or wait
        local taskspawn = task.spawn or function(f, ...)
            return coroutine.resume(coroutine.create(f), ...)
        end
        local Signal = {}

        Signal.__index = Signal
        Signal.__type = 'Signal'
        Signal.ClassName = 'Signal'

        local Connection = {}

        Connection.__index = Connection
        Connection.__type = 'Connection'
        Connection.ClassName = 'Connection'

        do
            function Connection.new(Signal, Callback)
                local typeofSignal = typeof(Signal)

                assert(typeofSignal == 'table' and Signal.ClassName == 'Signal', "bad argument #1 to 'new' (Signal expected, got " .. typeofSignal .. ')')

                local typeofCallback = typeof(Callback)

                assert(typeofCallback == 'function', "bad argument #2 for 'new' (function expected, got " .. typeofCallback .. ')')

                local self = setmetatable({}, Connection)

                self.Function = Callback
                self.State = true
                self.Signal = Signal

                return self
            end
            function Connection.Enable(self)
                self.State = true
            end
            function Connection.Disable(self)
                self.State = false
            end
            function Connection.Disconnect(self)
                local Connections = self.Signal.Connections
                local selfInTable = table.find(Connections, self)

                table.remove(Connections, selfInTable)
            end

            Connection.disconnect = Connection.Disconnect
        end
        do
            function Signal.new(Name)
                local typeofName = typeof(Name)

                assert(typeofName == 'string', "bad argument #1 for 'new' (string expected, got " .. typeofName .. ')')

                local self = setmetatable({}, Signal)

                self.Name = Name
                self.Connections = {}

                return self
            end
            function Signal.Connect(self, Callback)
                local typeofCallback = typeof(Callback)

                assert(typeofCallback == 'function', "bad argument #1 for 'Connect' (function expected, got " .. typeofCallback .. ')')

                local connection = Connection.new(self, Callback)

                table.insert(self.Connections, connection)

                return connection
            end

            Signal.connect = Signal.Connect

            function Signal.DisconnectAll(self)
                for i = #self.Connections, 1, -1 do
                    self.Connections[i]:Disconnect()
                end
            end
            function Signal.Fire(self, ...)
                for _, connection in ipairs(self.Connections)do
                    if not (connection.State) then
                        continue
                    end

                    taskspawn(connection.Function, ...)
                end
            end

            Signal.fire = Signal.Fire

            function Signal.Wait(self, _Timeout, _Filter)
                local Timeout = _Timeout or (1 / 0)
                local Filter = _Filter or function(...)
                    return true
                end
                local Return = {}
                local Fired = false
                local connection = self:Connect(function(...)
                    if (Filter(...)) then
                        Return = {...}
                        Fired = true
                    end
                end)
                local Start = tick()

                while(true) do
                    taskwait()

                    local timeElapsed = tick() - Start

                    if not (Fired or timeElapsed > Timeout) then
                        continue
                    end

                    break
                end

                connection:Disconnect()

                return unpack(Return)
            end

            Signal.wait = Signal.Wait

            function Signal.Destroy(self)
                self:DisconnectAll()
            end

            Signal.destroy = Signal.destroy
        end

        return Signal
    end
    function __DARKLUA_BUNDLE_MODULES.i()
        local SignalBuilder = __DARKLUA_BUNDLE_MODULES.load('h')
        local Manager = {}

        Manager.__index = Manager

        do
            function Manager.new()
                local self = setmetatable({}, Manager)

                self.Signals = {}

                return self
            end
            function Manager.Get(self, SignalName)
                return self.Signals[SignalName]
            end
            function Manager.Add(self, _Signal)
                local Signal

                if (typeof(_Signal) == 'string') then
                    Signal = SignalBuilder.new(_Signal)
                end

                self.Signals[Signal.Name] = Signal
            end
            function Manager.Remove(self, SignalName)
                self.Signals[SignalName] = nil
            end

            Manager.Create = Manager.Add

            function Manager.Fire(self, SignalName, ...)
                local Signal = self:Get(SignalName)

                assert(Signal, 'signal does not exist')

                return Signal:Fire(...)
            end
            function Manager.Connect(self, SignalName, ...)
                local Signal = self:Get(SignalName)

                assert(Signal, 'signal does not exist')

                return Signal:Connect(...)
            end
            function Manager.Disconnect(self, SignalName)
                if (SignalName) then
                    local Signal = self:Get(SignalName)

                    assert(Signal, 'signal does not exist')
                    Signal:DisconnectAll()

                    return
                end

                for _, Signal in pairs(self.Signals)do
                    Signal:DisconnectAll()
                end
            end
            function Manager.Wait(self, SignalName, Timeout, Filter)
                local Signal = self:Get(SignalName)

                assert(Signal, 'signal does not exist')

                return Signal:Wait(Timeout, Filter)
            end
            function Manager.Destroy(self)
                self:Disconnect()
            end
        end

        return Manager
    end
    function __DARKLUA_BUNDLE_MODULES.j()
        local Maid = __DARKLUA_BUNDLE_MODULES.load('g')
        local Guns = {}

        Guns.__index = Guns

        do
            function Guns.new()
                local self = setmetatable({}, Guns)

                self.Maid = Maid.new()
                self.Guns = {}

                return self
            end
            function Guns.ListenForChild(GunData, Index, Parent, Name, Class)
                local TaskName = `ListenForChild{Index}`
                local Connection = Parent.ChildAdded:Connect(function(Child)
                    if Child.Name == Name and Child:IsA(Class) then
                        GunData[Index] = Child
                    end

                    GunData.Maid:DestroyTaskByName(TaskName)
                end)

                GunData.Maid:NewTask(Connection, TaskName)
            end
            function Guns.FindGun(self, Instance)
                for i, GunData in ipairs(self.Guns)do
                    if GunData.Instance == Instance then
                        return i
                    end
                end

                return nil
            end
            function Guns.InitialiseGun(self, Instance)
                local GunData = {
                    Instance = Instance,
                    Maid = Maid.new(),
                    Handle = (Instance:FindFirstChild('Handle')),
                    Ammo = (Instance:FindFirstChild('Ammo')),
                    ShootBBGUI = (Instance:FindFirstChild('ShootBBGUI')),
                }

                if not GunData.Handle then
                    self.ListenForChild(GunData, 'Handle', Instance, 'Handle', 'BasePart')
                end
                if not GunData.Ammo then
                    self.ListenForChild(GunData, 'Ammo', Instance, 'Ammo', 'IntValue')
                end
                if not GunData.ShootBBGUI then
                    self.ListenForChild(GunData, 'ShootBBGUI', Instance, 'ShootBBGUI', 'BillboardGui')
                end

                table.insert(self.Guns, GunData)

                local TaskName = `ListenForRemoval{Instance}`
                local Connection = Instance.Destroying:Connect(function()
                    local Index = self:FindGun(Instance)

                    if Index then
                        table.remove(self.Guns, Index)
                    end

                    GunData.Maid:DestroyTaskByName(TaskName)
                end)

                GunData.Maid:NewTask(Connection, TaskName)
            end
            function Guns.IsGun(Instance)
                return Instance:IsA('Tool') and Instance:FindFirstChild('GunScript') ~= nil
            end
            function Guns.OnCharacterChildAdded(self, Child)
                if self.IsGun(Child) then
                    local FindGun = self:FindGun(Child)

                    if not FindGun then
                        self:InitialiseGun(Child)

                        self.CurrentGunIndex = #self.Guns
                    else
                        self.CurrentGunIndex = FindGun
                    end

                    return true
                end

                return false
            end
            function Guns.OnCharacterChildRemoved(self, Child)
                local Gun = self.CurrentGunIndex and self.Guns[self.CurrentGunIndex]

                if Gun and Gun.Instance == Child then
                    self.CurrentGunIndex = nil
                end
            end
            function Guns.GetCurrentGun(self)
                if self.CurrentGunIndex then
                    return self.Guns[self.CurrentGunIndex]
                end

                return nil
            end
            function Guns.Destroy(self)
                self.Maid:Destroy()

                self.CurrentGunIndex = nil
                self.Guns = {}
            end
        end

        return Guns
    end
    function __DARKLUA_BUNDLE_MODULES.k()
        local Maid = __DARKLUA_BUNDLE_MODULES.load('g')
        local SignalManager = __DARKLUA_BUNDLE_MODULES.load('i')
        local Guns = __DARKLUA_BUNDLE_MODULES.load('j')
        local Workspace = game:GetService('Workspace')
        local PlaceId = game.PlaceId
        local CurrentCamera = Workspace.CurrentCamera
        local Player = {}

        Player.__index = Player

        do
            local AllBodyParts = {
                'HumanoidRootPart',
                'LeftHand',
                'RightHand',
                'LeftLowerArm',
                'RightLowerArm',
                'LeftUpperArm',
                'RightUpperArm',
                'LeftFoot',
                'LeftLowerLeg',
                'UpperTorso',
                'LeftUpperLeg',
                'RightLowerLeg',
                'RightUpperLeg',
                'LowerTorso',
                'RightFoot',
                'Head',
            }

            function Player.new(Instance, Initialise)
                local self = setmetatable({}, Player)

                self.Instance = Instance
                self.Maid = Maid.new()
                self.Signals = SignalManager.new()
                self.Guns = Guns.new()
                self.BodyParts = {}

                self:ResetData()
                self.Maid:NewTask(function()
                    self.Signals:Destroy()

                    return
                end)
                self.Signals:Add('KOd')
                self.Signals:Add('CharacterAdded')
                self:InitialiseConnections()
                self:OnCharacterAdded(Instance.Character, Initialise)

                return self
            end
            function Player.ResetData(self)
                self.Velocity = Vector3 .zero
                self.PreviousPosition = Vector3 .zero
                self.Grabbed = false
                self.KOInstance = nil
                self.OnScreen = false
                self.ScreenPosition = Vector2 .zero

                table.clear(self.BodyParts)
            end
            function Player.Process(self, dT)
                if not self.Instance.Character then
                    return
                end

                local PrimaryPart = self.BodyParts.HumanoidRootPart

                if not PrimaryPart then
                    return
                end

                local CurrentPosition = PrimaryPart.Position
                local PreviousPosition = self.PreviousPosition or CurrentPosition
                local Displacement = CurrentPosition - PreviousPosition

                self.Velocity = Displacement / dT
                self.PreviousPosition = CurrentPosition

                local ScreenPosition, OnScreen = CurrentCamera:WorldToViewportPoint(CurrentPosition)

                self.OnScreen = OnScreen
                self.ScreenPosition = Vector2 .new(ScreenPosition.X, ScreenPosition.Y)
            end
            function Player.Destroy(self)
                self:ResetData()
                self.Guns:Destroy()
                self.Maid:Destroy()
            end
            function Player.KOListener(self, KOInstance)
                if not KOInstance then
                    return
                end

                self.KOInstance = KOInstance

                self.Maid:NewTask(KOInstance.Changed:Connect(function()
                    if KOInstance.Value then
                        self.Signals:Fire('KOd')
                    end
                end), 'KOChanged')
            end
            function Player.InitialiseBodyEffects(self, BodyEffects)
                self:KOListener((BodyEffects:FindFirstChild('K.O')))

                if PlaceId == 9825515356 then
                    self.ReloadingInstance = (BodyEffects:FindFirstChild('Reloading'))
                else
                    self.ReloadingInstance = (BodyEffects:FindFirstChild('Reload'))
                end
            end
            function Player.OnBodyEffects(self, BodyEffects, Initialise)
                if Initialise then
                    self:InitialiseBodyEffects(BodyEffects)
                end

                self.Maid:NewTask(BodyEffects.ChildAdded:Connect(function(
                    Child
                )
                    if Child.Name == 'K.O' then
                        self:KOListener(Child)
                    elseif PlaceId == 9825515356 then
                        if Child.Name == 'Reloading' then
                            self.ReloadingInstance = Child
                        elseif Child.Name == 'Reload' then
                            self.ReloadingInstance = Child
                        end
                    end
                end), 'BodyEffectsChildAdded')
            end
            function Player.InitialiseCA(self, Character)
                self.Humanoid = Character:FindFirstChildWhichIsA('Humanoid')

                local BodyParts = self.BodyParts

                for _, PartName in ipairs(AllBodyParts)do
                    BodyParts[PartName] = Character:FindFirstChild(PartName)
                end

                self.Grabbed = Character:FindFirstChild('GRABBING_CONSTRAINT') ~= nil

                local BodyEffects = Character:FindFirstChild('BodyEffects')

                if BodyEffects then
                    self:OnBodyEffects(BodyEffects, true)
                end

                local GunScript = Character:FindFirstChild('GunScript', true)

                if GunScript and GunScript.Parent then
                    self.Guns:OnCharacterChildAdded(GunScript.Parent)
                end
            end
            function Player.OnCharacterChildAdded(self, Child)
                local ChildName = Child.Name

                if ChildName == 'GRABBING_CONSTRAINT' then
                    self.Grabbed = true

                    return
                elseif ChildName == 'Humanoid' and Child:IsA('Humanoid') then
                    self.Humanoid = Child

                    return
                end
                if table.find(AllBodyParts, ChildName) then
                    self.BodyParts[ChildName] = Child

                    return
                end
                if ChildName == 'BodyEffects' then
                    self:OnBodyEffects(Child)

                    return
                end
                if self.Guns:OnCharacterChildAdded(Child) then
                    return
                end
            end
            function Player.OnCharacterChildRemoved(self, Child)
                local ChildName = Child.Name

                if ChildName == 'GRABBING_CONSTRAINT' then
                    self.Grabbed = false

                    return
                elseif ChildName == 'Humanoid' and Child:IsA('Humanoid') then
                    self.Humanoid = nil

                    return
                end
                if table.find(AllBodyParts, ChildName) and Child:IsA('BasePart') then
                    self.BodyParts[ChildName] = nil

                    return
                end
                if self.Guns:OnCharacterChildRemoved(Child) then
                    return
                end
            end
            function Player.OnCharacterAdded(self, Character, Initialise)
                self:ResetData()
                self.Signals:Fire('CharacterAdded')

                if not Character then
                    return
                end
                if Initialise then
                    self:InitialiseCA(Character)
                end

                local ChildAdded = Character.ChildAdded:Connect(function(Child)
                    self:OnCharacterChildAdded(Child)
                end)

                self.Maid:NewTask(ChildAdded, 'CharacterChildAdded')

                local ChildRemoved = Character.ChildRemoved:Connect(function(
                    Child
                )
                    self:OnCharacterChildRemoved(Child)
                end)

                self.Maid:NewTask(ChildRemoved, 'CharacterChildRemoved')
            end
            function Player.InitialiseConnections(self)
                local CharacterAdded = self.Instance.CharacterAdded:Connect(function(
                    Character
                )
                    self:OnCharacterAdded(Character)
                end)

                self.Maid:NewTask(CharacterAdded, 'CharacterAdded')
            end
        end

        return Player
    end
    function __DARKLUA_BUNDLE_MODULES.l()
        local Module = {}
        local PlayerTrackerPlayerType = __DARKLUA_BUNDLE_MODULES.load('k')
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local Checks = Configuration.Universal.Checks
        local Players = game:GetService('Players')
        local Workspace = game:GetService('Workspace')
        local CurrentCamera = Workspace.CurrentCamera
        local LocalPlayer = Players.LocalPlayer
        local NeededParts = {
            'HumanoidRootPart',
            'UpperTorso',
        }

        function Module.Parts(PlayerData)
            if not PlayerData.Humanoid then
                return false
            end

            for _, PartName in ipairs(NeededParts)do
                if not PlayerData.BodyParts[PartName] then
                    return false
                end
            end

            return true
        end
        function Module.Friend(PlayerData)
            return LocalPlayer:IsFriendsWith(PlayerData.Instance.UserId)
        end
        function Module.Crew(LocalPlayerData, PlayerData)
            local OurCrewInstance = PlayerData.CrewInstance
            local TheirCrewInstance = LocalPlayerData.CrewInstance

            if not OurCrewInstance or not TheirCrewInstance then
                return false
            end
            if OurCrewInstance.Value == '' or TheirCrewInstance.Value == '' then
                return false
            end

            return OurCrewInstance.Value == TheirCrewInstance.Value
        end

        local IsDescendantOf = function(Parent, Child)
            local Current = Child

            while Current do
                if Current == Parent then
                    return true
                end

                Current = Current.Parent
            end

            return false
        end

        function Module.Wall(PlayerData)
            local CurrentCameraPosition = CurrentCamera.CFrame.Position
            local PlayerCharacter = PlayerData.Instance.Character
            local OurCharacter = LocalPlayer.Character

            if not PlayerCharacter then
                return false
            end

            local PlayerHRP = PlayerData.BodyParts.HumanoidRootPart

            if not PlayerHRP then
                return false
            end

            local RayOrigin
            local CurrentGun = PlayerData.Guns:GetCurrentGun()

            if CurrentGun and CurrentGun.Handle and CurrentGun.ShootBBGUI then
                RayOrigin = CurrentGun.Handle.Position + CurrentGun.Handle.CFrame:VectorToWorldSpace(CurrentGun.ShootBBGUI.StudsOffsetWorldSpace)
            else
                RayOrigin = CurrentCameraPosition
            end

            local raycastParms = RaycastParams.new()

            raycastParms.FilterDescendantsInstances = {CurrentCamera}
            raycastParms.FilterType = Enum.RaycastFilterType.Exclude

            if OurCharacter then
                table.insert(raycastParms.FilterDescendantsInstances, OurCharacter)
            end

            local RaycastResult = Workspace:Raycast(RayOrigin, (PlayerHRP.Position - RayOrigin) * 2, raycastParms)

            if not RaycastResult then
                return false
            else
                local PartHit = RaycastResult.Instance

                return PartHit == PlayerHRP or IsDescendantOf(PlayerCharacter, PartHit)
            end
        end
        function Module.OnScreen(PlayerData)
            return PlayerData.OnScreen
        end
        function Module.IsKOGrab(PlayerData)
            if not PlayerData.KOInstance then
                return false
            end

            return PlayerData.KOInstance.Value or PlayerData.Grabbed
        end
        function Module.Speed(PlayerData)
            return PlayerData.Velocity.Magnitude > Configuration.Universal.Settings.DisableIfSpeedAbove
        end
        function Module.CheckAll(LocalPlayerData, PlayerData)
            local Player = PlayerData.Instance

            if Player == LocalPlayer then
                return false
            end
            if not Module.Parts(PlayerData) then
                return false
            end
            if Checks.OnScreen and not Module.OnScreen(PlayerData) then
                return false
            end
            if Module.Speed(PlayerData) then
                return false
            end
            if Checks.Friend and Module.Friend(PlayerData) then
                return false
            end
            if Checks.Crew and Module.Crew(LocalPlayerData, PlayerData) then
                return false
            end
            if Checks.KOGrab and Module.IsKOGrab(PlayerData) then
                return false
            end
            if Checks.Wall and not Module.Wall(PlayerData) then
                return false
            end

            return true
        end

        return Module
    end
    function __DARKLUA_BUNDLE_MODULES.m()
        local Maid = __DARKLUA_BUNDLE_MODULES.load('g')
        local Player = __DARKLUA_BUNDLE_MODULES.load('k')
        local Guns = __DARKLUA_BUNDLE_MODULES.load('j')
        local Players = game:GetService('Players')
        local PlayerTracker = {}

        PlayerTracker.__index = PlayerTracker

        do
            function PlayerTracker.new()
                local self = setmetatable({}, PlayerTracker)

                self.Maid = Maid.new()
                self.Players = {}

                self:InitialiseCurrentPlayers()
                self:InitialiseConnections()

                return self
            end
            function PlayerTracker.PlayerAdded(self, Instance, Initialise)
                local NewPlayer = Player.new(Instance, Initialise)

                table.insert(self.Players, NewPlayer)

                return NewPlayer
            end
            function PlayerTracker.PlayerRemoved(self, Instance)
                for Index, Player in ipairs(self.Players)do
                    if Player.Instance == Instance then
                        table.remove(self.Players, Index)
                        Player:Destroy()

                        break
                    end
                end
            end
            function PlayerTracker.InitialiseConnections(self)
                self.Maid:NewTask(Players.PlayerAdded:Connect(function(
                    Instance
                )
                    self:PlayerAdded(Instance)
                end))
                self.Maid:NewTask(Players.PlayerRemoving:Connect(function(
                    Instance
                )
                    self:PlayerRemoved(Instance)
                end))
            end
            function PlayerTracker.InitialiseCurrentPlayers(self)
                for _, Player in ipairs(Players:GetPlayers())do
                    self:PlayerAdded(Player, true)
                end
            end
            function PlayerTracker.GetPlayerByInstance(self, Instance)
                for _, Player in ipairs(self.Players)do
                    if Player.Instance == Instance then
                        return Player
                    end
                end

                return nil
            end
            function PlayerTracker.GetGunData(self, Instance)
                local Player = self:GetPlayerByInstance(Instance)

                if not Player then
                    return nil
                end

                return Player.Guns
            end
            function PlayerTracker.Process(self, dT)
                for _, Player in ipairs(self.Players)do
                    Player:Process(dT)
                end
            end
        end

        return PlayerTracker.new()
    end
    function __DARKLUA_BUNDLE_MODULES.n()
        __DARKLUA_BUNDLE_MODULES.load('k')

        return 0
    end
    function __DARKLUA_BUNDLE_MODULES.o()
        return 0
    end
    function __DARKLUA_BUNDLE_MODULES.p()
        local CheckAll = __DARKLUA_BUNDLE_MODULES.load('l').CheckAll
        local PlayerTracker = __DARKLUA_BUNDLE_MODULES.load('m')
        local PlayerTrackerPlayerType = __DARKLUA_BUNDLE_MODULES.load('k')
        local Utilities = __DARKLUA_BUNDLE_MODULES.load('b')
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local SharedDataTypes = __DARKLUA_BUNDLE_MODULES.load('n')
        local MiscTypes = __DARKLUA_BUNDLE_MODULES.load('o')
        local Workspace = game:GetService('Workspace')
        local CurrentCamera = Workspace.CurrentCamera
        local ZeroVector2 = Vector2 .zero
        local mathfloor = math.floor
        local Vertices = {
            Vector3 .new(-1, -1, -1),
            Vector3 .new(-1, 1, -1),
            Vector3 .new(-1, 1, 1),
            Vector3 .new(-1, -1, 1),
            Vector3 .new(1, -1, -1),
            Vector3 .new(1, 1, -1),
            Vector3 .new(1, 1, 1),
            Vector3 .new(1, -1, 1),
        }
        local GetCorners = function(ModelCFrame, ModelSize, _ScaleFactor)
            local ScaleFactor = _ScaleFactor or Configuration.Universal.ClosestPoint.ReductionPercentage / 100

            ModelSize = ModelSize * ScaleFactor

            local HalfSize = ModelSize / 2
            local Corners = table.create(#Vertices)

            for i, Vertex in ipairs(Vertices)do
                local Corner3D = (ModelCFrame + (HalfSize * Vertex)).Position

                Corner3D = CurrentCamera:WorldToViewportPoint(Corner3D)

                local Corner2D = Vector2 .new(Corner3D.X, Corner3D.Y)

                Corners[i] = Corner2D
            end

            local MinPosition = CurrentCamera.ViewportSize:Min(unpack(Corners))
            local MaxPosition = ZeroVector2:Max(unpack(Corners))

            return {
                TopLeft = Utilities.ApplyVector2(MinPosition, mathfloor),
                TopRight = Utilities.ApplyVector2(Vector2 .new(MaxPosition.X, MinPosition.Y), mathfloor),
                BottomLeft = Utilities.ApplyVector2(Vector2 .new(MinPosition.X, MaxPosition.Y), mathfloor),
                BottomRight = Utilities.ApplyVector2(MaxPosition, mathfloor),
            }
        end
        local ClosestPlayer = function(LocalPlayerData, SharedData)
            local MousePosition = SharedData.MousePosition
            local ClosestPlayerData
            local Distance = 1 / 0

            for _, PlayerData in ipairs(PlayerTracker.Players)do
                if not CheckAll(LocalPlayerData, PlayerData) then
                    continue
                end

                local Position = PlayerData.ScreenPosition
                local Magnitude = (Vector2 .new(Position.X, Position.Y) - MousePosition).Magnitude

                if Magnitude < Distance then
                    ClosestPlayerData = PlayerData
                    Distance = Magnitude
                end
            end

            return ClosestPlayerData
        end
        local ClosestPartA = function(PlayerData, Character, SharedData)
            local MousePosition = SharedData.MousePosition
            local Parts = {}

            for Name, Part in pairs(PlayerData.BodyParts)do
                local Position

                if Name == 'HumanoidRootPart' then
                    Position = PlayerData.ScreenPosition
                else
                    Position = Utilities.WorldToScreen(Part.Position)
                end

                local Distance = (MousePosition - Position).Magnitude

                table.insert(Parts, {
                    Part = Part,
                    Distance = Distance,
                })
            end

            table.sort(Parts, function(a, b)
                return a.Distance < b.Distance
            end)

            SharedData.TargetParts = Parts

            return Parts[1] and Parts[1].Part
        end
        local InsidePolygon = function(Point, Corners)
            local numCorners = #Corners
            local j = numCorners
            local oddNodes = false

            for i = 1, numCorners do
                if (Corners[i].Y < Point.Y and Corners[j].Y >= Point.Y) or (Corners[j].Y < Point.Y and Corners[i].Y >= Point.Y) then
                    if Corners[i].X + (Point.Y - Corners[i].Y) / (Corners[j].Y - Corners[i].Y) * (Corners[j].X - Corners[i].X) < Point.X then
                        oddNodes = not oddNodes
                    end
                end

                j = i
            end

            return oddNodes
        end
        local ClosestPartB = function(Character, SharedData)
            local MousePosition = SharedData.MousePosition
            local MouseX = MousePosition.X
            local MouseY = MousePosition.Y
            local LowestPartY = 0
            local InPart
            local CentreX = Utilities.WorldToScreen(Character.HumanoidRootPart.Position).X
            local RightFootX = Utilities.WorldToScreen(Character.RightFoot.Position).X
            local PossibleParts = {}

            for _, Part in ipairs(Character:GetChildren())do
                if not (Part:IsA('BasePart') and Part.Name ~= 'HumanoidRootPart') then
                    continue
                end

                local Corners = GetCorners(Part.CFrame, Part.Size)
                local TopLeft = Corners.TopLeft
                local BottomRight = Corners.BottomRight

                if InsidePolygon(MousePosition, {
                    Corners.TopLeft,
                    Corners.BottomLeft,
                    Corners.BottomRight,
                    Corners.TopRight,
                }) then
                    InPart = Part

                    break
                end
                if BottomRight.Y > LowestPartY then
                    LowestPartY = BottomRight.Y
                end

                local WithinYBounds = MouseY >= TopLeft.Y and MouseY <= BottomRight.Y

                if WithinYBounds then
                    table.insert(PossibleParts, {
                        Part = Part,
                        TopLeft = TopLeft.X,
                        BottomRight = BottomRight.X,
                    })
                end
            end

            if InPart then
                return InPart
            elseif #PossibleParts > 0 then
                if #PossibleParts == 1 then
                    return PossibleParts[1].Part
                end

                local Right = MouseX > CentreX

                table.sort(PossibleParts, function(a, b)
                    if Right then
                        return a.BottomRight > b.BottomRight
                    else
                        return a.TopLeft < b.TopLeft
                    end
                end)

                return PossibleParts[1].Part
            elseif MouseY >= LowestPartY then
                local Right = MouseX > CentreX
                local BackView = RightFootX > CentreX

                if Right then
                    return BackView and Character.RightFoot or Character.LeftFoot
                else
                    return BackView and Character.LeftFoot or Character.RightFoot
                end
            else
                return Character.Head
            end
        end
        local ClosestPoint = function(
            Part,
            _Point,
            _ReductionPercentage,
            Center,
            SharedData
        )
            local ClosestPointConfig = Configuration.Universal.ClosestPoint
            local Point = _Point or SharedData.MousePosition
            local ReductionPercentage = _ReductionPercentage or ClosestPointConfig.ReductionPercentage

            if Center == nil then
                Center = ClosestPointConfig.Center
            end

            local PointRay = CurrentCamera:ViewportPointToRay(Point.X, Point.Y)
            local Intersection = PointRay.Origin + (PointRay.Direction * PointRay.Direction:Dot(Part.Position - PointRay.Origin))
            local Transform = Part.CFrame:PointToObjectSpace(Intersection)
            local ReducedSize = (Part.Size - (Part.Size * ReductionPercentage / 100)) * (Center and Vector3 .new(1, 1, 0) or 1)
            local HalfSize = ReducedSize / 2

            return Part.CFrame * Vector3 .new(math.clamp(Transform.X, -HalfSize.X, HalfSize.X), math.clamp(Transform.Y, 
-HalfSize.Y, HalfSize.Y), math.clamp(Transform.Z, -HalfSize.Z, HalfSize.Z))
        end

        return {
            GetCorners = GetCorners,
            ClosestPlayer = ClosestPlayer,
            CheckAll = CheckAll,
            ClosestPartA = ClosestPartA,
            ClosestPartB = ClosestPartB,
            ClosestPoint = ClosestPoint,
        }
    end
    function __DARKLUA_BUNDLE_MODULES.q()
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local Players = game:GetService('Players')
        local ReplicatedStorage = game:GetService('ReplicatedStorage')
        local PlaceId = game.PlaceId
        local LocalPlayer = Players.LocalPlayer
        local GameType = 'N/A'
        local DaHoodId = {2788229376, 7213786345, 16033173781}
        local HoodCustomId = {9825515356}
        local HoodModdedId = {5602055394, 7951883376}
        local PlaceVersions = {
            [2788229376] = 0,
            [7213786345] = 0,
            [16033173781] = 0,
            [9825515356] = 0,
            [5602055394] = 0,
            [7951883376] = 0,
        }
        local StoredGameVersion = PlaceVersions[PlaceId]

        if StoredGameVersion and StoredGameVersion ~= game.PlaceVersion and not Configuration.Misc.Safety then
            local Message = 
[[This game has updated and the script has not been tested yet! Safety is not guaranteed.

To continue at your own risk, set `Misc.Safety` to `false` in the configuration.]]

            task.defer(function()
                LocalPlayer:Kick(Message)
            end)
            error(Message)
        end

        local Weapons = {
            Pistols = {},
            Shotguns = {},
            Automatics = {},
            Other = {},
        }

        if table.find(DaHoodId, PlaceId) then
            GameType = 'DaHood'
            Weapons = {
                Pistols = {
                    '[Revolver]',
                    '[Glock]',
                    '[Silencer]',
                },
                Shotguns = {
                    '[Shotgun]',
                    '[Double-Barrel SG]',
                    '[TacticalShotgun]',
                },
                Automatics = {
                    '[SMG]',
                    '[P90]',
                    '[LMG]',
                    '[AR]',
                    '[SilencerAR]',
                    '[AK47]',
                    '[DrumGun]',
                },
                Other = {
                    '[Rifle]',
                },
            }
        elseif table.find(HoodCustomId, PlaceId) then
            GameType = 'HoodCustom'
            Weapons = {
                Pistols = {
                    '[Revolver]',
                    '[Glock]',
                    '[Silencer]',
                },
                Shotguns = {
                    '[Shotgun]',
                    '[DoubleBarrel]',
                    '[TacticalShotgun]',
                },
                Automatics = {
                    '[SMG]',
                },
                Other = {},
            }
        elseif table.find(HoodModdedId, PlaceId) then
            GameType = 'HoodModded'
            Weapons = {
                Pistols = {
                    '[Sniper]',
                    '[Glock]',
                    '[R8]',
                    '[Revolver]',
                    '[Deagle]',
                },
                Shotguns = {
                    '[TacticalShotgun]',
                    '[Shotgun]',
                    '[Double Barrel SG]',
                },
                Automatics = {
                    '[AA12]',
                    '[AK-47]',
                    '[Akimbo SMG]',
                    '[AR]',
                    '[Famas]',
                    '[Golden AK-47]',
                    '[HMinigun]',
                    '[LMG]',
                    '[LMinigun]',
                    '[P90]',
                    '[Tec-9]',
                    '[UMP]',
                    '[Vector]',
                    '[DrumGun]',
                    '[SCAR-H]',
                    '[Silencer]',
                    '[SilencerAR]',
                    '[SMG]',
                },
                Other = {
                    'AUG',
                    '[RPG]',
                    '[Grenade Launcher]',
                    '[Railgun]',
                    '[Flamethrower]',
                    '[FlareGun]',
                    '[Ray Gun]',
                    '[Homing Launcher ]',
                    '[PlasmaRifle]',
                },
            }
        else
            local Message = 'Unsupported game!'

            task.defer(function()
                LocalPlayer:Kick(Message)
            end)
            error(Message)
        end

        local UpdateMouseArgs = {
            [2788229376] = 'UpdateMousePosI',
            [4106313503] = 'UpdateMousePos',
            [5602055394] = 'MousePos',
            [7951883376] = 'MousePos',
            [9825515356] = 'GetMousePos',
        }
        local MainEvent

        if table.find(HoodModdedId, PlaceId) then
            MainEvent = ReplicatedStorage:FindFirstChild('Bullets')
        else
            MainEvent = ReplicatedStorage:FindFirstChild('MainEvent')
        end
        if not (MainEvent and MainEvent:IsA('RemoteEvent')) then
            local Message = 'MainEvent not found!'

            task.defer(function()
                LocalPlayer:Kick(Message)
            end)
            error(Message)
        end

        return {
            DaHoodId = DaHoodId,
            HoodModdedId = HoodModdedId,
            HoodCustomId = HoodCustomId,
            GameType = GameType,
            Weapons = Weapons,
            UpdateMouseArg = UpdateMouseArgs[PlaceId] or 'UpdateMousePosI',
            MainEvent = MainEvent,
        }
    end
    function __DARKLUA_BUNDLE_MODULES.r()
        local Utilities = __DARKLUA_BUNDLE_MODULES.load('b')
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local SharedDataTypes = __DARKLUA_BUNDLE_MODULES.load('n')
        local PlayerDataTypes = __DARKLUA_BUNDLE_MODULES.load('k')
        local ConfigurationTypes = __DARKLUA_BUNDLE_MODULES.load('a')
        local ThisConfiguration = Configuration.AutoPrediction
        local Players = game:GetService('Players')
        local Stats = game:GetService('Stats')
        local Workspace = game:GetService('Workspace')
        local CurrentCamera = Workspace.CurrentCamera
        local LocalPlayer = Players.LocalPlayer
        local DataPing = (Stats).Network.ServerStatsItem['Data Ping']
        local Calculate = function(Target)
            local Ping = tonumber(tostring(DataPing:GetValueString()):split(' ')[1]) or 0

            Ping = Ping / 1000

            local RangePrediction = 0
            local TargetPrimaryPart = Target.Character and Target.Character.PrimaryPart
            local LocalPrimaryPart = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

            if TargetPrimaryPart and LocalPrimaryPart then
                RangePrediction = (TargetPrimaryPart.Position - LocalPrimaryPart.Position).Magnitude * ThisConfiguration.RangeCoefficient
            end

            local Prediction = Ping + ThisConfiguration.AdditionalInterval + RangePrediction

            return tonumber(Utilities.math_round(Prediction, ThisConfiguration.Precision)) or 0
        end
        local GetPrediction = function(Target, InAir, Data)
            if Configuration.AutoPrediction.Enabled and Target then
                return Calculate(Target)
            end
            if InAir then
                return Data.Air
            else
                return Data.Ground
            end
        end
        local ApplyPrediction = function(
            PartVelocity,
            PartPosition,
            Prediction
        )
            local CurrentCameraCFrame = CurrentCamera.CFrame
            local RelativePartVelocity = CurrentCameraCFrame:VectorToObjectSpace(PartVelocity)
            local PredictionVelocity = RelativePartVelocity * Prediction * ThisConfiguration.VelocityMultiplier
            local PredictedPosition = PartPosition + CurrentCameraCFrame:VectorToWorldSpace(PredictionVelocity)

            return PredictedPosition
        end
        local IsAntiAim = function(Target)
            return (Target.Velocity * Vector3 .new(1, 0, 1)).Magnitude > 20
        end
        local PredictedPosition3D = function(Mode, Data)
            local Target = Data.Target

            if not Target then
                return
            end

            local TargetInstance = Target.Instance
            local PredictionCalc = Data.Prediction or Calculate(TargetInstance)
            local HumanoidRootPart = Target.BodyParts.HumanoidRootPart
            local Velocity = IsAntiAim(Target) and Target.Velocity or (TargetInstance.Character and HumanoidRootPart and HumanoidRootPart.AssemblyLinearVelocity)

            if not Velocity then
                return
            end

            local Predicted
            local Prediction

            if Data.ZPrediction then
                Prediction = Vector3 .new(PredictionCalc, 0, Data.ZPrediction)
            else
                Prediction = PredictionCalc
            end
            if Mode == 'ClosestPoint' then
                Predicted = ApplyPrediction(Velocity, Data.ClosestPoint, Prediction)
            elseif Mode == 'ClosestPart' then
                Predicted = ApplyPrediction(Velocity, Data.HitPosition, Prediction)
            elseif Mode == 'Torso' then
                Predicted = ApplyPrediction(Velocity, Data.TorsoPosition, Prediction)
            elseif typeof(Mode) == 'Instance' then
                Predicted = ApplyPrediction(Velocity, Mode.Position, Prediction)
            elseif typeof(Mode) == 'Vector3' then
                Predicted = ApplyPrediction(Velocity, Mode, Prediction)
            else
                error('invalid mode for prediction')
            end

            return Predicted
        end
        local PredictedPosition = function(Mode, Data)
            local Predicted3D = PredictedPosition3D(Mode, Data)

            if not Predicted3D then
                return
            end

            local Predicted2D = Utilities.WorldToScreen(Predicted3D)

            return Predicted2D, Predicted3D
        end

        return {
            Calculate = Calculate,
            GetPrediction = GetPrediction,
            PredictedPosition = PredictedPosition,
            PredictedPosition3D = PredictedPosition3D,
        }
    end
    function __DARKLUA_BUNDLE_MODULES.s()
        local ConfigurationTypes = __DARKLUA_BUNDLE_MODULES.load('a')
        local SharedDataTypes = __DARKLUA_BUNDLE_MODULES.load('n')
        local Aiming = __DARKLUA_BUNDLE_MODULES.load('p')
        local Utilities = __DARKLUA_BUNDLE_MODULES.load('b')
        local PredictionM = __DARKLUA_BUNDLE_MODULES.load('r')
        local Workspace = game:GetService('Workspace')
        local CurrentCamera = Workspace.CurrentCamera
        local ApplyDrawingProperties = function(Object, Distance, Properties)
            for i, v in pairs(Properties)do
                if i == 'Type' then
                    continue
                end
                if typeof(v) == 'function' then
                    v = (v)(Distance, Properties)
                end
                if i == 'Radius' then
                    v = v * 3
                end

                Object[i] = v
            end

            return Object
        end
        local CreateDrawingObject = function(Properties)
            local Object = Drawing.new((Properties.Type))

            return ApplyDrawingProperties(Object, 0, Properties)
        end
        local DefualtFOVObject = {
            ChecksEnabled = false,
            Mode = 'Follow',
            Prediction = false,
            Closest = false,
            Torso = false,
            VisibleIfTarget = false,
            VisibleColor = nil,
            CornersScaleFactor = nil,
            Properties = {
                Type = 'Circle',
            },
        }
        local FOVObject = {}

        FOVObject.__index = FOVObject

        do
            function FOVObject.new(Parent, Data)
                local self = setmetatable({}, FOVObject)
                local CopyFOVObject = (Utilities.DeepCopy(DefualtFOVObject))

                Data = (Utilities.CombineTables(CopyFOVObject, Data))
                self.Object = CreateDrawingObject(Data.Properties)
                self.Parent = Parent
                self.Data = Data
                self.Properties = Data.Properties

                return self
            end
            function FOVObject.SharedDataPrediction(self, SharedData)
                local Target = SharedData.Target
                local TargetPlayer = Target and Target.Instance
                local SharedDataClone = SharedData:Clone()

                SharedDataClone.Prediction = PredictionM.GetPrediction(TargetPlayer, SharedData.InAir, self.Parent.Prediction)

                return SharedDataClone
            end
            function FOVObject.OverridePosition(self, SharedData)
                local Closest = self.Data.Closest

                if self.Data.Prediction then
                    local PredictedMode = Closest and 'ClosestPoint' or 'Torso'

                    return PredictionM.PredictedPosition(PredictedMode, self:SharedDataPrediction(SharedData))
                else
                    local SharedPosition = Closest and SharedData.ClosestPoint or SharedData.TorsoPosition

                    return Utilities.WorldToScreen(SharedPosition)
                end
            end
            function FOVObject.EarlyReturn(self)
                self:SetVisible(false)
            end
            function FOVObject.SetVisible(self, Visible)
                self.Properties.Visible = Visible
                self.Object.Visible = Visible
            end
            function FOVObject.IsParentEnabled(self)
                if not self.Parent or self.Parent.Enabled == nil then
                    return true
                end

                return self.Parent.Enabled
            end
            function FOVObject.Check(self, SharedData)
                if not self:IsParentEnabled() or (self.Data.VisibleIfTarget and not SharedData.Target) then
                    self:EarlyReturn()

                    return false
                end
                if not self.Data.ChecksEnabled then
                    self.Properties.Color = self.Data.VisibleColor

                    return true
                end

                local OverridePosition

                if self.Data.Mode == 'Mouse' then
                    OverridePosition = self:OverridePosition(SharedData)
                end

                local IsInside = Utilities.IsPointInDrawing(self.Object, self.Properties.Type, SharedData.MousePosition, OverridePosition)
                local VisibleColor = self.Data.VisibleColor

                if VisibleColor then
                    self.Properties.Color = IsInside and VisibleColor or self.Properties.Color
                end

                return IsInside
            end
            function FOVObject.RenderMouse(self, SharedData)
                if not self:IsParentEnabled() then
                    self:EarlyReturn()

                    return
                end

                local Properties = self.Properties
                local MousePosition = SharedData.MousePosition

                Properties.Position = MousePosition

                ApplyDrawingProperties(self.Object, 0, Properties)
            end
            function FOVObject.Render(self, Data, SharedData)
                local Mode = self.Data.Mode

                if not Data then
                    if Mode == 'Mouse' then
                        self:RenderMouse(SharedData)
                    end

                    return
                end
                if not self:IsParentEnabled() then
                    self:EarlyReturn()

                    return
                end

                local Properties = self.Properties
                local Distance = Data.Distance
                local PropertiesSize = Properties.Size
                local Size

                if typeof(PropertiesSize) == 'function' then
                    Size = PropertiesSize(Distance, Properties)
                else
                    Size = PropertiesSize
                end

                local ScaleFactor = 1

                if typeof(Size) == 'Vector2' then
                    ScaleFactor = 1 / (Data.TorsoP3 .Z * math.tan(math.rad(CurrentCamera.FieldOfView / 2)) * 2) * 100
                end

                local MousePosition = SharedData.MousePosition
                local AnchorPosition = self.Data.Closest and Data.ClosestP or Data.TorsoP
                local Position

                if Mode == 'Mouse' then
                    Position = MousePosition
                elseif Mode == 'Follow' then
                    if self.Data.Prediction and SharedData.Target then
                        Position = self:OverridePosition(SharedData) or AnchorPosition
                    else
                        Position = AnchorPosition
                    end
                else
                    error('invalid fov mode')
                end

                local PropertiesClone = (Utilities.DeepCopy(Properties))
                local HasSize = self.Properties.Type == 'Square'

                if HasSize then
                    local Size2D

                    if typeof(Size) == 'Vector2' then
                        Size2D = Size * ScaleFactor
                        PropertiesClone.Size = Size2D
                    else
                        local Size3D

                        if not Size then
                            Size3D = Data.CharacterSize
                        else
                            Size3D = Size
                        end

                        local Corners = Aiming.GetCorners(Data.CharacterCFrame, Size3D, self.Data.CornersScaleFactor)
                        local MinPosition = Corners.TopLeft:Min(AnchorPosition)
                        local MaxPosition = Corners.BottomRight:Max(AnchorPosition)

                        Size2D = MaxPosition - MinPosition
                        PropertiesClone.Size = Size2D
                    end

                    Position = Position - Size2D / 2
                end
                if PropertiesClone.VisibleColor then
                    PropertiesClone.Color = nil
                end

                PropertiesClone.Position = Position

                ApplyDrawingProperties(self.Object, Distance, PropertiesClone)
            end
        end

        return FOVObject
    end
    function __DARKLUA_BUNDLE_MODULES.t()
        local ConfigurationTypes = __DARKLUA_BUNDLE_MODULES.load('a')
        local FOVObject = __DARKLUA_BUNDLE_MODULES.load('s')
        local SharedDataTypes = __DARKLUA_BUNDLE_MODULES.load('n')
        local FOVObjects = {}
        local FOVChecks = {}
        local Initialise = function(Name, Parent, Data)
            if FOVObjects[Name] then
                error("FOV object with name '" .. Name .. "' already exists")
            end

            local Object = FOVObject.new(Parent, Data)

            FOVObjects[Name] = Object

            return Object
        end
        local CheckAll = function(SharedData, Data)
            for Name, Object in pairs(FOVObjects)do
                debug.profilebegin('FOV - Object')
                debug.profilebegin('FOV - Render')
                Object:Render(Data, SharedData)
                debug.profileend()
                debug.profilebegin('FOV - Check')

                FOVChecks[Name] = Object:Check(SharedData)

                debug.profileend()
                debug.profileend()
            end

            return FOVChecks
        end
        local MakeAllInvisible = function()
            for _, Object in pairs(FOVObjects)do
                if Object.Data.VisibleIfTarget then
                    Object:SetVisible(false)
                end
            end
        end

        return {
            Initialise = Initialise,
            MakeAllInvisible = MakeAllInvisible,
            CheckAll = CheckAll,
            FOVChecks = FOVChecks,
        }
    end
    function __DARKLUA_BUNDLE_MODULES.u()
        local Game = __DARKLUA_BUNDLE_MODULES.load('q')
        local PredictionM = __DARKLUA_BUNDLE_MODULES.load('r')
        local Utilities = __DARKLUA_BUNDLE_MODULES.load('b')
        local FOV = __DARKLUA_BUNDLE_MODULES.load('t')
        local FOVChecks = FOV.FOVChecks
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local PlayerTracker = __DARKLUA_BUNDLE_MODULES.load('m')
        local SharedDataTypes = __DARKLUA_BUNDLE_MODULES.load('n')
        local ThisConfiguration = Configuration.SilentAim
        local Workspace = game:GetService('Workspace')
        local Players = game:GetService('Players')
        local CurrentCamera = Workspace.CurrentCamera
        local LocalPlayer = Players.LocalPlayer
        local LocalPlayerData = PlayerTracker:GetPlayerByInstance(LocalPlayer)
        local MainEvent = Game.MainEvent
        local UpdateMouseArg = Game.UpdateMouseArg
        local AntiCurveFOV
        local Check = function()
            return (ThisConfiguration.Enabled and ThisConfiguration.Default) and (Utilities.CheckChance(ThisConfiguration.HitChance)) and FOVChecks['SilentAim']
        end
        local WillCurve = function(Point3D)
            if not (ThisConfiguration.AntiCurve.Enabled and AntiCurveFOV) then
                return false
            end

            local OurCharacter = LocalPlayer.Character
            local raycastParms = RaycastParams.new()

            raycastParms.FilterDescendantsInstances = {CurrentCamera}
            raycastParms.FilterType = Enum.RaycastFilterType.Exclude

            if OurCharacter then
                table.insert(raycastParms.FilterDescendantsInstances, OurCharacter)
            end
            if not LocalPlayerData then
                LocalPlayerData = PlayerTracker:GetPlayerByInstance(LocalPlayer)

                if not LocalPlayerData then
                    return true
                end
            end

            local Origin
            local CurrentGun = LocalPlayerData.Guns:GetCurrentGun()

            if CurrentGun and CurrentGun.Handle and CurrentGun.ShootBBGUI then
                Origin = CurrentGun.Handle.Position + CurrentGun.Handle.CFrame:VectorToWorldSpace(CurrentGun.ShootBBGUI.StudsOffsetWorldSpace)
            else
                Origin = CurrentCamera.CFrame.Position
            end

            local RaycastResult = Workspace:Raycast(Origin, (Point3D - Origin) * 2, raycastParms)

            if not RaycastResult then
                return true
            end

            local HitPosition = RaycastResult.Position
            local HitPosition2D = Utilities.WorldToScreen(HitPosition)
            local InsideFOV = Utilities.IsPointInDrawing(AntiCurveFOV.Object, AntiCurveFOV.Properties.Type, HitPosition2D)

            return InsideFOV == false
        end
        local Initialise = function()
            AntiCurveFOV = FOV.Initialise('AntiCurve', ThisConfiguration.AntiCurve, ThisConfiguration.AntiCurve.FOV)
        end
        local Main = function(Data)
            if not (Check() and Data.Target and Data.TargetChecksPassed) then
                return
            end

            local Target = Data.Target
            local Humanoid = (((Target.Instance.Character)).Humanoid)

            if not Humanoid then
                return
            end

            local InAir = Humanoid:GetState() == Enum.HumanoidStateType.Freefall
            local Hit
            local SharedDataClone = Data:Clone()

            SharedDataClone.Prediction = PredictionM.GetPrediction(Target.Instance, InAir, ThisConfiguration.Prediction)

            if Target.Velocity.Magnitude < 0.2 or not Configuration.Universal.ClosestPoint.UseV2 then
                Hit = PredictionM.PredictedPosition3D('ClosestPoint', SharedDataClone)
            else
                local PredictedPositionTorso3D = PredictionM.PredictedPosition3D('Torso', SharedDataClone)
                local PredictedPositionPoint3D = PredictionM.PredictedPosition3D('ClosestPoint', SharedDataClone)

                if not (PredictedPositionTorso3D and PredictedPositionPoint3D) then
                    return
                end

                Hit = Vector3 .new(PredictedPositionTorso3D.X, PredictedPositionPoint3D.Y, PredictedPositionTorso3D.Z)
            end
            if not Hit or WillCurve(Hit) then
                return
            end
            if Game.GameType == 'HoodModded' then
                MainEvent:FireServer(UpdateMouseArg, Hit, 'P')
            else
                MainEvent:FireServer(UpdateMouseArg, Hit)
            end
        end

        return {
            Main = Main,
            Initialise = Initialise,
        }
    end
    function __DARKLUA_BUNDLE_MODULES.v()
        local PlayerDataType = __DARKLUA_BUNDLE_MODULES.load('k')
        local FOVChecks = __DARKLUA_BUNDLE_MODULES.load('t').FOVChecks
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local ThisConfiguration = Configuration.Triggerbot
        local LastClick = 0
        local Check = function(LocalPlayerData)
            local GunAmmo

            if LocalPlayerData.Guns.CurrentGunIndex then
                GunAmmo = LocalPlayerData.Guns.Guns[LocalPlayerData.Guns.CurrentGunIndex].Ammo
            else
                return false
            end

            return (ThisConfiguration.Enabled and ThisConfiguration.Default) and (LocalPlayerData.ReloadingInstance ~= nil and not LocalPlayerData.ReloadingInstance.Value) and FOVChecks['Triggerbot'] and (GunAmmo ~= nil and GunAmmo.Value ~= 0) and (os.clock() - LastClick >= ThisConfiguration.Cooldown)
        end

        return function(LocalPlayerData)
            if not Check(LocalPlayerData) then
                return
            end

            mouse1click()
        end
    end
    function __DARKLUA_BUNDLE_MODULES.w()
        local PredictionM = __DARKLUA_BUNDLE_MODULES.load('r')
        local Utilities = __DARKLUA_BUNDLE_MODULES.load('b')
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local ConfigurationTypes = __DARKLUA_BUNDLE_MODULES.load('a')
        local SharedDataTypes = __DARKLUA_BUNDLE_MODULES.load('n')
        local ThisConfiguration = Configuration.Aimbot
        local TweenService = game:GetService('TweenService')
        local UserInputService = game:GetService('UserInputService')
        local AimTime
        local AirGroundSelect = function(InAir, Data)
            return InAir and Data.Air or Data.Ground
        end
        local RunAssist = function(Position, Data, SharedData)
            local ScreenPosition

            if typeof(Position) == 'Vector3' then
                ScreenPosition = Utilities.WorldToScreen(Position)
            else
                ScreenPosition = Position
            end

            local MousePosition = SharedData.MousePosition
            local Displacement = ScreenPosition - MousePosition
            local Distance = Displacement.Magnitude

            if Distance < 5 then
                return
            end

            local StrengthConstant = Data.Strength
            local Strength = StrengthConstant / Distance
            local Movement = Displacement * Strength

            mousemoverel(Movement.X, Movement.Y)
        end
        local RunEasing = function(Position, Data, SharedData)
            if not AimTime then
                error('missing aimtime?')
            end

            local CurrentAimTime = math.clamp(os.clock() - AimTime, 0, 1)
            local Alpha

            if Data.EasingStyle == 'AllahWare' then
                local t = CurrentAimTime

                Alpha = (0.5 - 0.5 * math.cos(math.pi * t)) * (1 - math.abs(1 - t) ^ 2) * (math.sqrt((2 - t) * t))
            else
                Alpha = TweenService:GetValue(CurrentAimTime, Data.EasingStyle, Data.EasingDirection)
            end

            local ScreenPosition

            if typeof(Position) == 'Vector3' then
                ScreenPosition = Utilities.WorldToScreen(Position)
            else
                ScreenPosition = Position
            end

            local MousePosition = UserInputService:GetMouseLocation()
            local SmoothedPosition = MousePosition:Lerp(ScreenPosition, Alpha * Data.Smoothing)
            local Displacement = SmoothedPosition - MousePosition

            mousemoverel(Displacement.X, Displacement.Y)
        end
        local ModeResolve = {
            Assist = RunAssist,
            Easing = RunEasing,
        }
        local Check = function()
            return ThisConfiguration.Enabled and ThisConfiguration.Default
        end

        return function(SharedData)
            local CurrentTarget = SharedData.Target

            if not Check() or not CurrentTarget then
                AimTime = nil

                return
            elseif not AimTime then
                AimTime = os.clock()
            end

            local Character = CurrentTarget.Instance.Character

            if not Character then
                return
            end

            local InAir = SharedData.InAir
            local Part
            local PartName = AirGroundSelect(InAir, ThisConfiguration.Part)

            if typeof(PartName) == 'table' then
                for _, v in ipairs(SharedData.TargetParts)do
                    if table.find(PartName, v.Part.Name) then
                        Part = v.Part

                        break
                    end
                end
            else
                local TempPart = Character:FindFirstChild(PartName)

                if not (TempPart and TempPart:IsA('BasePart')) then
                    return
                end

                Part = TempPart
            end

            local Mode = AirGroundSelect(InAir, (ThisConfiguration.Mode))
            local ModeData = AirGroundSelect(InAir, ThisConfiguration[Mode])
            local SharedDataClone = SharedData:Clone()

            SharedDataClone.Prediction = PredictionM.GetPrediction(CurrentTarget.Instance, InAir, ThisConfiguration.Prediction)

            local PredictedPosition = PredictionM.PredictedPosition(Part, SharedDataClone)

            if not PredictedPosition then
                return
            end

            local ModeFunction = ModeResolve[Mode]

            ModeFunction(PredictedPosition, ModeData, SharedData)
        end
    end
    function __DARKLUA_BUNDLE_MODULES.x()
        local Maid = __DARKLUA_BUNDLE_MODULES.load('g')
        local HttpService = game:GetService('HttpService')
        local UserInputService = game:GetService('UserInputService')
        local Binds = {}
        local Module = {
            TestMode = false,
            Maid = Maid.new(),
        }

        do
            function Module.GetAll()
                return Binds
            end
            function Module.Get(Id)
                local FoundI = -1

                for i, Bind in ipairs(Binds)do
                    if Bind.Id == Id then
                        FoundI = i

                        break
                    end
                end

                if FoundI == -1 then
                    return nil, nil
                end

                return Binds[FoundI], FoundI
            end
            function Module.CharacterToKeyCode(Character, ErrorInvalid)
                if typeof(Character) == 'function' then
                    return Module.CharacterToKeyCode(Character(), ErrorInvalid)
                end

                Character = Character:lower()

                if Character:match('mb%d') then
                    return (((Enum.UserInputType))['MouseButton' .. Character:gsub('mb', '')])
                end
                if ErrorInvalid and #Character ~= 1 then
                    error('invalid character')
                end

                for _, Keycode in pairs(Enum.KeyCode:GetEnumItems())do
                    if Keycode.Value == Character:byte() then
                        return Keycode
                    end
                end

                if ErrorInvalid then
                    error('cannot find character')
                end

                return nil
            end
            function Module.CreateBind(Data)
                local Keybind

                if typeof(Data.Keybind) == 'string' then
                    Keybind = Module.CharacterToKeyCode(Data.Keybind, true) or Enum.KeyCode.Unknown
                else
                    Keybind = (Data.Keybind)
                end

                local Id = Data.Id or HttpService:GenerateGUID()
                local Bind = {
                    Callback = Data.Callback,
                    ProcessedCheck = Data.ProcessedCheck or false,
                    Hold = Data.Hold or false,
                    State = Data.State or false,
                    Id = Id,
                    Keybind = Keybind,
                    InternalKeybind = Enum.KeyCode.Unknown,
                    InternalHold = false,
                }

                table.insert(Binds, Bind)

                return Id
            end
            function Module.Update(Id, Property, NewValue)
                local Bind = Module.Get(Id)

                if not Bind then
                    return false
                end

                Bind[Property] = NewValue

                return true
            end
            function Module.UpdateKeybind(Id, NewKeybind)
                return Module.Update(Id, 'Keybind', NewKeybind)
            end
            function Module.UpdateCallback(Id, NewCallback)
                return Module.Update(Id, 'Callback', NewCallback)
            end
            function Module.RemoveBind(Id)
                local _, FoundI = Module.Get(Id)

                if not FoundI then
                    return false
                end

                table.remove(Binds, FoundI)

                return true
            end
            function Module.CreateConnection()
                Module.Maid:NewTask(UserInputService.InputBegan:Connect(function(
                    Input,
                    gameProcessedEvent
                )
                    for _, Bind in ipairs(Binds)do
                        if typeof(Bind.Keybind) == 'function' then
                            Bind.InternalKeybind = Bind.Keybind()
                        else
                            Bind.InternalKeybind = Bind.Keybind
                        end

                        local BindHold = Bind.Hold

                        if typeof(BindHold) == 'function' then
                            Bind.InternalHold = BindHold()
                        else
                            Bind.InternalHold = BindHold
                        end

                        local Keybind = Bind.InternalKeybind
                        local Property = tostring(Keybind.EnumType)

                        if ((Input)[Property] ~= Keybind) or (Bind.ProcessedCheck and gameProcessedEvent) then
                            continue
                        end
                        if Bind.InternalHold then
                            Bind.State = true
                        else
                            Bind.State = not Bind.State
                        end

                        Bind.Callback(Bind.State, Bind)
                    end
                end), 'InputBegan')
                Module.Maid:NewTask(UserInputService.InputEnded:Connect(function(
                    Input,
                    gameProcessedEvent
                )
                    for _, Bind in ipairs(Binds)do
                        local BindHold = Bind.InternalHold

                        if not BindHold then
                            continue
                        end

                        local Keybind = Bind.InternalKeybind
                        local Property = tostring(Keybind.EnumType)

                        if ((Input)[Property] ~= Keybind) or (Bind.ProcessedCheck and gameProcessedEvent) then
                            continue
                        end

                        Bind.State = false

                        Bind.Callback(false, Bind)
                    end
                end), 'InputEnded')
            end
            function Module.Destroy(KeepConnection)
                if not KeepConnection then
                    Module.Maid:Destroy()
                end

                Binds = {}
            end
        end

        Module.CreateConnection()

        return Module
    end
    function __DARKLUA_BUNDLE_MODULES.y()
        local ConfigurationTypes = __DARKLUA_BUNDLE_MODULES.load('a')
        local DistanceCategory = function(Distance, DistanceCategories)
            local Converted = {}

            for DistanceType, UpperBound in pairs(DistanceCategories)do
                table.insert(Converted, {
                    DistanceType = DistanceType,
                    UpperBound = UpperBound,
                })
            end

            table.sort(Converted, function(a, b)
                return a.UpperBound < b.UpperBound
            end)

            local Highest = 1

            for i, Data in ipairs(Converted)do
                Highest = i

                if Data.UpperBound > Distance then
                    break
                end
            end

            return Converted[Highest]
        end

        local function Apply(Parent, Data, Category)
            for i, v in pairs(Data)do
                local Child = Parent[i]

                if typeof(v) ~= 'table' then
                    continue
                end
                if typeof(Child) == 'table' then
                    Apply(Child, v, Category)

                    continue
                end

                Parent[i] = v[Category.DistanceType]
            end

            return Data
        end

        return function(Root, Data, GunData, Distance)
            if not Data.Enabled then
                return
            end

            local Category = DistanceCategory(Distance, Data.Detection)

            return Apply(Root, GunData, Category)
        end
    end
    function __DARKLUA_BUNDLE_MODULES.z()
        local SharedDataTypes = __DARKLUA_BUNDLE_MODULES.load('n')
        local Utilities = __DARKLUA_BUNDLE_MODULES.load('b')
        local SharedData = {
            Target = nil,
            TargetChecksPassed = false,
            TargetParts = {},
            InAir = false,
            ZPrediction = nil,
            Prediction = nil,
            ClosestPoint = Vector3 .new(),
            HitPosition = Vector3 .new(),
            TorsoPosition = Vector3 .new(),
            MousePosition = Vector2 .new(),
            Clone = function(self)
                return (Utilities.DeepCopy(self, {
                    'Target',
                }))
            end,
        }

        return SharedData
    end
    function __DARKLUA_BUNDLE_MODULES.A()
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local ThisConfiguration = Configuration.TargetLock
        local KeybindHandler = __DARKLUA_BUNDLE_MODULES.load('x')
        local Aiming = __DARKLUA_BUNDLE_MODULES.load('p')
        local PlayerTracker = __DARKLUA_BUNDLE_MODULES.load('m')
        local SharedData = __DARKLUA_BUNDLE_MODULES.load('z')
        local PlayerTrackerPlayerType = __DARKLUA_BUNDLE_MODULES.load('k')
        local Checks = __DARKLUA_BUNDLE_MODULES.load('l')
        local Players = game:GetService('Players')
        local AimbotPlayer
        local TargetPlayer
        local LocalPlayer = Players.LocalPlayer
        local LocalPlayerData = PlayerTracker:GetPlayerByInstance(LocalPlayer)
        local AimbotBind = KeybindHandler.Get('Aimbot')
        local Check = function()
            return ThisConfiguration.Enabled
        end

        KeybindHandler.CreateBind({
            Keybind = ThisConfiguration.ChangeTargetBind,
            ProcessedCheck = true,
            Callback = function()
                if AimbotPlayer then
                    return
                end
                if TargetPlayer then
                    TargetPlayer = nil

                    return
                end
                if not Check() then
                    return
                end

                TargetPlayer = Aiming.ClosestPlayer(LocalPlayerData, SharedData)

                return
            end,
        })

        local AimbotConfiguration = Configuration.Aimbot

        KeybindHandler.CreateBind({
            Keybind = AimbotConfiguration.Keybind,
            ProcessedCheck = true,
            Callback = function()
                if AimbotPlayer then
                    AimbotPlayer = nil

                    return
                end
                if not Check() then
                    return
                end

                AimbotPlayer = Aiming.ClosestPlayer(LocalPlayerData, SharedData)

                return
            end,
        })

        local GetTarget = function()
            if AimbotPlayer then
                if not Checks.Parts(AimbotPlayer) then
                    return nil, false
                end

                local PlayerChecks = Aiming.CheckAll(LocalPlayerData, AimbotPlayer)

                return AimbotPlayer, PlayerChecks
            end
            if not Check() or not TargetPlayer then
                local ClosestPlayer = Aiming.ClosestPlayer(LocalPlayerData, SharedData)

                return ClosestPlayer, ClosestPlayer ~= nil
            end
            if TargetPlayer and Aiming.CheckAll(LocalPlayerData, TargetPlayer) then
                return TargetPlayer, true
            end

            return nil, false
        end
        local ResetTarget = function()
            AimbotPlayer = nil

            if not AimbotBind then
                AimbotBind = KeybindHandler.Get('Aimbot')
            end
            if AimbotBind then
                AimbotBind.State = false

                AimbotBind.Callback(false, AimbotBind)
            end
        end

        LocalPlayerData.Signals:Connect('KOd', ResetTarget)
        LocalPlayerData.Signals:Connect('CharacterAdded', ResetTarget)

        return {
            GetTarget = GetTarget,
            ResetTarget = ResetTarget,
        }
    end
    function __DARKLUA_BUNDLE_MODULES.B()
        local Maid = __DARKLUA_BUNDLE_MODULES.load('g')
        local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
        local ThisConfiguration = Configuration.Macro
        local CoreGui = game:GetService('CoreGui')
        local VirtualInputManager = game:GetService('VirtualInputManager')
        local RunService = game:GetService('RunService')
        local BackpackHotbar = (CoreGui).RobloxGui.Backpack.Hotbar
        local RenderStepped = RunService.RenderStepped
        local RenderSteppedWait = RunService.RenderStepped.Wait
        local Check = function(Type)
            local Data = ThisConfiguration[Type]

            return Data.Enabled and Data.Default
        end
        local RunSpeed = function()
            if not Check('Speed') then
                return
            end

            local Data = ThisConfiguration.Speed
            local Type = Data.ScrollWheel and 'Mouse' or 'Normal'
            local Speed = Data.Speed / 100

            if Type == 'Normal' then
                task.wait(Speed)
                VirtualInputManager:SendKeyEvent(true, 'I', false, game)
                task.wait(Speed)
                VirtualInputManager:SendKeyEvent(true, 'O', false, game)
            elseif Type == 'Mouse' then
                task.wait(Speed)
                VirtualInputManager:SendMouseWheelEvent('0', '0', true, game)
                task.wait(Speed)
                VirtualInputManager:SendMouseWheelEvent('0', '0', false, game)
            end
        end
        local RunNoclip = function(Number)
            if not Check('Noclip') then
                return
            end
            if Number then
                for i = 1, 2 do
                    keypress(0x30 + Number)
                    keyrelease(0x30 + Number)
                end
            end
        end

        return function()
            local maid = Maid.new()
            local Number = nil

            for _, v in ipairs(BackpackHotbar:GetChildren())do
                if v.ToolName.Text ~= ThisConfiguration.Noclip.Gun then
                    continue
                end

                Number = tonumber(v.Number.Text)

                break
            end

            maid:NewTask(BackpackHotbar.ChildAdded:Connect(function(v)
                if v.ToolName.Text ~= ThisConfiguration.Noclip.Gun then
                    return
                end

                Number = tonumber(v.Number.Text)
            end), 'Number')
            maid:NewTask(BackpackHotbar.ChildRemoved:Connect(function(v)
                if v.ToolName.Text ~= ThisConfiguration.Noclip.Gun then
                    return
                end

                Number = nil
            end), 'Number')
            maid:NewTask(task.spawn(function()
                while true do
                    RenderSteppedWait(RenderStepped)
                    RunSpeed()
                end
            end), 'Speed')
            maid:NewTask(task.spawn(function()
                while true do
                    RenderSteppedWait(RenderStepped)
                    RunNoclip(Number)
                end
            end), 'Noclip')

            return maid
        end
    end
end

local ConfigurationTypes = __DARKLUA_BUNDLE_MODULES.load('a')
local Configuration = __DARKLUA_BUNDLE_MODULES.load('d')
local VersionCheckConfig = Configuration.Universal.Settings.VersionCheck



__DARKLUA_BUNDLE_MODULES.load('f')

local Aiming = __DARKLUA_BUNDLE_MODULES.load('p')
local Utilities = __DARKLUA_BUNDLE_MODULES.load('b')
local Maid = __DARKLUA_BUNDLE_MODULES.load('g')
local SilentAim = __DARKLUA_BUNDLE_MODULES.load('u')
local Triggerbot = __DARKLUA_BUNDLE_MODULES.load('v')
local Aimbot = __DARKLUA_BUNDLE_MODULES.load('w')
local KeybindHandler = __DARKLUA_BUNDLE_MODULES.load('x')
local GunSpecificRun = __DARKLUA_BUNDLE_MODULES.load('y')
local FOV = __DARKLUA_BUNDLE_MODULES.load('t')
local PlayerTracker = __DARKLUA_BUNDLE_MODULES.load('m')
local MiscTypes = __DARKLUA_BUNDLE_MODULES.load('o')
local SharedData = __DARKLUA_BUNDLE_MODULES.load('z')
local TargetLock = __DARKLUA_BUNDLE_MODULES.load('A')
local GameData = __DARKLUA_BUNDLE_MODULES.load('q')
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local Players = game:GetService('Players')
local Workspace = game:GetService('Workspace')
local CurrentCamera = Workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local GunSpecifics = {}

for Name, Module in pairs(Configuration)do
    if Module.Keybind then
        KeybindHandler.CreateBind({
            Id = Name,
            Keybind = Module.Keybind,
            ProcessedCheck = true,
            State = Module.Default,
            Hold = function()
                return Module.Hold
            end,
            Callback = function(Value)
                Module.Default = Value

                return
            end,
        })
    end
    if Module.GunSpecific then
        GunSpecifics[Name] = Module.GunSpecific
    end
    if Module.FOV then
        FOV.Initialise(Name, Module, Module.FOV)
    end
end

SilentAim.Initialise()

for Name, Properties in pairs(Configuration.Visuals.FOVs)do
    local Parent

    if Name == 'PredictedClosest' then
        Parent = Configuration.SilentAim
    end

    FOV.Initialise(Name, Parent, Properties)
end

local LocalPlayerData = PlayerTracker:GetPlayerByInstance(LocalPlayer)
local ApplyGunSpecifics = function(Distance)
    local Gun = LocalPlayerData.Guns:GetCurrentGun()

    if not Gun then
        return
    end

    local GunName = Gun.Instance.Name
    local GunType

    for Type, Guns in pairs(GameData.Weapons)do
        if table.find(Guns, GunName) then
            GunType = Type

            break
        end
    end

    if not GunType then
        warn('Unsupported gun type')

        return
    end

    for Name, Data in pairs(GunSpecifics)do
        GunSpecificRun(Configuration[Name], Data, Data[GunType], Distance)
    end
end
local IsGun = function(Child)
    return Child:IsA('Tool') and Child:FindFirstChild('GunScript') ~= nil
end
local LocalMaid = Maid.new()
local OnCharacterAdded = function(Character)
    if not Character then
        return
    end

    LocalMaid:NewTask(Character.ChildAdded:Connect(function(child)
        if IsGun(child) then
            LocalMaid:NewTask((child).Activated:Connect(function()
                SilentAim.Main(SharedData)
            end), 'GunActivated')

            return
        end
    end), 'CharacterChildAdded')
end

OnCharacterAdded(LocalPlayer.Character)
LocalMaid:NewTask(LocalPlayer.CharacterAdded:Connect(OnCharacterAdded), 'CharacterAdded')

local ResetLoop = function()
    SharedData.Target = nil
    SharedData.ClosestPartTime = nil

    FOV.MakeAllInvisible()

    SharedData.TargetParts = {}
end
local ProcessFOV = function(TargetCharacter)
    if not TargetCharacter then
        FOV.CheckAll(SharedData)

        return
    end

    local TorsoPosition = SharedData.TorsoPosition
    local ClosestPoint = SharedData.ClosestPoint
    local Distance = LocalPlayer:DistanceFromCharacter(ClosestPoint)
    local CharacterCFrame, CharacterSize = TargetCharacter:GetBoundingBox()
    local UpperTorsoScreen = CurrentCamera:WorldToViewportPoint(TorsoPosition)

    debug.profilebegin('FOV - Check All')
    FOV.CheckAll(SharedData, {
        Distance = Distance,
        CharacterCFrame = CharacterCFrame,
        CharacterSize = CharacterSize,
        ClosestP = Utilities.WorldToScreen(ClosestPoint),
        TorsoP3 = UpperTorsoScreen,
        TorsoP = Utilities.Vector3ToVector2(UpperTorsoScreen),
    })
    debug.profileend()
end

LocalMaid:NewTask(RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function(dT)
    SharedData.MousePosition = UserInputService:GetMouseLocation()
    LocalPlayerData = LocalPlayerData or PlayerTracker:GetPlayerByInstance(LocalPlayer)

    if not LocalPlayerData then
        ProcessFOV()
        ResetLoop()

        return nil, nil
    end

    debug.profilebegin('Player Tracker')
    PlayerTracker:Process(dT)
    debug.profileend()
    debug.profilebegin('Aiming - Closest Player')

    local TargetPlayerData, TargetChecksPassed = TargetLock.GetTarget()

    SharedData.Target = TargetPlayerData
    SharedData.TargetChecksPassed = TargetChecksPassed

    if TargetPlayerData == nil then
        ProcessFOV()
        ResetLoop()

        return
    end

    debug.profileend()

    local TargetCharacter = (TargetPlayerData.Instance.Character)
    local TorsoPosition = ((TargetPlayerData.BodyParts.UpperTorso)).Position

    SharedData.TorsoPosition = TorsoPosition

    if TargetChecksPassed then
        SharedData.InAir = TargetCharacter.Humanoid:GetState() == Enum.HumanoidStateType.Freefall
    else
        SharedData.InAir = false
    end

    debug.profilebegin('Aiming - Closest Part')

    local ClosestPart = Aiming.ClosestPartA(TargetPlayerData, TargetCharacter, SharedData)

    SharedData.ClosestPart = ClosestPart
    SharedData.ClosestPartTime = os.clock()

    if ClosestPart == nil then
        ProcessFOV(TargetCharacter)
        ResetLoop()

        return
    end

    SharedData.HitPosition = ClosestPart.Position

    debug.profileend()
    debug.profilebegin('Aiming - Closest Point')

    local ClosestPoint = Aiming.ClosestPoint(ClosestPart, nil, nil, nil, SharedData)

    SharedData.ClosestPoint = ClosestPoint

    debug.profileend()
    ProcessFOV(TargetCharacter)

    local Distance = LocalPlayer:DistanceFromCharacter(ClosestPoint)

    debug.profilebegin('Aiming - Gun Specifics')
    ApplyGunSpecifics(Distance)
    debug.profileend()
    Triggerbot(LocalPlayerData)
    Aimbot(SharedData)

    return
end)), 'MainLoop')
__DARKLUA_BUNDLE_MODULES.load('B')()
