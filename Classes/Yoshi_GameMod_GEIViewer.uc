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
    if(ConfigOnPostInitGame == 1) Print("OnPostInitGame");
}

function OnPostLevelIntro() {
    if(ConfigOnPostLevelIntro == 1) Print("OnPostLevelIntro");
}

function OnGetDefaultPlayerClass(Controller C, out class<Pawn> PawnClass) {
    if(ConfigOnGetDefaultPlayerClass == 1) Print("OnGetDefaultPlayerClass:" @ `ShowVar(C) @ `ShowVar(PawnClass));
}

function OnTimePieceCollected(string Identifier) {
    if(ConfigOnTimePieceCollected == 1) Print("OnTimePieceCollected:" @ `ShowVar(Identifier));
}

function OnCollectibleSpawned(Object InCollectible) {
    if(ConfigOnCollectibleSpawned == 1) Print("OnCollectibleSpawned:" @ `ShowVar(InCollectible));
}

function OnCollectedCollectible(Object InCollectible) {
    if(ConfigOnCollectedCollectible == 1) Print("OnCollectedCollectible:" @ `ShowVar(InCollectible));
}

function OnPreOpenHUD(HUD InHUD, out class<Object> InHUDElement) {
    if(ConfigOnPreOpenHUD == 1) Print("OnPreOpenHUD:" @ `ShowVar(InHUD) @ `ShowVar(InHUDElement));
}

function OnPreActSelectMapChange(Object ChapterInfo, out int ActID, out String MapName) {
    if(ConfigOnPreActSelectMapChange == 1) Print("OnPreActSelectMapChange:" @ `ShowVar(ChapterInfo) @ `ShowVar(ActID) @ `ShowVar(MapName));
}

function OnPreRestartMap(out String MapName) {
    if(ConfigOnPreRestartMap == 1) Print("OnPreRestartMap:" @ `ShowVar(MapName));
}

function OnPreStatusEffectAdded(Pawn PawnCombat, out class<Object> StatusEffect, out float OverrideDuration) {
    if(ConfigOnPreStatusEffectAdded == 1) Print("OnPreStatusEffectAdded:" @ `ShowVar(PawnCombat) @ `ShowVar(StatusEffect) @ `ShowVar(OverrideDuration));
}

function OnStatusEffectRemoved(Pawn PawnCombat, class<Object> StatusEffect) {
    if(ConfigOnStatusEffectRemoved == 1) Print("OnStatusEffectRemoved:" @ `ShowVar(PawnCombat) @ `ShowVar(StatusEffect));
}

function OnLoadoutChanged(PlayerController Controller, Object Loadout, Object BackpackItem) {
    if(ConfigOnLoadoutChanged == 1) Print("OnLoadoutChanged:" @ `ShowVar(Controller) @ `ShowVar(Loadout) @ `ShowVar(BackpackItem));
}

function OnAbilityUsed(Pawn Player, Inventory Ability) {
    if(ConfigOnAbilityUsed == 1) Print("OnAbilityUsed:" @ `ShowVar(Player) @ `ShowVar(Ability));
}

function OnWeaponBadgeUsed(Pawn Player, class<Inventory> Badge) {
    if(ConfigOnWeaponBadgeUsed == 1) Print("OnWeaponBadgeUsed:" @ `ShowVar(Player) @ `ShowVar(Badge));
}

function OnCheckpointSet(int CheckPoint) {
    if(ConfigOnCheckpointSet == 1) Print("OnCheckpointSet:" @ `ShowVar(Checkpoint));
}

function OnPreCheckpointSet(int Checkpoint) {
    if(ConfigOnPreCheckpointSet == 1) Print("OnPreCheckpointSet:" @ `ShowVar(Checkpoint));
}

function OnPlayerDeath(Pawn Player) {
    if(ConfigOnPlayerDeath == 1) Print("OnPlayerDeath:" @ `ShowVar(Player));
}

function OnAllPlayersDead() {
    if(ConfigOnAllPlayersDead == 1) Print("OnAllPlayersDead");
}

//Skips HitInfo, it's already so long and the compiler won't print structs on their own
function OnPrePawnCombatTakeDamage(Pawn PawnCombat, int Damage, Controller InstigatedBy, Vector HitLocation, Vector Momentum, class<Object> DamageType, TraceHitInfo HitInfo, Actor DamageCauser) {
    if(ConfigOnPrePawnCombatTakeDamage == 1) Print("OnPrePawnCombatTakeDamage:\n" $ `ShowVar(PawnCombat) @ `ShowVar(Damage) 
	@ `ShowVar(InstigatedBy) @ `ShowVar(HitLocation) @ `ShowVar(Momentum) @ `ShowVar(DamageType) @ `ShowVar(HitInfo) @ `ShowVar(DamageCauser));
}

