
require 'fileutils'

module Helpers

    def take_screenshot(name)
        name = name.gsub(/\s+/,'_').tr('/','_')
        name = name.gsub(',','')
        name = name.gsub('(','')
        name = name.gsub(')','')
        name = name.gsub('#','')
        screenshot = 'results/screenshots/' + name + '.png'
        page.save_screenshot(screenshot.downcase!)
        embed(screenshot, 'image/png','Click here to see the print')
    end
end
