.class final Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SongType"
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:I

.field final d:J


# direct methods
.method private constructor <init>(ZZIJ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->a:Z

    .line 58
    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->b:Z

    .line 59
    iput p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    .line 60
    iput-wide p4, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;
    .locals 6

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->a(I)I

    move-result v3

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSoundQuality()J

    move-result-wide v4

    const/high16 v0, 0x80000

    if-ne v3, v0, :cond_2

    if-eqz p2, :cond_0

    .line 38
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent;->obtain(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerContent;

    move-result-object p0

    .line 39
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerContent;->getQuality()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-string p2, "milk_streaming_quality_mobile"

    .line 43
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p2, "milk_streaming_quality_wifi"

    .line 48
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 50
    invoke-static {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/OnlinePlayingUri;->a(I)J

    move-result-wide v4

    .line 53
    :cond_2
    :goto_0
    new-instance p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;-><init>(ZZIJ)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 65
    instance-of v0, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->a:Z

    iget-boolean v2, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->a:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    iget v2, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    iget-wide v4, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SongType cpName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", is radio : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$SongType;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
