.class public Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;
.super Ljava/lang/Object;
.source "SoundAliveCompat.java"


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
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v1, 0x800

    const/16 v2, 0x20

    const/16 v3, 0x10

    if-eqz v0, :cond_0

    .line 2
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_PRESET:I

    .line 3
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EQ_DATA:I

    .line 4
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EXT_PARAM:I

    goto :goto_0

    .line 5
    :cond_0
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_PRESET:I

    .line 6
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EQ_DATA:I

    .line 7
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;->SET_USER_EXT_PARAM:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
