local _, addon = ...
addon.L = addon.L or {}
L = addon.L

L.cTitle = "Outfitter"
L.cTitleVersion = L.cTitle.." "..L.cVersion

L.cSingleItemFormat = "%s"
L.cTwoItemFormat = "%s and %s"
L.cMultiItemFormat = "%s{{, %s}} and %s"

L.cNameLabel = "이름:"
L.cCreateUsingTitle = "최적화:"
L.cUseCurrentOutfit = "현재 장비 세트 사용"
L.cUseEmptyOutfit = "빈 장비 세트 생성"

L.cOutfitterTabTitle = "Outfitter"
L.cOptionsTabTitle = "옵션"
L.cAboutTabTitle = "정보"

L.cNewOutfit = "신규 장비 세트"
L.cRenameOutfit = "장비 세트 이름 변경"

L.cCompleteOutfits = "완비 세트"
L.cPartialOutfits = "부분 세트"
L.cAccessoryOutfits = "액세서리"
L.cSpecialOutfits = "특수 조건"
L.cOddsNEndsOutfits = "나머지 장비들"

L.cGlobalCategory = "특별 세트"
L.cNormalOutfit = "평상시"
L.cNakedOutfit = "벗기"

L.cFishingOutfit = "낚시"
L.cHerbalismOutfit = "약초 채집"
L.cMiningOutfit = "채광"
L.cLockpickingOutfit = "Lockpicking"
L.cSkinningOutfit = "무두질"
L.cFireResistOutfit = "화염 저항"
L.cNatureResistOutfit = "자연 저항"
L.cShadowResistOutfit = "암흑 저항"
L.cArcaneResistOutfit = "비전 저항"
L.cFrostResistOutfit = "냉기 저항"

L.cArgentDawnOutfit = "은빛 여명회"
L.cRidingOutfit = "말타기"
L.cDiningOutfit = "음식 먹기"
L.cBattlegroundOutfit = "전장"
L.cABOutfit = "전장: 아라시 분지"
L.cAVOutfit = "전장: 알터랙 계곡"
L.cWSGOutfit = "전장: 전쟁노래 협곡"
L.cArenaOutfit = "전장: 투기장"
L.cEotSOutfit = "전장: 폭풍의 눈"
L.cWintergraspOutfit = "전장: Wintergrasp"
L.cSewersOutfit = "전장: Dalaran Sewers"
L.cGilneasOutfit = "전장: Battle for Gilneas"
L.cTwinPeaksOutfit = "전장: Twin Peaks"
L.cCityOutfit = "마을 주변"
L.cSwimmingOutfit = "수영"
L.cArgentTournamentOutfit = "Argent Tournament"
L.cMultiphaseSurveyOutfit = "The Multiphase Survey"
L.cSpellcastOutfit = "Spellcast"

L.cMountSpeedFormat = "이동 속도 (%d+)%%만큼 증가"; -- For detecting when mounted
L.cFlyingMountSpeedFormat = "비행 속도 (%d+)%%만큼 증가"; -- For detecting when mounted

L.cBagsFullError = "가방이 가득 차서 %s|1을;를; 벗을 수 없습니다."
L.cDepositBagsFullError = "가방이 가득 차서 %s|1을;를; 벗을 수 없습니다."
L.cWithdrawBagsFullError = "가방이 가득 차서 %s|1을;를; 벗을 수 없습니다."
L.cItemNotFoundError = "%s 아이템을 찾을 수 없습니다."
L.cItemAlreadyUsedError = "%s|1은;는; 이미 다른 슬롯에서 사용중이므로 %s 슬롯에 착용할 수 없습니다."
L.cAddingItem = "%s|1을;를; %s 세트에 추가합니다."
L.cNameAlreadyUsedError = "오류: 사용중인 이름입니다."
L.cNoItemsWithStatError = "경고: 해당 능력을 가진 아이템이 없습니다."

L.cEnableAll = "모두 활성화"
L.cEnableNone = "모두 비활성화"

L.cConfirmDeleteMsg = "%s 세트를 삭제 하시겠습니까?"
L.cConfirmRebuildMsg = "%s 세트를 재구성 하시겠습니까?"
L.cRebuild = "재구성"

L.cSilverwingHold = "Silverwing Hold"
L.cWarsongLumberMill = "Warsong Lumber Mill"

