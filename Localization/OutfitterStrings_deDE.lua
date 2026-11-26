local _, addon = ...
addon.L = addon.L or {}
L = addon.L

L.cTitle = "Outfitter"
L.cTitleVersion = L.cTitle.." "..L.cVersion

L.cSingleItemFormat = "%s"
L.cTwoItemFormat = "%s und %s"
L.cMultiItemFormat = "%s{{, %s}} und %s"

L.cNameLabel = "Name:"
L.cCreateUsingTitle = "Optimieren für:"
L.cUseCurrentOutfit = "Benutze derzeitiges Outfit"
L.cUseEmptyOutfit = "Erstelle neues Outfit"

L.cOutfitterTabTitle = "Outfitter"
L.cOptionsTabTitle = "Einstellungen"
L.cAboutTabTitle = "über"

L.cNewOutfit = "Neues Outfit"
L.cRenameOutfit = "Outfit umbenennen"

L.cCompleteOutfits = "Vollständige Ausrüstungen"
L.cPartialOutfits = "Mix-n-match"
L.cAccessoryOutfits = "Zusatzgegenstände"
L.cSpecialOutfits = "Besondere Gelegenheiten"

L.cGlobalCategory = "Special Outfits"
L.cNormalOutfit = "Normal"
L.cNakedOutfit = "Unbekleidet"

L.cFishingOutfit = "Angeln"
L.cHerbalismOutfit = "Kräuterkunde"
L.cMiningOutfit = "Bergbau"
L.cLockpickingOutfit = "Lockpicking"
L.cSkinningOutfit = "Kürschnerei"
L.cFireResistOutfit = "Feuerwiderstand"
L.cNatureResistOutfit = "Naturwiderstand"
L.cShadowResistOutfit = "Schattenwiderstand"
L.cArcaneResistOutfit = "Arkanwiderstand"
L.cFrostResistOutfit = "Frostwiderstand"

L.cArgentDawnOutfit = "Argentumdämmerung"
L.cRidingOutfit = "Reiten"
L.cDiningOutfit = "Ausruhen"
L.cBattlegroundOutfit = "Schlachtfeld"
L.cArgentTournamentOutfit = "Argent Tournament"
L.cMultiphaseSurveyOutfit = "The Multiphase Survey"
L.cSpellcastOutfit = "Spellcast"

L.cABOutfit = "Schlachtfeld: Arathibecken"
L.cAVOutfit = "Schlachtfeld: Alteractal"
L.cWSGOutfit = "Schlachtfeld: Kriegshymnenschlucht"
L.cEotSOutfit = "Schlachtfeld: Auge des Sturms"
L.cCityOutfit = "Stadt"
L.cSwimmingOutfit = "Schwimmen"

L.cMountSpeedFormat = "Erhöht %w+empo um %d+%%"; -- For detecting when mounted
L.cFlyingMountSpeedFormat = "Erhöht Fluggeschwindigkeit um (%d+)%%%."; -- For detecting when mounted

L.cBagsFullError = "%s kann nicht enfernt werden da alle Taschen voll sind."
L.cItemNotFoundError = "Kann %s nicht finden."
L.cAddingItem = "Füge %s zum %s Outfit."
L.cNameAlreadyUsedError = "Fehler: Dieser Name ist bereits vergeben."
L.cNoItemsWithStatError = "Warnung: Keiner deiner Gegenstände hat dieses Attribut."

L.cEnableAll = "Alle aktivieren"
L.cEnableNone = "Alle deaktivieren"

L.cConfirmDeleteMsg = "Bist du sicher dass du das %s Outfit löschen willst?"
L.cConfirmRebuildMsg = "Bist du sicher dass du das %s Outfit verändern willst?"
L.cRebuild = "Verändern"

L.cSilverwingHold = "Silverwing Hold"
L.cWarsongLumberMill = "Warsong Lumber Mill"

L.cTotalStatsName = "Gesamt	werte"
L.cItemLevelName = "Item Level"