function OnPostPawnCombatTakeDamage(Pawn PawnCombat, int Damage, Controller InstigatedBy, Vector HitLocation, Vector Momentum, class<Object> DamageType, TraceHitInfo HitInfo, Actor DamageCauser) {
    if(ConfigOnPostPawnCombatTakeDamage == 1) Print("OnPostPawnCombatTakeDamage:\n" $ `ShowVar(PawnCombat) @ `ShowVar(Damage) 
	@ `ShowVar(InstigatedBy) @ `ShowVar(HitLocation) @ `ShowVar(Momentum) @ `ShowVar(DamageType) @ `ShowVar(HitInfo) @ `ShowVar(DamageCauser));
}

function OnPawnCombatDeath(Pawn PawnCombat, Controller Killer, class<Object> DamageType, Vector HitLocation) {
    if(ConfigOnPawnCombatDeath == 1) Print("OnPawnCombatDeath:" @ `ShowVar(PawnCombat) @ `ShowVar(Killer) @ `ShowVar(DamageType) @ `ShowVar(HitLocation));
}

function OnPreBreakableBreak(Actor Breakable, Pawn Instigator) {
    if(ConfigOnPreBreakableBreak == 1) Print("OnPreBreakableBreak:" @ `ShowVar(Breakable) @ `ShowVar(Instigator));
}

function OnPlayerShoved(Pawn Player, Pawn Instigator, Vector Angle) {
    if(ConfigOnPlayerShoved == 1) Print("OnPlayerShoved:" @ `ShowVar(Player) @ `ShowVar(Instigator) @ `ShowVar(Angle));
}

function OnPlayerPressedJumpButton(Pawn Player) {
    if(ConfigOnPlayerPressedJumpButton == 1) Print("OnPlayerPressedJumpButton:" @ `ShowVar(Player));
}

function OnBossPhaseMissed(Pawn Player, Pawn Boss) {
    if(ConfigOnBossPhaseMissed == 1) Print("OnBossPhaseMissed:" @ `ShowVar(Player) @ `ShowVar(Boss));
}

function OnGuardAlerted(Pawn Player, Pawn Guard) {
    if(ConfigOnGuardAlerted == 1) Print("OnGuardAlerted:" @ `ShowVar(Player) @ `ShowVar(Guard));
}

function OnGuardCaught(Pawn Player, Pawn Guard) {
    if(ConfigOnGuardCaught == 1) Print("OnGuardCaught:" @ `ShowVar(Player) @ `ShowVar(Guard));
}

function OnPlayerEnterCannon(Pawn Player, Actor Cannon) {
    if(ConfigOnPlayerEnterCannon == 1) Print("OnPlayerEnterCannon:" @ `ShowVar(Player) @ `ShowVar(Cannon));
}

function OnMiniMissionBegin(Object MiniMission) {
    if(ConfigOnMiniMissionBegin == 1) Print("OnMiniMissionBegin:" @ `ShowVar(MiniMission));
}

function OnMiniMissionComplete(Object MiniMission) {
    if(ConfigOnMiniMissionComplete == 1) Print("OnMiniMissionComplete:" @ `ShowVar(MiniMission));
}

function OnMiniMissionFail(Object MiniMission) {
    if(ConfigOnMiniMissionFail == 1) Print("OnMiniMissionFail:" @ `ShowVar(MiniMission));
}

function OnMiniMissionCancel(Object MiniMission) {
    if(ConfigOnMiniMissionCancel == 1) Print("OnMiniMissionCancel:" @ `ShowVar(MiniMission));
}

function OnMiniMissionGenericEvent(Object MiniMission, String id) {
    if(ConfigOnMiniMissionGenericEvent == 1) Print("OnMiniMissionGenericEvent:" @ `ShowVar(MiniMission) @ `ShowVar(id));
}

function OnMiniMissionTimeLimitSecond(Object MiniMission, float TimeLeft) {
    if(ConfigOnMiniMissionTimeLimitSecond == 1) Print("OnMiniMissionTimeLimitSecond:" @ `ShowVar(MiniMission) @ `ShowVar(TimeLeft));
}

static final function Print(coerce string msg)
{
    local WorldInfo wi;

	msg = "[GEI] => " $ msg;
    wi = class'WorldInfo'.static.GetWorldInfo();
    if (wi != None)
    {
        if (wi.GetALocalPlayerController() != None)
            wi.GetALocalPlayerController().TeamMessage(None, msg, 'Event', 6);
        else
            wi.Game.Broadcast(wi, msg);
    }
}