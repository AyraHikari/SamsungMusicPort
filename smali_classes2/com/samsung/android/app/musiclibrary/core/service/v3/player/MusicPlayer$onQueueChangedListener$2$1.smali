.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extra"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An operation is not implemented: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "not implemented"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public onNextPlayingItemChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayingItemChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Z)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayingItemChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    return-void
.end method

.method public onPlayingItemUpdated(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public onQueueChanged([J)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onQueueComplete()V
    .locals 3

    .line 129
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An operation is not implemented: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "not implemented"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onQueueComposed(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$notifyQueueComposed(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    return-void
.end method

.method public onQueueError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "not implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 1

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$notifyQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    return-void
.end method
