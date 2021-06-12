.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$Priority;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem$ERROR_URI;
    }
.end annotation


# instance fields
.field private mSeekPosition:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->mSeekPosition:J

    return-void
.end method


# virtual methods
.method public abstract getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public getQueueItemId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSeekPosition()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->mSeekPosition:J

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSupportPlaySpeed()Z
    .locals 5

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v1

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSoundQuality()J

    move-result-wide v3

    long-to-int v0, v1

    .line 50
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->g(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeCache(J)V
    .locals 0

    return-void
.end method

.method public setSeekPosition(J)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->mSeekPosition:J

    return-void
.end method
