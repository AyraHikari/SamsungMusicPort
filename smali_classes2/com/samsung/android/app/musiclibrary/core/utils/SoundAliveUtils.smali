.class public final Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;
    }
.end annotation


# static fields
.field private static final ACTION_MUSIC_LAUNCHED:Ljava/lang/String; = "com.samsung.android.app.music.intent.action.MUSIC_LAUNCHED"

.field private static final AUTO_GENRES_SET:[I

.field private static final LOGGING_EXTRA_SOUNDALIVE_FROM_MUSIC:Ljava/lang/String; = "where"

.field private static final SAFX_EXTRA_AUTO:Ljava/lang/String; = "com.sec.android.app.Auto"

.field public static final SAFX_EXTRA_GENRE_INFO:Ljava/lang/String; = "genreINFO"

.field public static final SAFX_EXTRA_PRESET_INFO:Ljava/lang/String; = "presetINFO"

.field public static final SAFX_GENRE_INFO:Ljava/lang/String; = "com.sec.android.app.SA_GENRE_INFO"

.field private static final SAFX_GENTRE_NONE:I = 0xc

.field public static final SAFX_REQUEST_GENRE:Ljava/lang/String; = "com.sec.android.app.safx.ACTION_REQUEST_GENRE"

.field private static final SEC_GENRES_SET:[Ljava/lang/String;

.field private static final SOUNDALIVE_FX:Ljava/lang/String; = "FX"

.field public static final SOUNDALIVE_GENRE_INDEX:Ljava/lang/String; = "SOUNDALIVE_GENRE_INDEX"

.field private static final SOUNDALIVE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.soundalive"

.field private static final SOUNDALIVE_V4:Ljava/lang/String; = "40"

.field private static final SOUND_EFFECTS_CLASS_NAME:Ljava/lang/String; = "com.android.settings.Settings$SoundEffectSettingsActivity"

.field private static final SOUND_EFFECTS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final sAutoGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHasSoundAlivePackage:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    const-string v1, "Alternative/Indie"

    const-string v2, "Blues"

    const-string v3, "Children\'s"

    const-string v4, "Classical"

    const-string v5, "Comedy/Spoken"

    const-string v6, "Country"

    const-string v7, "Dance"

    const-string v8, "Easy Listening"

    const-string v9, "Electronic"

    const-string v10, "Folk"

    const-string v11, "Holiday"

    const-string v12, "House"

    const-string v13, "Jazz"

    const-string v14, "Latin"

    const-string v15, "New Age"

    const-string v16, "Others"

    const-string v17, "Pop"

    const-string v18, "Rap/Hip Hop"

    const-string v19, "Reggae"

    const-string v20, "Religious"

    const-string v21, "R&B/Soul"

    const-string v22, "Rock"

    const-string v23, "Soundtrack"

    const-string v24, "Trance"

    const-string v25, "<unknown>"

    const-string v26, "Vocal"

    const-string v27, "World"

    const-string v28, "Rap / Hip-hop"

    .line 56
    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->SEC_GENRES_SET:[Ljava/lang/String;

    const/16 v0, 0x1c

    .line 79
    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_JAZZ:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_JAZZ:I

    const/16 v2, 0xc

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0xd

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    const/16 v2, 0xe

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0xf

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x10

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x11

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x12

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x13

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x14

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    const/16 v2, 0x15

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    const/16 v2, 0x16

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x17

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_NORMAL:I

    const/16 v2, 0x18

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x19

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x1a

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const/16 v2, 0x1b

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->AUTO_GENRES_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoGenre(Ljava/lang/String;I)I
    .locals 2

    if-nez p0, :cond_0

    return p1

    .line 107
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->initAutoGenreMap()V

    .line 114
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 115
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/GenreUtil;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 120
    :cond_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_3
    return p1
.end method

.method public static hasExternalSoundAlive(Landroid/content/Context;)Z
    .locals 1

    .line 186
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->isSoundAliveV4()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.android.app.soundalive"

    .line 191
    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->hasPackageInternal(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method private static hasPackageInternal(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 1

    .line 195
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sHasSoundAlivePackage:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 196
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sHasSoundAlivePackage:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 p0, 0x1

    .line 200
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sHasSoundAlivePackage:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sHasSoundAlivePackage:Ljava/lang/Boolean;

    .line 204
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sHasSoundAlivePackage:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static initAutoGenreMap()V
    .locals 5

    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->SEC_GENRES_SET:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 98
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->sAutoGenreMap:Ljava/util/HashMap;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->SEC_GENRES_SET:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->AUTO_GENRES_SET:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isSoundAliveFX()Z
    .locals 2

    const-string v0, "FX"

    .line 177
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSoundAliveV4()Z
    .locals 2

    const-string v0, "40"

    .line 173
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static launchExternalSA(Landroid/app/Activity;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->launchExternalSA(Landroid/app/Activity;ZI)Z

    move-result p0

    return p0
.end method

.method public static launchExternalSA(Landroid/app/Activity;ZI)Z
    .locals 2

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.AUDIO_SESSION"

    .line 135
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "Player"

    goto :goto_0

    :cond_0
    const-string p1, "Library"

    :goto_0
    const-string p2, "where"

    .line 138
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 140
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "Ui"

    const-string p2, "SoundAlive Activity Not Found!!!"

    .line 142
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static launchSoundEffects(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->launchSoundEffects(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static launchSoundEffects(Landroid/app/Activity;Z)V
    .locals 3

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SoundEffectSettingsActivity"

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "Player"

    goto :goto_0

    :cond_0
    const-string p1, "Library"

    :goto_0
    const-string v1, "where"

    .line 163
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Ui"

    const-string p1, "Sound effects Activity Not Found!!!"

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static notifyAudioEffectWithSession(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    goto :goto_0

    :cond_0
    const-string p1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 222
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "android.media.extra.AUDIO_SESSION"

    .line 223
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.media.extra.PACKAGE_NAME"

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.sec.android.app.Auto"

    const/16 p2, 0xc

    .line 225
    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->getAutoGenre(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static notifyMusicLaunched(Landroid/content/Context;)V
    .locals 2

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.music.intent.action.MUSIC_LAUNCHED"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.soundalive"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static shouldUseInternalSoundAlive()Z
    .locals 1

    .line 182
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->x:Z

    return v0
.end method
