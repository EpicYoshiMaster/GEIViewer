//Displays all GEI events for easier reference to when these functions are called
class Yoshi_GameMod_GEIViewer extends GameMod;

var config int ConfigOnPostInitGame;
var config int ConfigOnPostLevelIntro;
var config int ConfigOnGetDefaultPlayerClass;
var config int ConfigOnTimePieceCollected;
var config int ConfigOnCollectibleSpawned;
var config int ConfigOnCollectedCollectible;
var config int ConfigOnPreOpenHUD;
var config int ConfigOnPreActSelectMapChange;
var config int ConfigOnPreRestartMap;

var config int ConfigOnPreStatusEffectAdded;
var config int ConfigOnStatusEffectRemoved;
var config int ConfigOnLoadoutChanged;
var config int ConfigOnAbilityUsed;
var config int ConfigOnWeaponBadgeUsed;
var config int ConfigOnCheckpointSet;
var config int ConfigOnPreCheckpointSet;
var config int ConfigOnPlayerDeath;
var config int ConfigOnAllPlayersDead;
var config int ConfigOnPrePawnCombatTakeDamage;
var config int ConfigOnPostPawnCombatTakeDamage;
var config int ConfigOnPawnCombatDeath;
var config int ConfigOnPreBreakableBreak;
var config int ConfigOnPlayerShoved;
var config int ConfigOnPlayerPressedJumpButton;
var config int ConfigOnBossPhaseMissed;
var config int ConfigOnGuardAlerted;
var config int ConfigOnGuardCaught;
var config int ConfigOnPlayerEnterCannon;

var config int ConfigOnMiniMissionBegin;
var config int ConfigOnMiniMissionComplete;
var config int ConfigOnMiniMissionFail;
var config int ConfigOnMiniMissionCancel;
var config int ConfigOnMiniMissionGenericEvent;
var config int ConfigOnMiniMissionTimeLimitSecond;

function OnPostInitGame() {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPostInitGame == 1) Print("[GEI] => OnPostInitGame");
}

function OnPostLevelIntro() {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPostLevelIntro == 1) Print("[GEI] => OnPostLevelIntro");
}

function OnGetDefaultPlayerClass(Controller C, out class<Pawn> PawnClass) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnGetDefaultPlayerClass == 1) Print("[GEI] => OnGetDefaultPlayerClass: {Controller" @ C $ "," @ "PawnClass" @ PawnClass $ "}");
}

function OnTimePieceCollected(string Identifier) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnTimePieceCollected == 1) Print("[GEI] => OnTimePieceCollected: {Identifier" @ Identifier $ "}");
}

function OnCollectibleSpawned(Object InCollectible) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnCollectibleSpawned == 1) Print("[GEI] => OnCollectibleSpawned: {InCollectible" @ InCollectible $ "}");
}

function OnCollectedCollectible(Object InCollectible) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnCollectedCollectible == 1) Print("[GEI] => OnCollectedCollectible: {InCollectible" @ InCollectible $ "}");
}

function OnPreOpenHUD(HUD InHUD, out class<Object> InHUDElement) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPreOpenHUD == 1) Print("[GEI] => OnPreOpenHUD: {InHUD" @ InHUD $ "," @ "InHUDElement" @ InHUDElement $ "}");
}

function OnPreActSelectMapChange(Object ChapterInfo, out int ActID, out String MapName) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPreActSelectMapChange == 1) Print("[GEI] => OnPreActSelectMapChange: {ChapterInfo" @ ChapterInfo $ "," @ "ActID" @ ActID $ "," @ "MapName" @ MapName $ "}");
}

function OnPreRestartMap(out String MapName) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPreRestartMap == 1) Print("[GEI] => OnPreRestartMap: {MapName" @ MapName $ "}");
}

function OnPreStatusEffectAdded(Pawn PawnCombat, out class<Object> StatusEffect, out float OverrideDuration) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPreStatusEffectAdded == 1) Print("[GEI] => OnPreStatusEffectAdded: {PawnCombat" @ PawnCombat $ "," @ "StatusEffect" @ StatusEffect $ "," @ "OverrideDuration" @ OverrideDuration $ "}");
}

function OnStatusEffectRemoved(Pawn PawnCombat, class<Object> StatusEffect) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnStatusEffectRemoved == 1) Print("[GEI] => OnStatusEffectRemoved: {PawnCombat" @ PawnCombat $ "," @ "StatusEffect" @ StatusEFfect $ "}");
}

function OnLoadoutChanged(PlayerController Controller, Object Loadout, Object BackpackItem) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnLoadoutChanged == 1) Print("[GEI] => OnLoadoutChanged: {Controller" @ Controller $ "," @ "Loadout" @ Loadout $ "," @ "BackpackItem" @ BackpackItem $ "}");
}

function OnAbilityUsed(Pawn Player, Inventory Ability) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnAbilityUsed == 1) Print("[GEI] => OnAbilityUsed: {Player" @ Player $ "," @ "Ability" @ Ability $ "}");
}

function OnWeaponBadgeUsed(Pawn Player, class<Inventory> Badge) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnWeaponBadgeUsed == 1) Print("[GEI] => OnWeaponBadgeUsed: {Player" @ Player $ "," @ "Badge" @ Badge $ "}");
}

function OnCheckpointSet(int CheckPoint) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnCheckpointSet == 1) Print("[GEI] => OnCheckpointSet: {Checkpoint" @ Checkpoint $ "}");
}

function OnPreCheckpointSet(int Checkpoint) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPreCheckpointSet == 1) Print("[GEI] => OnPreCheckpointSet: {Checkpoint" @ Checkpoint $ "}");
}

