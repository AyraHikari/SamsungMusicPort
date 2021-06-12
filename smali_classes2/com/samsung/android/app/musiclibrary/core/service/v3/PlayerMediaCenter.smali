.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable;


# instance fields
.field private final observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

.field private player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;)V
    .locals 1

    const-string v0, "observable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 80
    check-cast v0, Ljava/lang/String;

    const-string v0, "SMUSIC-SV"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerMediaCenter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;
    .locals 1

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 19
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->notifyCurrentMeta()V

    return-object v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    return-object v0
.end method

.method public registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    return-void
.end method

.method public unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->observable:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    return-void
.end method
