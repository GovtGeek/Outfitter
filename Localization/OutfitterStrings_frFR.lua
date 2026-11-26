local _, addon = ...
addon.L = addon.L or {}
L = addon.L

L.cTitle = "Outfitter"
L.cTitleVersion = L.cTitle.." "..L.cVersion

L.cSingleItemFormat = "%s"
L.cTwoItemFormat = "%s et %s"
L.cMultiItemFormat = "%s{{, %s}} et %s"

L.cNameLabel = "Nom:"
L.cCreateUsingTitle = "Optimiser pour:"
L.cUseCurrentOutfit = "Utiliser la tenue actuelle"
L.cUseEmptyOutfit = "Créer une tenue vide"

L.cOutfitterTabTitle = "Outfitter"
L.cOptionsTabTitle = "Options"
L.cAboutTabTitle = "A propos"

L.cNewOutfit = "Nouvelle tenue"
L.cRenameOutfit = "Renommer la tenue"

L.cCompleteOutfits = "Tenues complètes"
L.cPartialOutfits = "Mix-n-match"
L.cAccessoryOutfits = "Accessoires"
L.cSpecialOutfits = "Occasions spéciales"
L.cOddsNEndsOutfits = "Odds 'n ends"

L.cGlobalCategory = "Special Outfits"
L.cNormalOutfit = "Normale"
L.cNakedOutfit = "Nu(e)"

L.cFishingOutfit = "Pêche"
L.cHerbalismOutfit = "Herborisme"
L.cMiningOutfit = "Minage"
L.cLockpickingOutfit = "Lockpicking"
L.cSkinningOutfit = "Dépecage"
L.cFireResistOutfit = "Résistance au feu"
L.cNatureResistOutfit = "Résistance à la nature"
L.cShadowResistOutfit = "Résistance à l'ombre"
L.cArcaneResistOutfit = "Résistance aux arcanes"
L.cFrostResistOutfit = "Résistance au givre"

L.cArgentDawnOutfit = "L'Aube d'argent"
L.cRidingOutfit = "Monture"
L.cDiningOutfit = "Diner"
L.cBattlegroundOutfit = "Champs de Bataille"
L.cABOutfit = "Champs de Bataille: Bassin d'Arathi"
L.cAVOutfit = "Champs de Bataille: Vallée d'Alterac"
L.cWSGOutfit = "Champs de Bataille: Goulet des Chanteguerres"
L.cArenaOutfit = "Champs de Bataille: Arène"
L.cWintergraspOutfit = "Champs de Bataille: Wintergrasp"
L.cSewersOutfit = "Champs de Bataille: Sewers"
L.cGilneasOutfit = "Champs de Bataille: Battle for Gilneas"
L.cTwinPeaksOutfit = "Champs de Bataille: Twin Peaks"
L.cCityOutfit = "En Ville"
L.cSwimmingOutfit = "Natation"
L.cArgentTournamentOutfit = "Argent Tournament"
L.cMultiphaseSurveyOutfit = "The Multiphase Survey"
L.cSpellcastOutfit = "Spellcast"

L.cMountSpeedFormat = "Augmente la vitesse de (%d+)%%%."; -- For detecting when mounted
L.cFlyingMountSpeedFormat = "Increases flying speed by (%d+)%%%."; -- For detecting when mounted

L.cBagsFullError = "Impossible d'enlever %s, tous les sacs sont pleins"
L.cDepositBagsFullError = "Impossible de déposer %s. Tous les sacs de la banque sont pleins."
L.cWithdrawBagsFullError = "Impossible de récupérer %s. Tous vos sacs sont pleins."
L.cItemNotFoundError = "%s est introuvable"
L.cItemAlreadyUsedError = "Impossible d' équiper %s à la place '%s' car il est déjà utilisé à un autre endroit."
L.cAddingItem = "%s ajouté à la tenue : %s"
L.cNameAlreadyUsedError = "Erreur: Nom existant"
L.cNoItemsWithStatError = "Attention: Aucuns de vos objets n'a cet attribut"

L.cEnableAll = "Tout activer"
L.cEnableNone = "Tout désactiver"

