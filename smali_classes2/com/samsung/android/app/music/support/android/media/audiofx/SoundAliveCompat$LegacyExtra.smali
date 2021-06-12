.class public Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyExtra"
.end annotation


# static fields
.field public static final SET_PRESET:I

.field public static final SET_USER_EQ_DATA:I

.field public static final SET_USER_EXT_PARAM:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v1, 0x800

    const/16 v2, 0x20

    const/16 v3, 0x10

    if-eqz v0, :cond_0

    .line 95
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_PRESET:I

    .line 96
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EQ_DATA:I

    .line 97
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EXT_PARAM:I

    goto :goto_0

    .line 99
    :cond_0
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_PRESET:I

    .line 100
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EQ_DATA:I

    .line 101
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EXT_PARAM:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
