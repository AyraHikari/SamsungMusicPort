.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->d:Lkotlin/jvm/functions/Function1;

    .line 136
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    const-string v0, "MediaChangeObservable.EmptyMediaChangeObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method


# virtual methods
.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->a:Ljava/util/List;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->b:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 229
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "SMUSIC-AlbumViewAdapter"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queue : @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->a:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extras : @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->b:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/os/Bundle;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", @"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->a:Ljava/util/List;

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 155
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->b:Landroid/os/Bundle;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->d:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 157
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->setSupportLocalMode(Z)V

    .line 156
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 143
    :cond_5
    :goto_2
    move-object p1, v0

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->a:Ljava/util/List;

    .line 144
    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->b:Landroid/os/Bundle;

    .line 145
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->d:Lkotlin/jvm/functions/Function1;

    sget-object p2, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/NowPlayingCursorProvider;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method
