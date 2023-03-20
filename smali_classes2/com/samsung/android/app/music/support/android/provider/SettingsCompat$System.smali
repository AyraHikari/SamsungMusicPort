.class public Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;
.super Ljava/lang/Object;
.source "SettingsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/provider/SettingsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# static fields
.field public static final AIR_MOTION_TURN:Ljava/lang/String;

.field public static final AIR_MOTION_TURN_BGM_ON_LOCK_SCREEN:Ljava/lang/String;

.field public static final AIR_MOTION_TURN_NOW_PLAYING_ON_MUSIC:Ljava/lang/String;

.field public static final EASY_MODE_MUSIC:Ljava/lang/String;

.field public static final EASY_MODE_SWITCH:Ljava/lang/String;

.field public static final SELECT_NAME_1:Ljava/lang/String;

.field public static final SELECT_NAME_2:Ljava/lang/String;

.field public static final ULTRA_POWERSAVING_MODE:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v1, "select_name_2"

    const-string v2, "select_name_1"

    const-string v3, "easy_mode_switch"

    const-string v4, "ultra_powersaving_mode"

    if-eqz v0, :cond_1

    .line 2
    sput-object v4, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->ULTRA_POWERSAVING_MODE:Ljava/lang/String;

    .line 3
    sput-object v3, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_SWITCH:Ljava/lang/String;

    const-string v0, ""

    .line 4
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_MUSIC:Ljava/lang/String;

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-le v3, v4, :cond_0

    .line 6
    sput-object v2, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_1:Ljava/lang/String;

    .line 7
    sput-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "android.provider.Settings$System"

    const-string v2, "SEM_SELECT_NAME_1"

    .line 8
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_1:Ljava/lang/String;

    const-string v2, "SEM_SELECT_NAME_2"

    .line 9
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_2:Ljava/lang/String;

    .line 10
    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->AIR_MOTION_TURN:Ljava/lang/String;

    .line 11
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->AIR_MOTION_TURN_NOW_PLAYING_ON_MUSIC:Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->AIR_MOTION_TURN_BGM_ON_LOCK_SCREEN:Ljava/lang/String;

    goto :goto_1

    .line 13
    :cond_1
    sput-object v4, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->ULTRA_POWERSAVING_MODE:Ljava/lang/String;

    .line 14
    sput-object v3, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_SWITCH:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->EASY_MODE_MUSIC:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->EASY_MODE_MUSIC:Ljava/lang/String;

    .line 16
    sput-object v2, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_1:Ljava/lang/String;

    .line 17
    sput-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_2:Ljava/lang/String;

    const-string v0, "air_motion_turn"

    .line 18
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->AIR_MOTION_TURN:Ljava/lang/String;

    const-string v0, "air_motion_turn_now_playing_on_music"

    .line 19
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->AIR_MOTION_TURN_NOW_PLAYING_ON_MUSIC:Ljava/lang/String;

    const-string v0, "air_motion_turn_bgm_on_lock_screen"

    .line 20
    sput-object v0, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->AIR_MOTION_TURN_BGM_ON_LOCK_SCREEN:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/provider/SettingsSdlCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method
