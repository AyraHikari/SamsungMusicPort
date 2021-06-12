.class public final Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->access$getObservers$p(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 384
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 53
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->access$getObservers$p(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 261
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 36
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->access$getObservers$p(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 302
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 42
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    .line 47
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->access$getObservers$p(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 343
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 48
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