L.cOptionsTitle = "Outfitter Einstellungen"
L.cShowMinimapButton = "Zeige Minimapbutton"
L.cShowMinimapButtonOnDescription = "Deaktivieren, um den Minimapbutton von Outfitter zu verstecken."
L.cShowMinimapButtonOffDescription = "Aktivieren, um den Minimapbutton von Outfitter zu zeigen."

L.cAutoSwitch = "Outfit nicht automatisch umschalten"
L.cAutoSwitchOnDescription = "Abschalten um automatische Outfitwechsel zu aktivieren."
L.cAutoSwitchOffDescription = "Einschalten, um automatische Outfitwechsel zu deaktivieren."
L.cTooltipInfo = "Tooltips anzeigen"
L.cTooltipInfoOnDescription = "Abschalten, um 'Benutzt von:' in Tooltips zu verstecken. (Verbessert die Frame-Rate geringfügig)"
L.cTooltipInfoOffDescription = "Einschalten, um 'Benutzt von:' in Tooltips anzuzeigen."
L.cOutfitDisplay = "Outfit display"

L.cAboutTitle = "über Outfitter"
L.cAuthor = "Designed and written by John Stephen with contributions by %s"
L.cTestersTitle = "Outfitter testers"
L.cTestersNames = "%s"
L.cSpecialThanksTitle = "Besonderen Dank für ihre Unterstützung geht an"
L.cSpecialThanksNames = "%s"
L.cTranslationCredit = "Übersetzung: %s"

L.cOpenOutfitter = "Outfitter öffnen"

L.cArgentDawnOutfitDescription = "Dieses Outfit wird automatisch beim Betreten der Pestländer angelegt"
L.cRidingOutfitDescription = "Dieses Outfit wird automatisch beim Reiten angelegt"
L.cDiningOutfitDescription = "Dieses Outfit wird automatisch beim Essen und/oder Trinken angelegt"
L.cBattlegroundOutfitDescription = "Dieses Outfit wird automatisch beim Betreten eines Schlachtfeldes angelegt"
L.cArathiBasinOutfitDescription = "Dieses Outfit wird automatisch beim Betreten des Arathibeckens angelegt"
L.cAlteracValleyOutfitDescription = "Dieses Outfit wird automatisch beim Betreten des Alteractals angelegt"
L.cWarsongGulchOutfitDescription = "Dieses Outfit wird automatisch beim Betreten der Kriegshymnenschlucht angelegt"
L.cEotSOutfitDescription = "Dieses Outfit wird automatisch beim Betreten des Auge des Sturms angelegt"
L.cCityOutfitDescription = "Dieses Outfit wird automatisch beim Betreten freundlicher Hauptstädte angelegt"

L.cKeyBinding = "Tastaturbelegung"

BINDING_HEADER_OUTFITTER_TITLE = L.cTitle

BINDING_NAME_OUTFITTER_OUTFIT1  = "Outfit 1"
BINDING_NAME_OUTFITTER_OUTFIT2  = "Outfit 2"
BINDING_NAME_OUTFITTER_OUTFIT3  = "Outfit 3"
BINDING_NAME_OUTFITTER_OUTFIT4  = "Outfit 4"
BINDING_NAME_OUTFITTER_OUTFIT5  = "Outfit 5"
BINDING_NAME_OUTFITTER_OUTFIT6  = "Outfit 6"
BINDING_NAME_OUTFITTER_OUTFIT7  = "Outfit 7"
BINDING_NAME_OUTFITTER_OUTFIT8  = "Outfit 8"
BINDING_NAME_OUTFITTER_OUTFIT9  = "Outfit 9"
BINDING_NAME_OUTFITTER_OUTFIT10 = "Outfit 10"

L.cShow = "Anzeigen"
L.cHide = "Verstecken"
L.cDontChange = "Don't change"

L.cPlayerTitle = "Title"

L.cMore = "More"

L.cAutomation = "Automation"

L.cDisableOutfit = "Outfit abschalten"
L.cDisableOutfitInBG = "Outfit beim Betreten eines Schlachtfeldes abschalten."
L.cDisabledOutfitName = "%s (Abgeschalten)"

