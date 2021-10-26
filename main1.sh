#jd_fruit|jd_pet|jd_plantBean|jd_dreamFactory|jd_jdfactory|jd_jdzz|jd_crazy_joy|jd_jxnc|jd_bookshop|jd_cash|jd_sgmh|jd_cfd|jd_health|jd_delCoupon
#东东农场|东东萌宠|京东种豆得豆|京喜工厂|东东工厂|京东赚赚|crazyJoy任务|京喜农场|口袋书店|签到领现金|闪购盲盒|京喜财富岛|东东健康社区|删除优惠券
#bean_change
#资产通知

#-------------
#添加更新仓库建议cron : 0,30 */1 * * *
#每半小时更新一次

#添加zero205大佬的以上项目（删除优惠券除外）（有助力池，本仓库已配置好）
ql repo https://ghproxy.com/https://github.com/zero205/JD_tencent_scf.git "bean_change|jd_fruit|jd_pet|jd_plantBean|jd_dreamFactory|jd_jdfactory|jd_jdzz|jd_crazy_joy|jd_jxnc|jd_bookshop|jd_cash|jd_sgmh|jd_cfd|jd_health|getJDCookie" "backUp|icon" "^jd[^_]|USER|sendNotify|sign_graphics_validate|JDJR" "main"


#拉取gys619大佬库，过滤删除优惠券，无农场牧场工厂，用zero205大佬的资产变动，（有禁用重复任务脚本：jd_disable.py，有检测CK是否有效）
ql repo https://github.com/gys619/jdd.git "jd_|jx_|jddj_|gua_|jddj_|getJDCookie|wskey" "activity|backUp|bean_change|jd_delCoupon|jd_fruit|jd_pet|jd_plantBean|jd_dreamFactory|jd_jdfactory|jd_jdzz|jd_crazy_joy|jd_jxnc|jd_bookshop|jd_cash|jd_sgmh|jd_cfd|jd_health" "^jd[^_]|USER|utils|ZooFaker_Necklace|JDJRValidator_Pure|sign_graphics_validate|jddj_cookie|function|ql"


#添加yuannan1112大佬的库，过滤删除优惠券，无农场牧场工厂，用zero205大佬的资产变动
ql repo https://hub.fastgit.org/yuannian1112/jd_scripts.git "jd_|jx_|getJDCookie" "bean_change|jd_delCoupon|jd_fruit|jd_pet|jd_plantBean|jd_dreamFactory|jd_jdfactory|jd_jdzz|jd_crazy_joy|jd_jxnc|jd_bookshop|jd_cash|jd_sgmh|jd_cfd|jd_health|activity|backUp" "^jd[^_]|USER|utils"

#smiek2221开卡库：#国外鸡：
# ql repo https://github.com/smiek2221/scripts.git "jd_|gua_" "" "ZooFaker_Necklace.js|JDJRValidator_Pure.js|sign_graphics_validate.js"
#国内鸡：
ql repo https://ghproxy.com/github.com/smiek2221/scripts.git "jd_|gua_" "" "ZooFaker_Necklace.js|JDJRValidator_Pure.js|sign_graphics_validate.js"

#所需部分环境安装
#命令行进入容器：docker exec -it qinglong bash
#输入如下命令
npm install -g png-js
npm install -g date-fns
npm install -g axios
npm install -g crypto-js
npm install -g ts-md5
npm install -g tslib
npm install -g @types/node
npm install -g requests
npm install -g jsdom

#---------青龙部分命令
# ql repo <repourl> <path> <blacklist> <dependence> <branch>
# 对应意思 “库地址” “拉哪些” “不拉哪些” “依赖文件” “分支”

#部分单一脚本的自行添加，脚本所需环境变量，不知道如何配置查看脚本配置说明


#ninja安装 #如需要请打开该库看如何配置
git clone https://ghproxy.com/https://github.com/shufflewzc/Waikiki_ninja.git /ql/ninja
cd /ql/ninja/backend
pnpm install 
pm2 start