function OnPlayerDeath(Pawn Player) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPlayerDeath == 1) Print("[GEI] => OnPlayerDeath: {Player" @ Player $ "}");
}

function OnAllPlayersDead() {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnAllPlayersDead == 1) Print("[GEI] => OnAllPlayersDead");
}

//Skips HitInfo, it's already so long and the compiler won't print structs on their own
function OnPrePawnCombatTakeDamage(Pawn PawnCombat, int Damage, Controller InstigatedBy, Vector HitLocation, Vector Momentum, class<Object> DamageType, TraceHitInfo HitInfo, Actor DamageCauser) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPrePawnCombatTakeDamage == 1) Print("[GEI] => OnPrePawnCombatTakeDamage: \n{PawnCombat" @ PawnCombat $ "," @ "Damage" @ Damage $ "," @ "InstigatedBy" @ InstigatedBy $ "," @ "HitLocation" @ HitLocation $ "," @
    "Momentum" @ Momentum $ "," @ "DamageType" @ DamageType $ "," @ "DamageCauser" @ DamageCauser $ "}");
}

function OnPostPawnCombatTakeDamage(Pawn PawnCombat, int Damage, Controller InstigatedBy, Vector HitLocation, Vector Momentum, class<Object> DamageType, TraceHitInfo HitInfo, Actor DamageCauser) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPostPawnCombatTakeDamage == 1) Print("[GEI] => OnpostPawnCombatTakeDamage: \n{PawnCombat" @ PawnCombat $ "," @ "Damage" @ Damage $ "," @ "InstigatedBy" @ InstigatedBy $ "," @ "HitLocation" @ HitLocation $ "," @
    "Momentum" @ Momentum $ "," @ "DamageType" @ DamageType $ "," @ "DamageCauser" @ DamageCauser $ "}");
}

function OnPawnCombatDeath(Pawn PawnCombat, Controller Killer, class<Object> DamageType, Vector HitLocation) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPawnCombatDeath == 1) Print("[GEI] => OnPawnCombatDeath: {PawnCombat" @ PawnCombat $ "," @ "Killer" @ Killer $ "," @ "DamageType" @ DamageType $ "," @ "HitLocation" @ HitLocation $ "}");
}

function OnPreBreakableBreak(Actor Breakable, Pawn Instigator) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPreBreakableBreak == 1) Print("[GEI] => OnPreBreakableBreak: {Breakable" @ Breakable $ "," @ "Instigator" @ Instigator $ "}");
}

function OnPlayerShoved(Pawn Player, Pawn Instigator, Vector Angle) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPlayerShoved == 1) Print("[GEI] => OnPlayerShoved: {Player" @ Player $ "," @ "Instigator" @ Instigator $ "," @ "Angle" @ Angle $ "}");
}

function OnPlayerPressedJumpButton(Pawn Player) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPlayerPressedJumpButton == 1) Print("[GEI] => OnPlayerPressedJumpButton: {Player" @ Player $ "}");
}

function OnBossPhaseMissed(Pawn Player, Pawn Boss) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnBossPhaseMissed == 1) Print("[GEI] => OnBossPhaseMissed: {Player" @ Player $ "," @ "Boss" @ Boss $ "}");
}

function OnGuardAlerted(Pawn Player, Pawn Guard) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnGuardAlerted == 1) Print("[GEI] => OnGuardAlerted: {Player" @ Player $ "," @ "Guard" @ Guard $ "}");
}

function OnGuardCaught(Pawn Player, Pawn Guard) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnGuardCaught == 1) Print("[GEI] => OnGuardCaught: {Player" @ Player $ "," @ "Guard" @ Guard $ "}");
}

function OnPlayerEnterCannon(Pawn Player, Actor Cannon) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnPlayerEnterCannon == 1) Print("[GEI] => OnPlayerEnterCannon: {Player" @ Player $ "," @ "Cannon" @ Cannon $ "}");
}

function OnMiniMissionBegin(Object MiniMission) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnMiniMissionBegin == 1) Print("[GEI] => OnMiniMissionBegin: {MiniMission" @ MiniMission $ "}");
}

function OnMiniMissionComplete(Object MiniMission) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnMiniMissionComplete == 1) Print("[GEI] => OnMiniMissionComplete: {MiniMission" @ MiniMission $ "}");
}

function OnMiniMissionFail(Object MiniMission) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnMiniMissionFail == 1) Print("[GEI] => OnMiniMissionFail: {MiniMission" @ MiniMission $ "}");
}

function OnMiniMissionCancel(Object MiniMission) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnMiniMissionCancel == 1) Print("[GEI] => OnMiniMissionCancel: {MiniMission" @ MiniMission $ "}");
}

function OnMiniMissionGenericEvent(Object MiniMission, String id) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnMiniMissionGenericEvent == 1) Print("[GEI] => OnMiniMissionGenericEvent: {MiniMission" @ MiniMission $ "," @ "id" @ id $ "}");
}

function OnMiniMissionTimeLimitSecond(Object MiniMission, float TimeLeft) {
    if(class'Yoshi_GameMod_GEIViewer'.default.ConfigOnMiniMissionTimeLimitSecond == 1) Print("[GEI] => OnMiniMissionTimeLimitSecond: {MiniMission" @ MiniMission $ "," @ "TimeLeft" @ TimeLeft $ "}");
}

static final function Print(coerce string msg)
{
    local WorldInfo wi;
    wi = class'WorldInfo'.static.GetWorldInfo();
    if (wi != None)
    {
        if (wi.GetALocalPlayerController() != None)
            wi.GetALocalPlayerController().TeamMessage(None, msg, 'Event', 6);
        else
            wi.Game.Broadcast(wi, msg);
    }
}