L.cConfirmDeleteMsg = "Etes vous sûr de vouloir supprimer la tenue : %s?"
L.cConfirmRebuildMsg = "Etes vous sûr de vouloir reconstruire la tenue : %s?"
L.cRebuild = "Reconstruire"

L.cSilverwingHold = "Silverwing Hold"
L.cWarsongLumberMill = "Warsong Lumber Mill"

L.cFishingPole = "Canne à pêche"
L.cStrongFishingPole = "Solide canne à pêche"
L.cBigIronFishingPole = "Grande canne à pêche en fer"
L.cBlumpFishingPole = "Canne à pêche de la famille Blump"
L.cNatPaglesFishingPole = "FC-5000 de Nat Pagle, pêcheur de l'extrême"
L.cArcaniteFishingPole = "Canne à pêche en arcanite"

L.cArgentDawnCommission = "Brevet de l'Aube d'argent"
L.cSealOfTheDawn = "Sceau de l'Aube"
L.cRuneOfTheDawn = "Rune de l'Aube"

L.cCarrotOnAStick = "Carotte et bâton"

L.cItemStatFormats =
{
	{Format = "Augmentation mineure de la vitesse de monture", Value = 3, Types = {"Riding"}},
	{Format = "Eperons en mithril", Value = 3, Types = {"Riding"}},

	"%+(%d+) aux dégâts des sorts (.+)",
	"Augmente les points de dégâts infligé par les (.+) de (%d+) au maximum",
	"Augmente les dégâts et les soins produits par les (.+) de (%d+) au maximum",

	"Augmente de (%d+) %(.+%) (.+)%.",
	"Augmente (.+) de %+?(%d+)",

	"Rend (%d+) (.+)",

	"%+(%d+) à (.+)",
	"(.+) %+(%d+)",
	"%+(%d+) (.+)",
}

L.cItemStatTypes =
{
	endurance = "Stamina",
	intelligence = "Intellect",
	["agilité"] = "Agility",
	force = "Strength",
	esprit = "Spirit",
	armure = "Armor",
	mana = "Mana",
	vie = "Health",

	["la puissance d'attaque"] = {"Attack", "RangedAttack"},
	["toutes les caractéristiques"] = {"Stamina", "Intellect", "Agility", "Strength", "Spirit"},

	["sorts et effets magiques"] = {"SpellDmg", "FireDmg", "ShadowDmg", "FrostDmg", "ArcaneDmg", "NatureDmg"},
	["sorts et effets de feu"] = "FireDmg",
	["sorts et effets d'ombre"] = "ShadowDmg",
	["sorts et effets de givre"] = "FrostDmg",
	["sorts et effets d'arcane"] = "ArcaneDmg",
	["sorts et effets de nature"] = "NatureDmg",

	["la résistance feu"] = "FireResist",
	["la résistance nature"] = "NatureResist",
	["la résistance givre"] = "FrostResist",
	["la résistance ombre"] = "ShadowResist",
	["la résistance arcane"] = "ArcaneResist",
	["toutes les résistances"] = {"FireResist", "NatureResist", "FrostResist", "ShadowResist", "ArcaneResist"},

	["le score de défense"] = "DefenseRating",
	["le score de résilience"] = "ResilienceRating",
	["la puissance d'attaque"] = {"Attack", "RangedAttack"},
	["ranged attack power"] = "RangedAttack",
	["le score de coup critique"] = {"MeleeCritRating", "SpellCritRating"},
	["le score de toucher"] = {"MeleeHitRating", "SpellHitRating"},
	["le score d'esquive"] = "DodgeRating",
	["le score de parade"] = "ParryRating",
	["block"] = "Block",
	["block value"] = "Block",
	["le score de blocage"] = "Block",
	["weapon damage"] = "MeleeDmg",
	["damage"] = "MeleeDmg",
	["le score de hâte"] = {"MeleeHasteRating", "SpellHasteRating"},
	["votre score d'expertise"] = "ExpertiseRating",

	["spell penetration"] = "SpellPen",
	["la puissance des sorts"] = {"SpellDmg", "ShadowDmg", "FireDmg", "FrostDmg", "ArcaneDmg", "NatureDmg", "Healing"},

	["la pèche"] = "Fishing",
	["pèche"] = "Fishing",
	herborisme = "Herbalism",
	minage = "Mining",
	["dépecage"] = "Skinning",

	["points de mana toutes les 5 sec"] = {"ManaRegen", "CombatManaRegen"},
	["mana regen"] = {"ManaRegen", "CombatManaRegen"},
	["health per 5 sec"] = {"HealthRegen", "CombatHealthRegen"},
	["health regen"] = {"HealthRegen", "CombatHealthRegen"},
}

