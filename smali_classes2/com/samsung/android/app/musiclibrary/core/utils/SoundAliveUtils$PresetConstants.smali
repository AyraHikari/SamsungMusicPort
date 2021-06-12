.class public Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresetConstants"
.end annotation


# static fields
.field public static final PRESET_CLASSIC:I

.field public static final PRESET_JAZZ:I

.field public static final PRESET_NORMAL:I

.field public static final PRESET_POP:I

.field public static final PRESET_ROCK:I

.field public static final PRESET_USER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_NORMAL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_NORMAL:I

    .line 68
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_POP:I

    sput v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    .line 70
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_ROCK:I

    sput v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    .line 72
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_JAZZ:I

    sput v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_JAZZ:I

    .line 74
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_CLASSIC:I

    sput v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    .line 76
    sget v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_USER:I

    sput v0, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_USER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
