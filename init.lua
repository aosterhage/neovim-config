-- impatient should be loaded before anything else
local success, impatient = pcall(require, 'impatient')
if success then
  impatient.enable_profile()
end

require('keymaps')
require('options')

-- require plugins last so that if errors are encountered the rest of the configuration is loaded
require('plugins')
