return {
'goolord/alpha-nvim',
      dependencies = {
        'nvim-tree/nvim-web-devicons',
      },
      config = function()
        local alpha = require 'alpha'
        local dashboard = require('alpha.themes.dashboard')
        --local dashboard = require("alpha.themes.startify")
        _Gopts = {
          position = 'center',
          hl = 'Type',
          wrap = 'overflow',
        }

        -- DASHBOARD HEADER
        local function getGreeting(name)
          local tableTime = os.date '*t'
          local datetime = os.date ' %Y-%m-%d-%A   %H:%M:%S '
          local hour = tableTime.hour
          local greetingsTable = {
            [1] = '  Sleep well',
            [2] = '  Good morning',
            [3] = '  Good afternoon',
            [4] = '  Good evening',
            [5] = '󰖔  Good night',
          }
          local greetingIndex = 0
          if hour == 23 or hour < 7 then
            greetingIndex = 1
          elseif hour < 12 then
            greetingIndex = 2
          elseif hour >= 12 and hour < 18 then
            greetingIndex = 3
          elseif hour >= 18 and hour < 21 then
            greetingIndex = 4
          elseif hour >= 21 then
            greetingIndex = 5
          end
          return datetime .. '  ' .. greetingsTable[greetingIndex] .. ', ' .. name
        end
        --
        -- Daddy, where do logos come from?
        -- https://patorjk.com/software/taag/#p=testall&f=BlurVision%20ASCII&t=NeoVim
        --
        local logo_table = {
        [[


                                              
       ████ ██████           █████      ██
      ███████████             █████ 
      █████████ ███████████████████ ███   ███████████
     █████████  ███    █████████████ █████ ██████████████
    █████████ ██████████ █████████ █████ █████ ████ █████
  ███████████ ███    ███ █████████ █████ █████ ████ █████
 ██████  █████████████████████ ████ █████ █████ ████ ██████

      ]],
      [[

                                                                                                                    
                                                                                                                    
NNNNNNNN        NNNNNNNN                                  VVVVVVVV           VVVVVVVV iiii                          
N:::::::N       N::::::N                                  V::::::V           V::::::Vi::::i                         
N::::::::N      N::::::N                                  V::::::V           V::::::V iiii                          
N:::::::::N     N::::::N                                  V::::::V           V::::::V                               
N::::::::::N    N::::::N    eeeeeeeeeeee       ooooooooooo V:::::V           V:::::Viiiiiii    mmmmmmm    mmmmmmm   
N:::::::::::N   N::::::N  ee::::::::::::ee   oo:::::::::::ooV:::::V         V:::::V i:::::i  mm:::::::m  m:::::::mm 
N:::::::N::::N  N::::::N e::::::eeeee:::::eeo:::::::::::::::oV:::::V       V:::::V   i::::i m::::::::::mm::::::::::m
N::::::N N::::N N::::::Ne::::::e     e:::::eo:::::ooooo:::::o V:::::V     V:::::V    i::::i m::::::::::::::::::::::m
N::::::N  N::::N:::::::Ne:::::::eeeee::::::eo::::o     o::::o  V:::::V   V:::::V     i::::i m:::::mmm::::::mmm:::::m
N::::::N   N:::::::::::Ne:::::::::::::::::e o::::o     o::::o   V:::::V V:::::V      i::::i m::::m   m::::m   m::::m
N::::::N    N::::::::::Ne::::::eeeeeeeeeee  o::::o     o::::o    V:::::V:::::V       i::::i m::::m   m::::m   m::::m
N::::::N     N:::::::::Ne:::::::e           o::::o     o::::o     V:::::::::V        i::::i m::::m   m::::m   m::::m
N::::::N      N::::::::Ne::::::::e          o:::::ooooo:::::o      V:::::::V        i::::::im::::m   m::::m   m::::m
N::::::N       N:::::::N e::::::::eeeeeeee  o:::::::::::::::o       V:::::V         i::::::im::::m   m::::m   m::::m
N::::::N        N::::::N  ee:::::::::::::e   oo:::::::::::oo         V:::V          i::::::im::::m   m::::m   m::::m
NNNNNNNN         NNNNNNN    eeeeeeeeeeeeee     ooooooooooo            VVV           iiiiiiiimmmmmm   mmmmmm   mmmmmm
        ]],
        [[

░▒▓███████▓▒░░▒▓████████▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓██████████████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░     ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓██████▓▒░   ░▒▓██▓▒░  ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░ 
                                                                               
                                                                               

        ]],
        [[
 _   _            _   _ _           
| \ | |          | | | (_)          
|  \| | ___  ___ | | | |_ _ __ ___  
| . ` |/ _ \/ _ \| | | | | '_ ` _ \ 
| |\  |  __/ (_) \ \_/ / | | | | | |
\_| \_/\___|\___/ \___/|_|_| |_| |_|
            


        ]],
        [[

     .-') _   ('-.                     (`-.           _   .-')    
    ( OO ) )_(  OO)                  _(OO  )_        ( '.( OO )_  
,--./ ,--,'(,------. .-'),-----. ,--(_/   ,. \ ,-.-') ,--.   ,--.)
|   \ |  |\ |  .---'( OO'  .-.  '\   \   /(__/ |  |OO)|   `.'   | 
|    \|  | )|  |    /   |  | |  | \   \ /   /  |  |  \|         | 
|  .     |/(|  '--. \_) |  |\|  |  \   '   /,  |  |(_/|  |'.'|  | 
|  |\    |  |  .--'   \ |  | |  |   \     /__),|  |_.'|  |   |  | 
|  | \   |  |  `---.   `'  '-'  '    \   /   (_|  |   |  |   |  | 
`--'  `--'  `------'     `-----'      `-'      `--'   `--'   `--' 
        

        ]],
        [[


      ___           ___           ___           ___                       ___     
     /\__\         /\  \         /\  \         /\__\          ___        /\__\    
    /::|  |       /::\  \       /::\  \       /:/  /         /\  \      /::|  |   
   /:|:|  |      /:/\:\  \     /:/\:\  \     /:/  /          \:\  \    /:|:|  |   
  /:/|:|  |__   /::\~\:\  \   /:/  \:\  \   /:/__/  ___      /::\__\  /:/|:|__|__ 
 /:/ |:| /\__\ /:/\:\ \:\__\ /:/__/ \:\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\
 \/__|:|/:/  / \:\~\:\ \/__/ \:\  \ /:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  /
     |:/:/  /   \:\ \:\__\    \:\  /:/  /   |:|__/:/  /  \::/__/           /:/  / 
     |::/  /     \:\ \/__/     \:\/:/  /     \::::/__/    \:\__\          /:/  /  
     /:/  /       \:\__\        \::/  /       ~~~~         \/__/         /:/  /   
     \/__/         \/__/         \/__/                                   \/__/    


        ]],
        [[



 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ 
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   
         ░    ░  ░    ░ ░        ░   ░         ░   
                                ░                  



        ]],
        [[


                                                 
 _______ _______ _______ _______ _______ _______ 
|\     /|\     /|\     /|\     /|\     /|\     /|
| +---+ | +---+ | +---+ | +---+ | +---+ | +---+ |
| |   | | |   | | |   | | |   | | |   | | |   | |
| |N  | | |e  | | |o  | | |V  | | |i  | | |m  | |
| +---+ | +---+ | +---+ | +---+ | +---+ | +---+ |
|/_____\|/_____\|/_____\|/_____\|/_____\|/_____\|
                                                 


        ]],
        [[



===================================================
=  =======  ================  ====  ===============
=   ======  ================  ====  ===============
=    =====  ================  ====  ===============
=  ==  ===  ===   ====   ===  ====  ==  ==  =  = ==
=  ===  ==  ==  =  ==     ==   ==   ======        =
=  ====  =  ==     ==  =  ===  ==  ===  ==  =  =  =
=  =====    ==  =====  =  ===  ==  ===  ==  =  =  =
=  ======   ==  =  ==  =  ====    ====  ==  =  =  =
=  =======  ===   ====   ======  =====  ==  =  =  =
===================================================


        ]],
        [[



_____   __          ___    ______            
___  | / /____________ |  / /__(_)______ ___ 
__   |/ /_  _ \  __ \_ | / /__  /__  __ `__ \
_  /|  / /  __/ /_/ /_ |/ / _  / _  / / / / /
/_/ |_/  \___/\____/_____/  /_/  /_/ /_/ /_/ 
                                             


        ]],
        [[



 ____     ___   ___   __ __  ____  ___ ___ 
|    \   /  _] /   \ |  T  |l    j|   T   T
|  _  Y /  [_ Y     Y|  |  | |  T | _   _ |
|  |  |Y    _]|  O  ||  |  | |  | |  \_/  |
|  |  ||   [_ |     |l  :  ! |  | |   |   |
|  |  ||     Tl     ! \   /  j  l |   |   |
l__j__jl_____j \___/   \_/  |____jl___j___j
                                           



        ]],

        }
        -- seed the random number generator
        math.randomseed(os.time())
        --        
     
        local logo = logo_table[math.random(#logo_table)]
        dashboard.section.header.val = vim.split(logo, '\n')
        --[[
        --
        -- this is not working right now
        local userName = 'Gerbs'
        local greeting = getGreeting(userName)
        local marginBottom = 0
        dashboard.section.header.val = vim.split(logo, '\n')
        -- Split logo into lines
        local logoLines = {}
        for line in logo:gmatch '[^\r\n]+' do
          table.insert(logoLines, line)
        end
        -- this block doesnt appear to be in use. commenting out.
        
        -- Calculate padding for centering the greeting
        local logoWidth = logo:find '\n' - 1 -- Assuming the logo width is the width of the first line
        local greetingWidth = #greeting
        local padding = math.floor((logoWidth - greetingWidth) / 2)

        -- Generate spaces for padding
        local paddedGreeting = string.rep(' ', padding) .. greeting

        -- Add margin lines below the padded greeting
        local margin = string.rep('\n', marginBottom)

        -- Concatenate logo, padded greeting, and margin
        local adjustedLogo = logo .. '\n' .. paddedGreeting .. margin
        --]]
        dashboard.section.buttons.val = {
            dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
            dashboard.button('f', '  Find file', ':cd $HOME | silent Telescope find_files hidden=true no_ignore=true <CR>'),
            dashboard.button('t', '  Find text', ':Telescope live_grep <CR>'),
            dashboard.button('r', '󰄉  Recent files', ':Telescope oldfiles <CR>'),
            dashboard.button('u', '󱐥  Update plugins', '<cmd>Lazy update<CR>'),
            dashboard.button('c', '  Settings', ':e $HOME/.config/nvim/init.lua<CR>'),
            dashboard.button('p', '  Projects', ':e $HOME/src <CR>'),
            dashboard.button('d', '󱗼  Documents', ':e $HOME/Documents <CR>'),
            dashboard.button('q', '󰿅  Quit', '<cmd>qa<CR>'),
        }

        -- local function footer()
        -- 	return "Footer Text"
        -- end

        -- dashboard.section.footer.val = vim.split('\n\n' .. getGreeting 'Lazy', '\n')

        vim.api.nvim_create_autocmd('User', {
          pattern = 'LazyVimStarted',
          desc = 'Add Alpha dashboard footer',
          once = true,
          callback = function()
            local stats = require('lazy').stats()
            local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
            dashboard.section.footer.val = { ' ', ' ', ' ', ' Loaded ' .. stats.count .. ' plugins  in ' .. ms .. ' ms ' }
            dashboard.section.header.opts.hl = 'DashboardFooter'
            pcall(vim.cmd.AlphaRedraw)
          end,
        })

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
      end,
}