L.cOutfitBar = "Outfit Bar"
L.cShowInOutfitBar = "Show in outfit bar"
L.cChangeIcon = "Choose icon..."

L.cMinimapButtonTitle = "Outfitter Minimapbutton"
L.cMinimapButtonDescription = "Klicken für eine Auswahl an Outfits oder gedrückt halten zum Bewegen des Buttons."

L.cBattleStance = "Kampfhaltung"
L.cDefensiveStance = "Verteidigungshaltung"
L.cBerserkerStance = "Berserkerhaltung"

L.cWarriorBattleStance = "Krieger: Kampfhaltung"
L.cWarriorDefensiveStance = "Krieger: Verteidigungshaltung"
L.cWarriorBerserkerStance = "Krieger: Berserkerhaltung"

L.cDruidBearForm = "Druide: Bärengestalt"
L.cDruidCatForm = "Druide: Katzengestalt"
L.cDruidAquaticForm = "Druide: Wassergestalt"
L.cDruidFlightForm = "Druide: Fluggestalt"
L.cDruidSwiftFlightForm = "Druide: Schnelle Fluggestalt"
L.cDruidTravelForm = "Druide: Reisegestalt"
L.cDruidMoonkinForm = "Druide: Mondkingestalt"
L.cDruidProwl = "Druide: Prowl"
L.cDruidTreeOfLifeForm = "Druide: Baum des Lebens";	
L.cProwl = "Pirschen"

L.cPriestShadowform = "Priester: Schattengestalt"

L.cRogueStealth = "Schurke: Verstohlenheit"

L.cShamanGhostWolf = "Schamane: Geisterwolf"

L.cHunterMonkey = "Jäger: Affe"
L.cHunterHawk =  "Jäger: Falke"
L.cHunterCheetah =  "Jäger: Gepard"
L.cHunterPack =  "Jäger: Rudel"
L.cHunterBeast =  "Jäger: Wildtier"
L.cHunterWild =  "Jäger: Wildnis"

L.cMageEvocate = "Magier: Hervorrufung"

L.cDeathknightBlood = "Deathknight: Blood Presence"
L.cDeathknightFrost = "Deathknight: Frost Presence"
L.cDeathknightUnholy = "Deathknight: Unholy Presence"

L.cMonkTiger = "Monk: Tiger stance"
L.cMonkSerpent = "Monk: Serpent stance"
L.cMonkOx = "Monk: Ox stance"

L.cCompleteCategoryDescription = "Vollständige Outfits haben für jeden Inventarslot festgelegte Gegenstände, die alles andere ersetzen wenn sie getragen werden."
L.cPartialCategoryDescription = "Bei Mix-n-match Outfits sind nur einige Gegenstände festgelegt, jedoch nicht alle.  Werden diese Outfits ausgewählt bleibt das vorherige Outfit erhalten, nur die neuen Gegenstände werden geändert."
L.cAccessoryCategoryDescription = "Zusatzgegenstände-Outfits haben nur einige festgelegte Inventarslots.  Anders als beim Mix-n-match kannst du so viele Zusatzgegenstände-Outfits erstellen und tragen, sie werden alle miteinander verbunden und über bestehenden Outfits getragen."
L.cSpecialCategoryDescription = "Besondere Gelegenheit-Outfits werden automatisch angelegt wenn die Situation es verlangt.  Sie werden über allen anderen Outfits getragen."
L.cOddsNEndsCategoryDescription = "Odds 'n ends ist eine Auflistung der Gegenstände, die keinem Outfit zugewiesen sind. Mit dieser Funktion kannst du sicherstellen, dass alle Gegenstände ihren Platz haben oder dass du keine unnötigen Gegenstände mit dir herumträgst."

L.cRebuildOutfitFormat = "%s geändert."

L.cSlotEnableTitle = "Slot aktivieren"
L.cSlotEnableDescription = "Aktiviere diese Option, damit der Gegenstand in diesem Slot automatisch angelegt wird wenn du zu diesem Outfit wechselst.  Ist dieser Slot nicht aktiviert, wird er beim Anlegen eines anderen Outfits nicht verändert."

