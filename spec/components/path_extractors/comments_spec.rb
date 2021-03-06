require 'spec_helper'

describe name_from_filename do
    include_examples 'path_extractor'

    def results
        [
            '/stuff/here.php',
            '/stuff/here'
        ]
    end

    def text
        <<-HTML
            <!-- Blah blah: /stuff/here.php -->
            <!-- <style type="text/css"> stuff: here; </style> -->
            Blah blah...
            <!--Pre blah /stuff/here post blah -->
        HTML
    end

    easy_test
end
