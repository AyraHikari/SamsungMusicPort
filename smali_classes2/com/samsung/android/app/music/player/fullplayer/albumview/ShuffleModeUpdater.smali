.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater$Companion;


# instance fields
.field private b:I

.field private c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

.field private final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->e:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->b:I

    .line 97
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->EmptyMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    const-string v0, "MediaChangeObservable.EmptyMediaChangeObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 102
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/EmptyNowPlayingCursor;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    return-void
.end method

.method public getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 105
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 106
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "extra.list_mode_type"

    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    const-string v0, "extra.shuffle_state"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 110
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->b:I

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setExtra(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p1

    const-string v0, "extra.list_position"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v0

    .line 229
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "SMUSIC-ShuffleModeUpdater"

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shuffle mode updated to type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", currentQueuePosition: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", adapterPosition: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    :goto_1
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
    .locals 0
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

    return-void
.end method

.method public setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method
