class IndexController < ApplicationController
  def no_w
    redirect_to index_path
  end

  def index
    @chinese_title = ['羅', '彦', '章', '之', '網', '站', '。']
  end

  def experiments
    get_chinese_title
    get_mewtwo
  end

  private
    def get_chinese_title
      month = Time.now.strftime("%m")
      chinese_months = ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"]
      month_index = month.to_i - 1
      chinese_month = chinese_months[month_index]

      day = Time.now.strftime("%d")
      chinese_days = ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十",
                      "十一", "十二", "十三", "十四", "十五", "十六", "十七", "十八", "十九", "二十",
                      "二十一", "二十二", "二十三", "二十四", "二十五", "二十六", "二十七", "二十八", "二十九", "三十", "三十一"]
      day_index = day.to_i - 1
      chinese_day = chinese_days[day_index]

      @date = "今天是#{chinese_month}月#{chinese_day}日。"
      @message_1 = "「甲級爭取者」是我2009年創作的一部漫畫。"
      @message_2 = "藝術復活,現光榮回歸,原作版本回到互聯網！"

      @date = @date.split('')
      @h1_1 = '這是羅彦章之網站,'.split('')
      @h1_2 = '真,的,歡,迎,你,來,到,參,觀,!!'.split(",")
      @message_1 = @message_1.split('')
      @message_2 = @message_2.split('')
    end

    def get_mewtwo # mewtwo
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

end
