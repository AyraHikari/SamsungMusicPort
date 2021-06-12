.class public final Lcom/samsung/android/app/music/model/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_AD:I = 0x1

.field private static final BANNER_AD:I = 0x2

.field private static final NO:Ljava/lang/String; = "0"

.field private static final SPECIAL_AD:I = 0x8

.field private static final VIDEO_AD:I = 0x4

.field private static final YES:Ljava/lang/String; = "1"


# instance fields
.field private final mAudioAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "audioAdYn"
    .end annotation
.end field

.field private final mBannerAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "bannerAdYn"
    .end annotation
.end field

.field private final mSpecialAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "specialAdYn"
    .end annotation
.end field

.field private final mVideoAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "videoAdYn"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/model/AdInfo;->mAudioAdYn:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/model/AdInfo;->mBannerAdYn:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/samsung/android/app/music/model/AdInfo;->mVideoAdYn:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/samsung/android/app/music/model/AdInfo;->mSpecialAdYn:Ljava/lang/String;

    return-void
.end method

.method public static convertAdInfoToLong(Lcom/samsung/android/app/music/model/AdInfo;)J
    .locals 3

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/music/model/AdInfo;->mAudioAdYn:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "1"

    iget-object v2, p0, Lcom/samsung/android/app/music/model/AdInfo;->mAudioAdYn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/model/AdInfo;->mBannerAdYn:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "1"

    iget-object v2, p0, Lcom/samsung/android/app/music/model/AdInfo;->mBannerAdYn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x2

    .line 57
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/model/AdInfo;->mVideoAdYn:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "1"

    iget-object v2, p0, Lcom/samsung/android/app/music/model/AdInfo;->mVideoAdYn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    or-int/lit8 v0, v0, 0x4

    :cond_6
    const-string v1, "1"

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/model/AdInfo;->mSpecialAdYn:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    or-int/lit8 v0, v0, 0x8

    :cond_7
    int-to-long v0, v0

    return-wide v0
.end method

.method public static isAudioAdOn(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecialAdOn(J)Z
    .locals 2

    const-wide/16 v0, 0x8

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoAdOn(J)Z
    .locals 2

    const-wide/16 v0, 0x4

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public hasBannerAdYn()Z
    .locals 2

    const-string v0, "1"

    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/music/model/AdInfo;->mBannerAdYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoAdOn()Z
    .locals 2

    const-string v0, "1"

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/model/AdInfo;->mVideoAdYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