L.cTotalStatsName = "모든 능력치"
L.cItemLevelName = "Item Level"

L.cOptionsTitle = "Outfitter 옵션"
L.cShowMinimapButton = "미니맵 버튼 표시"
L.cShowMinimapButtonOnDescription = "미니맵 버튼을 사용하지 않으려면 이 설정을 끄십시오."
L.cShowMinimapButtonOffDescription = "미니맵 버튼을 사용하려면 이 설정을 켜십시오."
L.cAutoSwitch = "장비 자동-교환"
L.cAutoSwitchOnDescription = "장비를 자동적으로 변경하지 않으려면 이 설정을 끄십시오."
L.cAutoSwitchOffDescription = "장비를 자동으로 변경하려면 이 설정을 켜십시오."
L.cTooltipInfo = "툴팁 표시"
L.cTooltipInfoOnDescription = "툴팁에 '사용처:' 정보를 표시하지 않으려면 이 설정을 끄십시오. (착용장비에 마우스을 올렸을 때 프레임율을 향상 시킵니다.)"
L.cTooltipInfoOffDescription = "툴팁에 '사용처:' 정보를 표시하려면 이 설정을 켜십시오."
L.cOutfitDisplay = "Outfit display"
L.cShowHotkeyMessages = "단축키로 변경할때 보여주기"
L.cShowHotkeyMessagesOnDescription = "단축키로 세트를 변경할때 메시지를 보지 않으려면 이 설정을 끄십시오."
L.cShowHotkeyMessagesOffDescription = "단축키로 세트를 변경할때 메시지를 보려면 이 설정을 켜십시오."

L.cEquipOutfitMessageFormat = "Outfitter: %s 장비됨"
L.cUnequipOutfitMessageFormat = "Outfitter: %s 해제됨"

L.cAboutTitle = "Outfitter 정보"
L.cAuthor = "Designed and written by John Stephen and Bruce Quinton with contributions by %s"
L.cTestersTitle = "Outfitter testers"
L.cSpecialThanksTitle = "Special thanks to"
L.cTranslationCredit = "Translations by %s"

L.cOpenOutfitter = "Outfitter 열기"

L.cArgentDawnOutfitDescription = "이 세트는 역병지대에 있을 때 자동으로 착용 됩니다."
L.cRidingOutfitDescription = "이 세트는 탈것을 탈 때 자동으로 착용 됩니다."
L.cDiningOutfitDescription = "이 세트는 음식을 먹거나 음료를 마실 때 자동으로 착용 됩니다."
L.cBattlegroundOutfitDescription = "이 세트는 전장에 있을 때 자동으로 착용 됩니다."
L.cArathiBasinOutfitDescription = "이 세트는 아라시 분지에 있을 때 자동으로 착용 됩니다."
L.cAlteracValleyOutfitDescription = "이 세트는 알터랙 계곡에 있을 때 자동으로 착용 됩니다."
L.cWarsongGulchOutfitDescription = "이 세트는 전쟁노래 협곡에 있을 때 자동으로 착용 됩니다."
L.cEotSOutfitDescription = "이 세트는 폭풍의 눈에 있을 때 자동으로 착용 됩니다."
L.cCityOutfitDescription = "이 세트는 우호적인 대도시에 있을 때 자동으로 착용 됩니다."
L.cSwimmingOutfitDescription = "이 세트는 수영할 때 자동적으로 장착됩니다."

L.cKeyBinding = "단축키"

BINDING_HEADER_OUTFITTER_TITLE = L.cTitle
BINDING_NAME_OUTFITTER_OUTFIT = "Outfitter 열기"

BINDING_NAME_OUTFITTER_OUTFIT1  = "세트 1"
BINDING_NAME_OUTFITTER_OUTFIT2  = "세트 2"
BINDING_NAME_OUTFITTER_OUTFIT3  = "세트 3"
BINDING_NAME_OUTFITTER_OUTFIT4  = "세트 4"
BINDING_NAME_OUTFITTER_OUTFIT5  = "세트 5"
BINDING_NAME_OUTFITTER_OUTFIT6  = "세트 6"
BINDING_NAME_OUTFITTER_OUTFIT7  = "세트 7"
BINDING_NAME_OUTFITTER_OUTFIT8  = "세트 8"
BINDING_NAME_OUTFITTER_OUTFIT9  = "세트 9"
BINDING_NAME_OUTFITTER_OUTFIT10 = "세트 10"

