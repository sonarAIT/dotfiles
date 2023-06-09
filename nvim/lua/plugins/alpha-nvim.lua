return {
	'cameron-wags/splash.nvim',
	lazy = true,
	event = 'BufWinEnter',
	config = function()
		vim.cmd("highlight StatusLine guibg=NONE ctermbg=NONE")
		require("splash").setup {
			text = {
				[[ MMMMMMMMMMMMMMMMMMMMMMMMMBWHUVOOOTUHMMMMMMMMMMMMMMMMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMMMMMMMMBUUOOOz<<<<<?zlltrZUUUMMMMMMMMMMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMMMMMM6<<<~~11<_~;;+zlz<<<<<1zOOZHMMMMMMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMMMEC<~.~__(+zz+_~<1wwOz+_._<><<<<vHMMMMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMB6<<~~.~(+zzOrtzz+zzZz<<<_~_~~~~~_<?7TMMMMMMMMM ]],
				[[ MMMMMMMMMMMME<<<~____:1tOz<<1wXwXI_-_~<<_...._.___<vMMMMMMMM ]],
				[[ MMMMMMMMMM#=~_.(<<(+<<zrOv<<+wVI<<<< ``_~...````.._~<?WMMMMM ]],
				[[ MMMMMMMMM#3:~_-<zOl=1zl<<<__<zz~_._``````.`````````...?WMMMM ]],
				[[ MMMMMMM#6+<__(+zwO1zOO1<__.`~___````````````````````..`(WMMM ]],
				[[ MMMMMMMSzOz_+yOOO1+zz<_~__...```` `  _` ` ````` `````  `JMMM ]],
				[[ MMMMM#OzzI1zw0z<<<+<_ ``-_```````  `  `  ` `` `` ```````(WMM ]],
				[[ MMMM#1<<<<+zO>______ ```` ````` `` `` `` `   `  ` `  ````(WM ]],
				[[ MMM#3___. _~~~...`````````` ````` ` `` `` ` ` `  ` `  ````?M ]],
				[[ MMMb..````....`````````  ``````` `````` ```` ` `  `   `   (d ]],
				[[ MMMb....````````````````````````````````````` ``` ` `` ```.d ]],
				[[ MMMb_.```````````````... ``.`.```` -_..```````` ``  ` `` ` J ]],
				[[ MMMb_``````````````` ~~~_`._____--__:_......`.  `  `   `   J ]],
				[[ MMMP.````` ``````.-__(:___(<>;<<<<;;:~........~~-` `` ` `` d ]],
				[[ MMMb~-```   ``.--__:::<<;;;>>????><<~~_______(((_-` `` `  .d ]],
				[[ MMMP_``  ` ` -_(:~__..~~~~::>????>;:+<;?????????1<.`  ` `` d ]],
				[[ MMMb-`  ` ` -(;;:_-((++<<<;;;>>>>>;;;<<<~~___<<1=z_-  ` .-.J ]],
				[[ MMMNr```  ` (zzz=??++<<<<<;;;>1=?>>;__---((++++?==z_  .(_~~J ]],
				[[ MMMMb-```  .jrOz<<_...  ._;>>?ll=?>>>;;;>>???===l==<_ _<><~d ]],
				[[ MMMMMNr``  -zXz++(<<<;;:(<>?=ztl=???>????=======lll<_-_:;<+d ]],
				[[ MMMMMMP-   (dWWWkOz?>>++1===lOrrl=????==lllllllllllz_(>+1zdM ]],
				[[ MMMMMMNe-_ (WkpfyXkwOttlllltwwuzOl==???===llllttttlz?==lwwdM ]],
				[[ MMMMMMMMNs_(WkpWHqbyXttlz1OzuuXrttlllz>>??==llltttl=?==OdMMM ]],
				[[ MMMMMMMMMNo+XkbqHHUVOO=?>+OZOvzllz<<1z>>>>>?=lltrttz?zwdMMMM ]],
				[[ MMMMMMMMMMHkwWWHWVOl==?>>>+<<<<1=<<(<;>??>>>?lltrtlzjdMMMMMM ]],
				[[ MMMMMMMMMNWVwyXUZl==??>>??;<((:;>;>;>??==?>;?=ltrtlldMMMMMMM ]],
				[[ MMMMMMMMMMNXzX0Ol===??>>?????>;;;;<<<<<<<<;>1lltttOqMMMMMMMM ]],
				[[ MMMMMMMMMMMNRZXrl===?>>>?<<<<~~:::~__(_` (+1=lltrtdMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMNkrl====?;<~__(((++1+++z<~_(+==llttlldMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMM#rtll===?<_._+zOwrrXZz<<<+=ll=lllll=dMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMMNmOll===???+<(;;+??>>>+1llll=llll===dMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMMMMNmyz========1+11?===ll====l==l====dMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMMMMMMNkl==================llll=======dMMMMMMMMM ]],
				[[ MMMMMMMMMMMMMMMMMMM#O================llll===?=?====wTMMMMMMM ]],
				[[ MMMMMMMMMMMMMMMMMMMNwl========lllllllll==???=?===lllldMMMMMM ]],
				[[ MMMMMMMMMMMMMMMMMMMNkO=====lllllltllz1<>??======ltttldMMMMMM ]],
				[[ MMMMMMMMMMMMMMMMMMMNHkOll====?11<<<<:;+1======lltttttzdMMMMM ]],
				-- [[ M#NNN#MH@@@H@MHHqqHqkkkkkbkbkkkbbbkbffVVyyyyyWyZyZZZZZZZZuZZuZZZZZZZuuZZZZu ]],
				-- [[ M#NNN#MH@@@HH@HgmmHqqkkkkkkkkbbbbkkbpfVVVVyVWXyyZyZZZZZZuZZZZZZZZZZZuZZZZuZ ]],
				-- [[ MNNN##H@@@HH@@@gmmHmqqkkqqqkkkkkqqkbpffffVVkkyyyyyyZZZZZZZZZXXZZZZZZZZZZZZZ ]],
				-- [[ HHMMMMMH@@HHHHMgggHmqqqqqqqqkqkUYY77"TUfffffHVyyyyyZyZZZZZZWHMmkZZZZZZZZZZZ ]],
				-- [[ #NNMMM@@@@@@@@@ggHgmmqkqqqqHY=~-___  `` ?4fWWVVyyyZZyZZZXqHHHHHMHHRZZyZZZZZ ]],
				-- [[ NNMMN#HH@M#HMM@@@mggmmmmq#=-.___<~_. ``  `(UVVyyyyyyZyXHMMHMHHMHHHHZZZyZZZZ ]],
				-- [[ MMMMNHHMM@HHZUW@@H@gggmB=_<_~ _. _~_~`._`. .CVVVyyyyyyHMHkHg@ggqkHZZZZZZyZZ ]],
				-- [[ NNMMNHMHHHXVwy@@HggggH$>_<_____``   .  . _`. jyVVyyyyy0WHWg@@gqqHyZyyyZZZZZ ]],
				-- [[ NNNMMH#XAwwWWX@@H@ggmK~__.._.`. `````-` `` `  OWVyyQUGdXHqmggmqHyZZyZZyZZZZ ]],
				-- [[ ####HHNXVfWQH@@@Hggmm$~-._:__ _ ..   ``   ````(VyXHyyyyZWkkqqqqHyZZyZZZyZZZ ]],
				-- [[ HHH#HHHXXVyH@@@gHggmqHe+.(?<.``..``` ` `  ` ` dVVyyyyyyyWWqm@@gmkZyyyyZZZZZ ]],
				-- [[ ####HHHHVfVM@@@Hggmmqmgk1zrz<lzwwi.. ` ...i``JVVVyyyyZyyZWkqg@@gHZyZZZyZZyZ ]],
				-- [[ HHHHMM@#fpfMH@gHgmmmqmmHwsZw+zwuXXX;..UOzvO .fVVyyyyZyZyyyWHgHH@gkZZZZZZZZZ ]],
				-- [[ NN##HHHHVpfW@@gHgmmqqqqMM#MNQmmQmmQU0wzGdk'`.VyyyyyZyyZZyyWWH@g@@HkZZZZZZZZ ]],
				-- [[ MN##H@@HyfpfW@HmmqmkqqqHHMHMM@HMHMZZuudwXk+(JdyyyyZZZZyZZZZWWH@@@@NXZZZZZuZ ]],
				-- [[ @@@@@@@HVpppWgHqqkkkqkkmmHMMHHMHHMXZXWZyVXXwXHHKyZZZZZZZZZZXfHH@@@@HXZZZZZu ]],
				-- [[ @@@@@@@#XfppWWkqkkkkHHNMHmggMMHHHHMHH0uyVyyVyVWNNkZZZZZZZuZZVWHH@@@@HXZuZuu ]],
				-- [[ @@@@ggmHXffWUdMNMM#MNMMMHHgg@@@M@@HuZzXyVVVVWMNNNMMMNmgmkuuuXVpHH@@@gHZuZuu ]],
				-- [[ H@ggmqqmkWfSvMMMMHMMMMMHMM@MNHMHMNzX0wXWXVWMNNM#NNNNMNNMMMMNmVfpqH@ggHHuuuu ]],
				-- [[ wOXWBWqqNZWVVWHMMMHM@MMMMMMMMHMMHHHggQgHMNNMMMMNNM#NNNMNMMMNNHfpkqggggmRuuu ]],
				-- [[ OOO+=XqkkkkkWXHMM@MMM@@M@M@MMHM@M@@@HH#MN#HHHMM#MNMMMMM#NNNMNNfpbkm@gmmqXuu ]],
				-- [[ ;;<1zWHkkbbppWpMHM@@M@@@@M@M###HM@@@@@HHMHHHHMMMMHMM@MM#HMNNNNfpbkqmgmqkRzu ]],
				-- [[ ::;;;>>+OTWpWfffWMMMHM@M@HHMM#NNMHH@HHH@MHHHHMMHHHHM@@MHHH##NMWfbbWqmmqkkzz ]],
				-- [[ ;;;;>>>>>>>?1vUfffVVyVVWH@HM@@MMMNNMMMM#NNMMMHH@HHH#@HMHHMMMMMHVppkqmmmkKuz ]],
				-- [[ >?>?>>>>>>>>>>>zffVyyyyVW@HM@@@@@MMMMMMM@@@HH@H@HH@H@MMHMgMMMNfVVfpkkqmqHXz ]],
				-- [[ =?=?????>>>>>>>>WVyVyyyyWHHM@@@@@@@gg@@@@@HHHH@MHH@M@M@ggMMHMWpVyVfWbqqkkkz ]],
				-- [[ l===1z=?????>>>?XVyyyyyyXMH@@H@@@@g@@@@@@@HHM@MHHH@MM@gg@MqHNwWVyyyypkqkHUz ]],
				-- [[ llll=zll==???>>?dHHkWyyyyMHHH@@@@g@g@@@@@@H@@HHHH@@@@HqHHHpHMwzuXyZZUWUUXvv ]],
				-- [[ lll=====????????dHHHHMkyZWHHHH@@@@@g@g@@@@@@MHH@@@@@@@HkkXUHHwXuXXWWSzzzzvv ]],
				-- [[ Nz===???????????dMMMHHHHNkMMMHH@@@gggg@@@@HHH@@@H@@@@@gHHzvvdMNH@HH0vvvvvvv ]],
				-- [[ M<<<<>>>???=====vWeZHMHHHM#NkWM@@gggggg@MHHH@@@@@@@gg@@gHMHmmwwUXvvvvvvvvvr ]],
				-- [[ #z-_~~<<>>?=====l<+v9myTMMMMMM9VWHHqHgHM@@@@@@@@@ggmgg@HfpHHHMMHmyvvvrvrrvv ]],
				-- [[ HkwOz-_(JT2<???=t<<+<<1wwywTMHHNgXWWWWkHg@gHg@ggHmqmmgHWffVVVWWHHMMHmAwvrrr ]],
				-- [[ H@HkkwAK-($<<<>?l~ ~zvVOOVOV==ZWM@@HkWWkHHWHHHWWHkkHqqHVVVXVyyyVVWWMMHggmmy ]],
				-- [[ MMHMMHWkWSo-_~<<1:  - `___~~(l====TH@@NmXWUUZZyWWWyVWbHyyyyyyyyZZZySXUWMMH@ ]],
				-- [[ HHH#HMHHkWWkks-_<1-.. .- ((+&gggQHMHHHMwQmmJCuuuu0uZXWZZZZZyyZZZZZZZVrrrrZU ]],
				-- [[ ##H#HHMHMMHHkkWkmggJMNJ?HHHggQWHHHHHHHMH9<7YY"<<<++?7XZuZZZZXZZuuuuVrrrrrtX ]],
				-- [[ @M##HHMMHHHH@Hgg@@@M#NHHHQdWMH#########M>~(<>><<<:::(<OuuZuuuuuXuuVtttttttZ ]],
				-- [[ @@MMMMHMM###H#HM@@HHMMM#NMNWHgZTYWHB9QgQHa,(<~_____~~._JXuuuwuuXZOtlllltlOI ]],
				[[]],
				[[]],
				[[                         Glory to Uganda                      ]],
			}
		}
	end
}
