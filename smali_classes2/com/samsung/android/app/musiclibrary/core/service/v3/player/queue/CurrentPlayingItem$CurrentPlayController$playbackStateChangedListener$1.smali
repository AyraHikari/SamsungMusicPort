.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $_playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;",
            ")V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;->$_playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 3

    const-string v0, "playbackState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;->$_playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    :cond_0
    return-void
.end method
