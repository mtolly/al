-----------------------------------------------------------------------------
-- |
-- Copyright   : (C) 2015 Dimitri Sabadie
-- License     : BSD3
--
-- Maintainer  : Dimitri Sabadie <dimitri.sabadie@gmail.com>
-- Stability   : experimental
-- Portability : portable
----------------------------------------------------------------------------

module Sound.ALC.Device where

import Sound.AL.Types
import Sound.ALC.Types

foreign import CALLCV "alcOpenDevice" alcOpenDevice :: ALubyte -> IO (Ptr ALCdevice)
foreign import CALLCV "alcCloseDevice" alcCloseDevice :: Ptr ALCdevice -> IO ()