L.cAgilityStatName = "Agilité"
L.cArmorStatName = "Armure"
L.cDefenseStatName = "Défense"
L.cIntellectStatName = "Intelligence"
L.cSpiritStatName = "Esprit"
L.cStaminaStatName = "Endurance"
L.cStrengthStatName = "Force"
L.cTotalStatsName = "Total Stats"
L.cItemLevelName = "Item Level"

L.cManaRegenStatName = "Régénération de mana"
L.cHealthRegenStatName = "Régénération de vie"

L.cSpellCritStatName = "Coups critiques des sorts"
L.cSpellHitStatName = "Spell Chance to Hit"
L.cSpellDmgStatName = "Dégâts des sorts"
L.cFrostDmgStatName = "Dégâts des sorts de givre"
L.cFireDmgStatName = "Dégâts des sorts de feu"
L.cArcaneDmgStatName = "Dégâts des sorts d'arcane"
L.cShadowDmgStatName = "Dégâts des sorts d'ombre"
L.cNatureDmgStatName = "Dégâts des sorts de nature"

L.cMeleeCritStatName = "Coups critiques"
L.cMeleeHitStatName = "Chance de toucher"
L.cMeleeDmgStatName = "Dégâts"
L.cAttackStatName = "Puissance d'attaque"
L.cRangedAttackStatName = "Ranged Attack Power"
L.cDodgeStatName = "Esquive"

L.cArcaneResistStatName = "Résistance aux arcanes"
L.cFireResistStatName = "Résistance au feu"
L.cFrostResistStatName = "Résistance au givre"
L.cNatureResistStatName = "Résistance à la nature"
L.cShadowResistStatName = "Résistance à l'ombre"

L.cOptionsTitle = "Options de Outfitter"
L.cShowMinimapButton = "Bouton Minimap"
L.cShowMinimapButtonOnDescription = "Désactivez si vous ne voulez pas le bouton d'Outfitter sur votre minimap"
L.cShowMinimapButtonOffDescription = "Activez pour afficher le bouton d'Outfitter sur la minimap"
L.cAutoSwitch = "Désactiver les modifications automatiques"
L.cAutoSwitchOnDescription = "Activez cette option pour désactiver le changement automatique de tenue"
L.cAutoSwitchOffDescription = "Activez cette option pour activer le changement automatique de tenue"
L.cTooltipInfo = "Affiche l'info-bulle"
L.cTooltipInfoOnDescription = "Désactivez cette option si vous ne souhaitez pas afficher les informations 'Utilisé par :' dans l'info-bulle (cela améliore la fréquence d'images lorsque vous passez la souris sur l'équipement)"
L.cTooltipInfoOffDescription = "Activez cette option si vous souhaitez afficher les informations 'Utilisé par :' dans l'info-bulle"
L.cOutfitDisplay = "Outfit Affichage"

L.cAboutTitle = "A propos d'Outfitter"
L.cAuthor = "Designed et écrit par John Stephen avec les contributions de %s"
L.cTestersTitle = "Outfitter testers"
L.cTestersNames = "%s"
L.cSpecialThanksTitle = "Special remerciements à "
L.cSpecialThanksNames = "%s"
L.cTranslationCredit = "Traduction: %s"

L.cOpenOutfitter = "Ouvrir Outfitter"

L.cArgentDawnOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans les Maleterres"
L.cRidingOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez sur votre monture"
L.cDiningOutfitDescription = "Cette tenue sera automatiquement équipée quand vous mangerez ou boirez"
L.cBattlegroundOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans un Champ de Bataille"
L.cArathiBasinOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans le Bassin d'Arathi"
L.cAlteracValleyOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans la Vallée d'Alterac"
L.cWarsongGulchOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans le Goulet des Chanteguerres"
L.cCityOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans une captiale amie"

L.cKeyBinding = "Raccourcis"

BINDING_HEADER_OUTFITTER_TITLE = L.cTitle

