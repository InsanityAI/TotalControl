--  Music Interface. Note that if music is disabled, these calls do nothing
    ---@param musicName string
    ---@param random boolean
    ---@param index integer
    function SetMapMusic(musicName, random, index) end

    function ClearMapMusic() end

    ---@param musicName string
    function PlayMusic(musicName) end

    ---@param musicName string
    ---@param frommsecs integer
    ---@param fadeinmsecs integer
    function PlayMusicEx(musicName, frommsecs, fadeinmsecs) end

    ---@param fadeOut boolean
    function StopMusic(fadeOut) end

    function ResumeMusic() end

    ---@param musicFileName string
    function PlayThematicMusic(musicFileName) end

    ---@param musicFileName string
    ---@param frommsecs integer
    function PlayThematicMusicEx(musicFileName, frommsecs) end

    function EndThematicMusic() end

    ---@param volume integer
    function SetMusicVolume(volume) end

    ---@param millisecs integer
    function SetMusicPlayPosition(millisecs) end

    ---@param volume integer
    function SetThematicMusicVolume(volume) end

    ---@param millisecs integer
    function SetThematicMusicPlayPosition(millisecs) end