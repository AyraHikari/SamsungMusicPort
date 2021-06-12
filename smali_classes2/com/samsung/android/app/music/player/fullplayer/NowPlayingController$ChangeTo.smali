.class final Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChangeTo"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final b:I


# virtual methods
.method public final a()I
    .locals 3

    .line 212
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 217
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->b:I

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v3, p1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->b:I

    iget p1, p1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->b:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeTo(mediaChangeObservable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