BINDING_NAME_OUTFITTER_OUTFIT1  = "Tenue 1"
BINDING_NAME_OUTFITTER_OUTFIT2  = "Tenue 2"
BINDING_NAME_OUTFITTER_OUTFIT3  = "Tenue 3"
BINDING_NAME_OUTFITTER_OUTFIT4  = "Tenue 4"
BINDING_NAME_OUTFITTER_OUTFIT5  = "Tenue 5"
BINDING_NAME_OUTFITTER_OUTFIT6  = "Tenue 6"
BINDING_NAME_OUTFITTER_OUTFIT7  = "Tenue 7"
BINDING_NAME_OUTFITTER_OUTFIT8  = "Tenue 8"
BINDING_NAME_OUTFITTER_OUTFIT9  = "Tenue 9"
BINDING_NAME_OUTFITTER_OUTFIT10 = "Tenue 10"

L.cShow = "Show"
L.cHide = "Hide"
L.cDontChange = "Don't change"

L.cPlayerTitle = "Title"

L.cMore = "More"

L.cAutomation = "Automation"

L.cDisableOutfit = "Désactiver la tenue"
L.cDisableOutfitInBG = "Désactiver la tenue dans les Champs de Bataille"
L.cDisabledOutfitName = "%s (Désactivé)"

L.cOutfitBar = "Outfit Barre"
L.cShowInOutfitBar = "Afficher dans la barre outfit"
L.cChangeIcon = "Choisissez l'icône..."

L.cMinimapButtonTitle = "Outfitter"
L.cMinimapButtonDescription = "Cliquez pour séléctionner une autre tenue ou déplacez pour changer la position du bouton."

L.cBattleStance = "Posture de combat"
L.cDefensiveStance = "Posture défensive"
L.cBerserkerStance = "Posture berserker"

L.cWarriorBattleStance = "Guerrier: Posture de combat"
L.cWarriorDefensiveStance = "Guerrier: Posture défensive"
L.cWarriorBerserkerStance = "Guerrier: Posture berserker"

L.cDruidBearForm = "Druide: Forme d'ours"
L.cDruidCatForm = "Druide: Forme de félin"
L.cDruidAquaticForm = "Druide: Forme aquatique"
L.cDruidTravelForm = "Druide: Forme de voyage"
L.cDruidMoonkinForm = "Druide: Forme de sélénien"
L.cDruidFlightForm = "Druide: Forme de vol"
L.cDruidSwiftFlightForm = "Druide: Forme de vol rapide"
L.cDruidTreeOfLifeForm = "Druide: Form de l'Arbre de vie"
L.cDruidProwl = "Druid: Rôder"
L.cProwl = "Rôder"

L.cPriestShadowform = "Prêtre: Forme d'ombre"

L.cRogueStealth = "Voleur: Camouflage"

L.cShamanGhostWolf = "Chaman: Loup fantôme"

L.cHunterMonkey = "Chasseur: Singe"
L.cHunterHawk =  "Chasseur: Faucon"
L.cHunterCheetah =  "Chasseur: Guépard"
L.cHunterPack =  "Chasseur: Meute"
L.cHunterBeast =  "Chasseur: Bête"
L.cHunterWild =  "Chasseur: Nature"
L.cHunterViper = "Chasseur: Vipère"
L.cAspectOfTheViper = "Aspect de la vipère"

L.cMageEvocate = "Mage: Evocation"

L.cDeathknightBlood = "Deathknight: Blood Presence"
L.cDeathknightFrost = "Deathknight: Frost Presence"
L.cDeathknightUnholy = "Deathknight: Unholy Presence"

L.cMonkTiger = "Monk: Tiger stance"
L.cMonkSerpent = "Monk: Serpent stance"
L.cMonkOx = "Monk: Ox stance"

