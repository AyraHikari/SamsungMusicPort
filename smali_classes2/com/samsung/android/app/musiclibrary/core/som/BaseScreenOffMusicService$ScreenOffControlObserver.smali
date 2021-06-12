.class final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreenOffControlObserver"
.end annotation


# instance fields
.field private final offMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

.field private state:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;)V
    .locals 1

    const-string v0, "offMusicHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->offMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    return-void
.end method

.method private static synthetic state$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->state:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 546
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 548
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->offMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOff(Z)V

    goto :goto_0

    .line 547
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->offMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOffTimeOut()V

    .line 550
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->state:I

    return-void

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
