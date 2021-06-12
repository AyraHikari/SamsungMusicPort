.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;

.field private final callbacksTo$delegate:Lkotlin/Lazy;

.field private player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "callbacksTo"

    const-string v4, "getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbacksTo$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbacksTo$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->callbacksTo$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;

    return-void
.end method

.method public static final synthetic access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->callbacksTo$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
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

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerMediaCenter ObserverGroup "

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
.method public final changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    :cond_1
    return-void
.end method

.method public final count()I
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final notifyCurrentMeta()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    :cond_0
    return-void
.end method

.method public registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 2

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup$callbackFrom$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    :cond_0
    return-void
.end method