L.cShow = "보이기"
L.cHide = "숨기기"
L.cDontChange = "Don't change"

L.cPlayerTitle = "Title"

L.cMore = "More"

L.cAutomation = "Automation"

L.cDisableOutfit = "세트 사용 안함"
L.cDisableOutfitInBG = "전장에서 사용 안함"
L.cDisableOutfitInCombat = "전투중 사용 안함"
L.cDisableOutfitInAQ40 = "안퀴라즈 사원 내 사용 안함"
L.cDisableOutfitInNaxx = "낙스라마스 내 사용 안함"
L.cDisabledOutfitName = "%s (사용 안함)"

L.cOutfitBar = "Outfit Bar"
L.cShowInOutfitBar = "Show in outfit bar"
L.cChangeIcon = "Choose icon..."

L.cMinimapButtonTitle = "미니맵 버튼"
L.cMinimapButtonDescription = "클릭 : 세트 선택, 드래그 : 미니맵 버튼 이동"

L.cBattleStance = "전투 태세"
L.cDefensiveStance = "방어 태세"
L.cBerserkerStance = "광폭 태세"

L.cWarriorBattleStance = "전사: 전투 태세"
L.cWarriorDefensiveStance = "전사: 방어 태세"
L.cWarriorBerserkerStance = "전사: 광폭 태세"

L.cDruidBearForm = "드루이드: 곰 변신"
L.cDruidCatForm = "드루이드: 표범 변신"
L.cDruidAquaticForm = "드루이드: 바다표범 변신"
L.cDruidTravelForm = "드루이드: 치타 변신"
L.cDruidMoonkinForm = "드루이드: 달빛야수 변신"
L.cDruidFlightForm = "드루이드: 폭풍까마귀 변신"
L.cDruidSwiftFlightForm = "드루이드: 빠른 폭풍까마귀 변신"
L.cDruidTreeOfLifeForm = "드루이드: 생명의 나무"
L.cDruidProwl = "드루이드: 숨기"
L.cProwl = "숨기"

L.cPriestShadowform = "사제: 어둠의 형상"

L.cRogueStealth = "도적: 은신"

L.cShamanGhostWolf = "주술사: 늑대 정령"

L.cHunterMonkey = "사냥꾼: 원숭이의 상"
L.cHunterHawk =  "사냥꾼: 매의 상"
L.cHunterCheetah =  "사냥꾼: 치타의 상"
L.cHunterPack =  "사냥꾼: 치타 무리의 상"
L.cHunterBeast =  "사냥꾼: 야수의 상"
L.cHunterWild =  "사냥꾼: 야생의 상"
L.cHunterViper = "사냥꾼: 독사의 상"

L.cMageEvocate = "마법사: 환기"

L.cDeathknightBlood = "Deathknight: Blood Presence"
L.cDeathknightFrost = "Deathknight: Frost Presence"
L.cDeathknightUnholy = "Deathknight: Unholy Presence"

L.cMonkTiger = "Monk: Tiger stance"
L.cMonkSerpent = "Monk: Serpent stance"
L.cMonkOx = "Monk: Ox stance"

L.cCompleteCategoryDescription = "모든 슬롯의 아이템에 관한 설정이 들어있는 완전한 장비 세트입니다."
L.cPartialCategoryDescription = "Mix-n-match의 장비 세트는 전부가 아닌 일부 슬롯만 가집니다. 장비 세트가 선택되면 이전에 선택되었던 보조 장비 세트 또는 Mix-n-match 세트를 대체하면서, 완비 세트에서 해당 아이템만을 교체합니다."
L.cAccessoryCategoryDescription = "보조 장비의 장비 세트는 전부가 아닌 일부 슬롯만 가집니다. Mix-n-match와는 다르게 이전에 선택되었던 보조 장비 세트 또는 Mix-n-match 세트를 대체하지 않고 추가로 완비 세트에서 해당 아이템을 교체합니다."
L.cSpecialCategoryDescription = "특수 조건의 장비 세트는 해당하는 조건을 충족시킬 경우 자동으로 착용됩니다."
L.cOddsNEndsCategoryDescription = "나머지 장비들의 아이템들은 장비 세트에 한번도 사용되지 않은 아이템들입니다."

