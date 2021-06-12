.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x636ee25

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    .line 87
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 233
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 87
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 3

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMetaChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$printLifeCycleLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x636ee25

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    const-string v1, "MediaDataCenter.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 50
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 225
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 51
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$printLifeCycleLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x636ee25

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    const-string v1, "MediaDataCenter.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 61
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 227
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 61
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 3
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

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$setQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Ljava/util/List;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " q.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$printLifeCycleLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)Landroid/os/Bundle;

    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x636ee25

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicQueue(Ljava/util/List;Landroid/os/Bundle;)V

    .line 71
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 71
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueueOptionChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$printLifeCycleLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)Landroid/os/Bundle;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x636ee25

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    .line 80
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 231
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    const-string v2, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 80
    invoke-interface {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    return-void
.end method
