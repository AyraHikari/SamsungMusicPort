.class public Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;
.super Ljava/lang/Object;
.source "SoundAliveCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyPresetConstants"
.end annotation


# static fields
.field public static final PRESET_BASS_BOOST:I

.field public static final PRESET_CAFE:I

.field public static final PRESET_CONCERT_HALL:I

.field public static final PRESET_DANCE:I

.field public static final PRESET_EXTERNALIZATION:I

.field public static final PRESET_MTHEATER:I

.field public static final PRESET_SAMSUNG_TUBE_SOUND:I

.field public static final PRESET_TREBLE_BOOST:I

.field public static final PRESET_VOCAL:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v1, 0xc

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/16 v8, 0x11

    const/4 v9, 0x3

    if-eqz v0, :cond_0

    .line 2
    sput v9, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_DANCE:I

    .line 3
    sput v8, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_SAMSUNG_TUBE_SOUND:I

    .line 4
    sput v7, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_VOCAL:I

    .line 5
    sput v6, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_BASS_BOOST:I

    .line 6
    sput v5, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_TREBLE_BOOST:I

    .line 7
    sput v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_MTHEATER:I

    .line 8
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_EXTERNALIZATION:I

    .line 9
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_CAFE:I

    .line 10
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_CONCERT_HALL:I

    goto :goto_0

    .line 11
    :cond_0
    sput v9, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_DANCE:I

    .line 12
    sput v8, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_SAMSUNG_TUBE_SOUND:I

    .line 13
    sput v7, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_VOCAL:I

    .line 14
    sput v6, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_BASS_BOOST:I

    .line 15
    sput v5, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_TREBLE_BOOST:I

    .line 16
    sput v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_MTHEATER:I

    .line 17
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_EXTERNALIZATION:I

    .line 18
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_CAFE:I

    .line 19
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;->PRESET_CONCERT_HALL:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