L.cRebuildOutfitFormat = "%s 재구성"

L.cSlotEnableTitle = "슬롯 활성화"
L.cSlotEnableDescription = "슬롯을 활성화 하면 해당 장비 세트를 사용할때 같이 변경됩니다."

L.cFinger0SlotName = "첫번째 손가락"
L.cFinger1SlotName = "두번째 손가락"

L.cTrinket0SlotName = "첫번째 장신구"
L.cTrinket1SlotName = "두번째 장신구"

L.cOutfitCategoryTitle = "카테고리"
L.cBankCategoryTitle = "은행"
L.cDepositToBank = "모든 아이템을 은행으로"
L.cDepositUniqueToBank = "특정 아이템을 은행으로"
L.cDepositOthersToBank = "Deposit other outfits to bank"
L.cWithdrawFromBank = "은행으로부터 아이템 회수"
L.cWithdrawOthersFromBank = "Withdraw other outfits from bank"

L.cMissingItemsLabel = "찾을 수 없는 아이템: "
L.cBankedItemsLabel = "은행에 있는 아이템: "

L.cResistCategory = "저항"
L.cTradeCategory = "전문기술"

L.cTankPoints = "탱크 포인트"
L.cCustom = "사용자 설정"

L.cScript = "스크립트"
L.cDisableScript = "스크립트 비활성화"
L.cEditScriptTitle = "%s 세트에 대한 스크립트"
L.cEditScriptEllide = "스크립트 편집..."
L.cEventsLabel = "이벤트:"
L.cScriptLabel = "스크립트:"
L.cSetCurrentItems = "현재 아이템으로 갱신"
L.cConfirmSetCurrentMsg = "%s|1을;를; 현재 착용 장비를 사용하여 갱신하시겠습니까? 주의: 세트에 현재 활성화된 슬롯만 갱신됩니다. -- 적용후 추가적으로 슬롯을 변경할 수 있습니다."
L.cSetCurrent = "갱신"
L.cTyping = "입력..."
L.cScriptErrorFormat = "%d 라인 오류: %s"
L.cExtractErrorFormat = "%[문자열 \"장비 스크립트\"%]:(%d+):(.*)"
L.cPresetScript = "미리 정의된 스크립트:"
L.cCustomScript = "사용자 정의"
L.cSettings = "설정"
L.cSource = "원본"
L.cInsertFormat = "<- %s"

L.cNone = "없음"
L.cUseTooltipLineFormat = "^사용 효과:.*"
L.cUseDurationTooltipLineFormat = "^사용 효과: (%d+) seconds"

L.cAutoChangesDisabled = "Automated changes are now disabled"
L.cAutoChangesEnabled = "Automated changes are now enabled"

-- OutfitterFu strings

L.cFuHint = "Outfitter 창을 열려면 좌-클릭하세요."
L.cFuHideMissing = "불일치 숨기기"
L.cFuHideMissingDesc = "일치 하지 않는 아이템을 숨깁니다."
L.cFuRemovePrefixes = "접두사 제거"
L.cFuRemovePrefixesDesc = "FuBar에 짧은 글자를 표시하기 위해 세트 이름의 접두사를 제거합니다."
L.cFuMaxTextLength = "최대 글자 길이"
L.cFuMaxTextLengthDesc = "FuBar에 표시할 글자의 최대 길이입니다."
L.cFuHideMinimapButton = "Hide minimap button"
L.cFuHideMinimapButtonDesc = "Hide Outfitter's minimap button."
L.cFuInitializing = "초기화"

L.cStoreOnServer = "Store outfit on server"
L.cStoreOnServerOnDescription = "Turn off to remove this outfit from the server and store it locally instead.  It will no longer be available from other computers."
L.cStoreOnServerOffDescription = "Turn on to store this outfit on the server so that it's available from any computer.  You may only store 10 outfits on the server."
L.cTooManyServerOutfits = "You cannot store more than %d outfits on the server."

L.cNoItemsWithStat = "Couldn't generate an outfit because no items with that stat were found"

L.cRequiresPrefix = "요구 사항:"
L.cUniqueEquippedSearchPattern = "^고유 장착 아이템: (.*) %((%d+)%)$"