L.cFinger0SlotName = "Erster Finger"
L.cFinger1SlotName = "Zweiter Finger"

L.cTrinket0SlotName = "Erstes Schmuckstück"
L.cTrinket1SlotName = "Zweites Schmuckstück"

L.cOutfitCategoryTitle = "Kategorie"
L.cBankCategoryTitle = "Bank"
L.cDepositToBank = "Gegenstände im Bankfach ablegen"
L.cDepositUniqueToBank = "Einzigartige Gegenstände im Bankfach ablegen"
L.cDepositOthersToBank = "Deposit other outfits to bank"
L.cWithdrawFromBank = "Gegenstände vom Bankfach aufnehmen"
L.cWithdrawOthersFromBank = "Withdraw other outfits from bank"

L.cMissingItemsLabel = "Fehlende Gegenstände: "
L.cBankedItemsLabel = "Gegenstände auf der Bank: "

L.cResistCategory = "Widerstände"
L.cTradeCategory = "Fähigkeiten"

L.cScript = "Script"
L.cDisableScript = "Script abschalten"
L.cEditScript = "Script bearbeiten"
L.cEventsLabel = "Ereignisse:"
L.cScriptLabel = "Script:"

L.cSetCurrentItems = "Mit aktuellem Outfit überschreiben"
L.cConfirmSetCurrentMsg = "Wollt ihr %s wirklich mit den zur Zeit angelegten Gegenständen überschreiben? Hinweis: Nur aktive Slots werden berücksichtigt. Zusätzliche Slots können später hinzugefügt werden"
L.cSetCurrent = "Aktualisieren"
L.cTyping = "Schreibe..."
L.cScriptErrorFormat = "Fehler in Zeile %d: %s"
L.cExtractErrorFormat = "%[string \"Outfit Script\"%]:(%d+):(.*)"
L.cPresetScript = "Vorgefertigtes Script:"
L.cCustomScript = "Benutzerdefiniert"
L.cSettings = "Einstellungen"
L.cSource = "Quellcode"
L.cInsertFormat = "<- %s"

L.cNone = "Keins"

L.cUseTooltipLineFormat = "^Benutzen:.*"
L.cUseDurationTooltipLineFormat = "^Benutzen:.*(%d+) Sek%. lang"
L.cUseDurationTooltipLineFormat2 = "^Benutzen:.*(%d+) Sek%. lang"

L.cAutoChangesDisabled = "Automated changes are now disabled"
L.cAutoChangesEnabled = "Automated changes are now enabled"

-- OutfitterFu strings

L.cFuHint = "Left-click to toggle Outfitter window."
L.cFuHideMissing = "Hide missing"
L.cFuHideMissingDesc = "Hide outfits with missing items."
L.cFuRemovePrefixes = "Remove prefixes"
L.cFuRemovePrefixesDesc = "Remove outfit name prefixes to shorten the text displayed in FuBar."
L.cFuMaxTextLength = "Max text length"
L.cFuMaxTextLengthDesc = "The maximum length of the text displayed in FuBar."
L.cFuHideMinimapButton = "Hide minimap button"
L.cFuHideMinimapButtonDesc = "Hide Outfitter's minimap button."
L.cFuInitializing = "Initializing"

L.cStoreOnServer = "Store outfit on server"
L.cStoreOnServerOnDescription = "Turn off to remove this outfit from the server and store it locally instead.  It will no longer be available from other computers."
L.cStoreOnServerOffDescription = "Turn on to store this outfit on the server so that it's available from any computer.  You may only store 10 outfits on the server."
L.cTooManyServerOutfits = "You cannot store more than %d outfits on the server."

L.cNoItemsWithStat = "Couldn't generate an outfit because no items with that stat were found"

L.cRequiresPrefix = "Benötigt:"
L.cUniqueEquippedSearchPattern = "^Einzigartig angelegt: (.*) %((%d+)%)$"
