class IndexController < ApplicationController
  def no_w
  end

  def w
    @chinese_title = ['羅', '彦', '章', '之', '網', '站', '。']
  end

  def w2
  end

  def w3
  end

  def w4
  end

  def w5
  end

  def w6
  end

  def w7
  end

  def w8
  end

  def w9
    month = Time.now.strftime("%m")
    chinese_months = ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十,一", "十,二"]
    month_index = month.to_i - 1
    chinese_month = chinese_months[month_index]

    day = Time.now.strftime("%d")
    chinese_days = ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十",
                    "十,一", "十,二", "十,三", "十,四", "十,五", "十,六", "十,七", "十,八", "十,九", "二,十",
                    "二,十,一", "二,十,二", "二,十,三", "二,十,四", "二,十,五", "二,十,六", "二,十,七", "二,十,八", "二,十,九", "三,十",
                    "三,十,一"]
    day_index = day.to_i - 1
    chinese_day = chinese_days[day_index]

    @date = "今,天,是,#{chinese_month},月,#{chinese_day},日,。"
    @message_1 = "「,甲,級,爭,取,者,」,是,我,2,0,0,9,年,創,作,的,一,部,漫,畫,。"
    @message_2 = "藝/術/復/活/,/現/光/榮/回/歸/,/原/作/版/本/回/到/互/聯/網/！"
    
    @date = @date.split(",")
    @h1_1 = '這/是/羅/彦/章/之/網/站/,'.split("/")
    @h1_2 = '真,的,歡,迎,你,來,到,參,觀,!!'.split(",")
    @message_1 = @message_1.split(",")
    @message_2 = @message_2.split("/")
  end

  def w10
  end

  def w11 # mewtwo
    characterToClass = {c: "clear", b: "black", w: "white", v: "very-light-purple", l: "light-purple", f: "faint-purple", n: "navy-purple", p: "purple", g: "grey-purple", s: "super-purple", h: "haku-purple", d: "dark-purple", x: "extreme-purple"}

    colorsString = 
    "ccccccccccccccccccccvvlllcccccccccllllcccccccccccccccccccccccccccccc" + 
    "cccccccccccccccccccclfffncccccccclfffflccccccccccccccppppppccccccccc" +
    "cccccccccccccccccccclfffflccccccclfffglccccccccccccppsssssspppcccccc" +
    "cccccccccccccccccccclffffnccccccclfgggpcccccccccccpssppbbppssspccccc" +
    "cccccccccccccccccccccffffflllnnnlffgglcccccccccccpsspbbccccbpssbcccc" +
    "ccccccccccccccccccccclfffllhfffflfgggnccccccccccpsspbccccccccbppbccc" + 
    "ccccccccccccccccccccclfflhhhhfflffgggbccccccccccsssbccccccccccbpbccc" + 
    "ccccccccccccccccccccclflhhhhhfffffgggbcccccccccpsspbccccccccccbppbcc" + 
    "cccccccccccccccccccccllhhhhhhffffggggbcccccccccpspbccccccccccccbpbcc" + 
    "ccccccccccccccccccccllfhhhhhfffffggggblccccccccdspbccccccccccccbpbcc" + 
    "ccccccccccccccccccccllhffffffffffgggggbcccccccpppbcccccccccccccbpbcc" +
    "cccccccccccccccccccclhhfffffhhfllgggggbnccccccdppbcccccccccccccbppbc" + 
    "ccccccccccccccccccccnhhffffhhhnflgggggbgncccccdppbccccccccccccbpppbc" + 
    "ccccccccccccccccccccnhgffghhfnwwwgggggnlgnccccdppbccccccccccccbpppbc" + 
    "ccccccccccccccccccccnglfflffbnswwgggggnllnccccdppbccccccccccccbppppb" + 
    "cccccccccccccccccccccnggfgflbslffggggnbllglcccdpppbcccccccccccbppppb" + 
    "cccccccccccccccccccccnlffffggggggggglncbllncccdpppbccccccccccbpppppb" + 
    "ccccccccccccccccccccccbffgggggggggnnnccbllbccccdppbccccccccccbpppppb" + 
    "ccccccccccccccccccccccbggglglllnnggbccbllbcccccdpppbcccccccccbpppppb" + 
    "cccccccccccccccccccccclblllbnnnlllbccblllbcccccdpppbcccccccccbppppbc" + 
    "ccccccccccccccccccccccccbbnbccnlllbcbbblbcccccccdpppbcccccccbpppppbc" + 
    "cccccccccccccccccccccccccllnnnlgllbbgggbbcccccccdpppbcccccccbpppppbc" + 
    "cccccccccccccccccccccccclffflllgffggggllbccccccccdpppbccccccbppppbcc" + 
    "ccccccccccccccccccccccclffffffffffggnbblbccccccccdpppbccccccbppppbcc" + 
    "ccccccccccccccccccccccnnffffgfffffgnlllbbccccccccdppppbccccccbppbccc" + 
    "ccccccccccccccccccccbblnfffgfffffgnlllllfblcccccccdpppbcccccccbbcccc" + 
    "cccccccccccccccccclbgglnffgfgffffgnlnlllffbbccccccdppppbcccccccccccc" + 
    "cccccccccccccccclbffgllnfflflffggblnnnnlffffbbbcccdbbppbcccccccccccc" + 
    "ccccclnnccccllnnfffggnncnflglggglblbcccbbbfffffbcnffgbpbcccccccccccc" + 
    "cccllggglnnnffffffnnnccccnlllnnnnlbcccccccbfffffnnfffnpbcccccccccccc" + 
    "clnnnlfffffffffgbnnccccccbggggllllbccccccnnbffnngggfgnpbcccccccccccc" + 
    "lffgffffffffgbnbcccccccccbffgllllbcccccclffgnngggglllbpbcccccccccccc" + 
    "ngfflnffffffbcccccccccccbgffglllllbcccccnfffggggllnnnppbcccccccccccc" + 
    "ngggnlnlffgbccccccccccccbgpppglllllbccccnfffgglllllnpppbcccccccccccc" + 
    "cnnncnnfgglbccccccccccnnbpssspgllnnglbccbgglbblllllnpppbcccccccccccc" +
    "ccccnffglnnccccccccccnffpxxsssplngffglbcclnbddblnlgfnppbcccccccccccc" + 
    "ccccbffglnnccccccccclffpxxxssssnfffffglbdddppppbbgfffnbccccccccccccc" + 
    "ccccbggbccccccccccclfffpxxxssssnffffffllbpppppppngfffnbccccccccccccc" + 
    "cccccbbcccccccccccclfffpxxssssnfffffffllbppppppppnggnpbccccccccccccc" + 
    "cccccccccccccccccclffffpssssssnffffffflllbppppppppnnppcccccccccccccc" + 
    "cccccccccccccccccclffffpssssssnffffffglllbpppppppppppbcccccccccccccc" + 
    "cccccccccccccccccclffffpssssspbffffffgllllbpppppppppbccccccccccccccc" + 
    "ccccccccccccccccccclffgpsssssppbffffglllllbppppppppbcccccccccccccccc" + 
    "cccccccccccccccccccbggllpppppppblgglllllllbpppppppbccccccccccccccccc" + 
    "cccccccccccccccccccclllldpppppppblllllllllbpppppbbcccccccccccccccccc" + 
    "ccccccccccccccccccccnllllddppppppbllllllllbppbbbcccccccccccccccccccc" + 
    "cccccccccccccccccccccnllllldddppppblllllllbbbccccccccccccccccccccccc" + 
    "ccccccccccccccccccccccnllllbccdddddbnllllllbcccccccccccccccccccccccc" + 
    "ccccccccccccccccccccccnllllncccccddddbnllllbcccccccccccccccccccccccc" + 
    "cccccccccccccccccccccccbgllncccccccccccbllllbccccccccccccccccccccccc" + 
    "cccccccccccccccccccccccbgglnccccccccccccblllbccccccccccccccccccccccc" + 
    "ccccccccccccccccccccccngggnccccccccccccccbllbccccccccccccccccccccccc" + 
    "ccccccccccccccccccccccngggnccccccccccccccblllbcccccccccccccccccccccc" + 
    "cccccccccccccccccccccnggggbcccccccccccccccbllbcccccccccccccccccccccc" + 
    "ccccccccccccccccccccngffglncccccccccccccccbllbcccccccccccccccccccccc" + 
    "ccccccccccccccccccclfffflggbcccccccccccccbgglbcccccccccccccccccccccc" + 
    "cccccccccccccccclllffffgnggbccccccccccccbgggglbccccccccccccccccccccc" + 
    "ccccccccccccccllggffffggbbbcccccccccccccbglgglnccccccccccccccccccccc" + 
    "cccccccccccccnggnlfffggbccccccccccccccccbbgggllncccccccccccccccccccc" + 
    "cccccccccccccngnfffgggbcccccccccccccccccbggggglncccccccccccccccccccc" + 
    "ccccccccccccccbbgggggncccccccccccccccccbgffgggffnccccccccccccccccccc" + 
    "ccccccccccccccccbbbbncccccccccccccccccbgffflgffffncccccccccccccccccc" + 
    "ccccccccccccccccccccccccccccccccccccccbgfffbgfffgbcccccccccccccccccc" + 
    "cccccccccccccccccccccccccccccccccccccccbggbcbgggbccccccccccccccccccc" + 
    "ccccccccccccccccccccccccccccccccccccccccbbcccbbbcccccccccccccccccccc"

    @colorsArray = []
    colorsString.each_byte do |byte|
      @colorsArray << characterToClass[byte.chr.to_sym]
    end
  end

  def afighters
  end

end
