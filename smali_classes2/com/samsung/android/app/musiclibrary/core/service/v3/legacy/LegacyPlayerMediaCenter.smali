.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;
    }
.end annotation


# instance fields
.field private final observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

.field private player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)V
    .locals 1

    const-string v0, "observable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    return-void
.end method

.method private final printLifeCycleLog(Ljava/lang/String;)V
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SMUSIC-SV"

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LifeCycle> legacy "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;
    .locals 4

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePlayer() to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->printLifeCycleLog(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 27
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->notifyCurrentMeta()V

    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->notifyCurrentPlaybackState()V

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p1, :cond_0

    const-string v1, "com.samsung.android.app.music.core.customAction.REQUEST_QUEUE"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$DefaultImpls;->sendCustom$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    return-object v0
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method