L.cCompleteCategoryDescription = "Les tenues complètes ont un objet spécifié pour chaque emplacement et remplaceront toutes les autres tenues quand elles sont activées"
L.cPartialCategoryDescription = "Les tenues \"Mix-n-match\" ont quelques emplacements spécifiés. Quand on les équipe, elles vont par-dessus la tenue complète séléctionnée et remplace toutes les tenues \"Mix-n-match\" et Accessoires"
L.cAccessoryCategoryDescription = "Les tenues d'accessoires ont quelques emplacements spécifiés.  Contrairement aux \"Mix-n-Match\", Contrairement aux \"Mix-n-Match\", vous pouvez séléctionner autant d'accessoires que vous voulez et ils seront combinés par-dessus votre tenue complète et \"Mix-n-Match\"."
L.cSpecialCategoryDescription = "Les tenues spéciales sont automatiquement équipées dans certaines conditions. Elles remplacent les tenues équipées avant."
L.cOddsNEndsCategoryDescription = "Les Odds 'n ends sont des objets que vous n'utilisez dans aucune tenue. Ceci peut être utile pour vérifier que vous utilisez tous les objets que vous avez dans l'inventaire."

L.cRebuildOutfitFormat = "Reconstruire pour %s"

L.cSlotEnableTitle = "Activer l'emplacement"
L.cSlotEnableDescription = "Cochez la case si vous voulez que l'objet de cet emplacement soit automatiquement équipé lors du changement de tenue. Si la case n'est pas cochée, l'objet ne sera pas modifié lors du changement de tenue."

L.cFinger0SlotName = "Premier doigt"
L.cFinger1SlotName = "Second doigt"

L.cTrinket0SlotName = "Premier bijou"
L.cTrinket1SlotName = "Second bijou"

L.cOutfitCategoryTitle = "Catégorie"
L.cBankCategoryTitle = "Banque"
L.cDepositToBank = "Déposer les objets à la banque."
L.cDepositUniqueToBank = "Déposer les objets uniques à la banque"
L.cDepositOthersToBank = "Deposit other outfits to bank"
L.cWithdrawFromBank = "Récupérer les objets de la banque."
L.cWithdrawOthersFromBank = "Withdraw other outfits from bank"

L.cMissingItemsLabel = "Objets manquants: "
L.cBankedItemsLabel = "Objets à la banque: "

L.cResistCategory = "Résistances"
L.cTradeCategory = "Professions"

L.cScript = "Scripte"
L.cDisableScript = "Désactiver Scripte"
L.cEditScript = "Editer Scripte"
L.cEventsLabel = "Evènements:"
L.cScriptLabel = "Scripte:"

L.cNone = "None"
L.cUseTooltipLineFormat = "^Utiliser : .*"
L.cUseDurationTooltipLineFormat = "^Utiliser : .*pendant (%d+) sec"
L.cUseDurationTooltipLineFormat2 = "^Utiliser : .*Dure (%d+) sec"

L.cAutoChangesDisabled = "Les modifications automatiques sont maintenant désactivées"
L.cAutoChangesEnabled = "Les modifications automatiques sont maintenant activées"

-- OutfitterFu strings

L.cFuHint = "Cliquez avec le bouton gauche pour basculer la fenêtre L."
L.cFuHideMissing = "Masquer les items manquants"
L.cFuHideMissingDesc = "Cachez les tenues avec des objets manquants."
L.cFuRemovePrefixes = "enlever les prefixes"
L.cFuRemovePrefixesDesc = "Supprimez les préfixes des noms de tenues pour raccourcir le texte affiché dans FuBar."
L.cFuMaxTextLength = "longeur Max du texte"
L.cFuMaxTextLengthDesc = "La longueur maximale du texte affiché dans FuBar."
L.cFuHideMinimapButton = "Cache le bouton de la minimap"
L.cFuHideMinimapButtonDesc = "Cache le bouton icone de la minimap"
L.cFuInitializing = "initialisation"

L.cStoreOnServer = "Stocker la tenue sur le serveur"
L.cStoreOnServerOnDescription = "Désactivez-la pour supprimer cette tenue du serveur et la stocker localement à la place. Il ne sera plus disponible à partir d'autres ordinateurs."
L.cStoreOnServerOffDescription = "Activez pour stocker cette tenue sur le serveur afin qu'elle soit disponible depuis n'importe quel ordinateur. Vous ne pouvez stocker que 10 tenues sur le serveur."
L.cTooManyServerOutfits = "Vous ne pouvez pas stocker plus de %d tenues sur le serveur."

L.cNoItemsWithStat = "Impossible de générer une tenue car aucun élément avec cette catactéristique n'a été trouvé"
