class PickleController < ApplicationController
    def parmesan
        @food_list = [
            "짜장면",
            "짬뽕",
            "탕수육",
            "된장찌개",
            "일식라면",
            "통닭"
            ]
        @iwantthisfood = @food_list .sample
        @image_file_name = @iwantthisfood + ".jpg"
    end
end
