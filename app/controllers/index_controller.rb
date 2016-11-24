class IndexController < ApplicationController
  def no_w
    redirect_to index_path
  end

  def index
    get_chinese_title
    get_mewtwo
  end

  def jesus
    all_images = [
      ['https://jesusmanga.files.wordpress.com/2016/07/1.png', 'https://jesusmanga.files.wordpress.com/2016/07/2.png', 'https://jesusmanga.files.wordpress.com/2016/07/3.png', 'https://jesusmanga.files.wordpress.com/2016/07/4.png', 'https://jesusmanga.files.wordpress.com/2016/07/5.png', 'https://jesusmanga.files.wordpress.com/2016/07/6.png', 'https://jesusmanga.files.wordpress.com/2016/07/7.png', 'https://jesusmanga.files.wordpress.com/2016/07/8.png', 'https://jesusmanga.files.wordpress.com/2016/07/9.png', 'https://jesusmanga.files.wordpress.com/2016/07/10.png', 'https://jesusmanga.files.wordpress.com/2016/07/11.png', 'https://jesusmanga.files.wordpress.com/2016/07/12.png', 'https://jesusmanga.files.wordpress.com/2016/07/13.png', 'https://jesusmanga.files.wordpress.com/2016/07/14.png', 'https://jesusmanga.files.wordpress.com/2016/07/151.png', 'https://jesusmanga.files.wordpress.com/2016/07/16.png'],
      ['https://jesusmanga.files.wordpress.com/2016/07/17.png', 'https://jesusmanga.files.wordpress.com/2016/07/18.png', 'https://jesusmanga.files.wordpress.com/2016/07/19.png', 'https://jesusmanga.files.wordpress.com/2016/07/20.png', 'https://jesusmanga.files.wordpress.com/2016/07/21.png', 'https://jesusmanga.files.wordpress.com/2016/07/22.png', 'https://jesusmanga.files.wordpress.com/2016/07/231.png', 'https://jesusmanga.files.wordpress.com/2016/07/24.png', 'https://jesusmanga.files.wordpress.com/2016/07/251.png'],
      ['https://jesusmanga.files.wordpress.com/2016/08/1.png', 'https://jesusmanga.files.wordpress.com/2016/08/2.png', 'https://jesusmanga.files.wordpress.com/2016/08/3.png', 'https://jesusmanga.files.wordpress.com/2016/08/4.png', 'https://jesusmanga.files.wordpress.com/2016/08/5.png', 'https://jesusmanga.files.wordpress.com/2016/08/6.png', 'https://jesusmanga.files.wordpress.com/2016/08/7.png', 'https://jesusmanga.files.wordpress.com/2016/08/8.png', 'https://jesusmanga.files.wordpress.com/2016/08/9.png', 'https://jesusmanga.files.wordpress.com/2016/08/10.png', 'https://jesusmanga.files.wordpress.com/2016/08/11.png', 'https://jesusmanga.files.wordpress.com/2016/08/12.png']
    ]

    @last_chapter = all_images.size
    @current_chapter = [params[:chapter].to_i, 1].max
    if @current_chapter > @last_chapter
      redirect_to jesus_path(chapter: @last_chapter)
    end
    @is_at_last_chapter = @current_chapter == @last_chapter
    @is_at_first_chapter = @current_chapter == 1
    @this_chapter_images = all_images[@current_chapter - 1]
    @next_chapter = @current_chapter + 1
    @previous_chapter = @current_chapter - 1
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
