.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final controlStub$delegate:Lkotlin/Lazy;

.field private final observerGroup$delegate:Lkotlin/Lazy;

.field private final player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

.field private final queueStub:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "observerGroup"

    const-string v4, "getObserverGroup()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "controlStub"

    const-string v4, "getControlStub()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    const-string p1, "PlayerStubImpl init"

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->printLog(Ljava/lang/String;)V

    .line 31
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$observerGroup$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$observerGroup$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->observerGroup$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->controlStub$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->queueStub:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;

    return-void
.end method

.method private final getControlStub()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->controlStub$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;

    return-object v0
.end method

.method private final getObserverGroup()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->observerGroup$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    return-object v0
.end method


# virtual methods
.method public getMeta()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlayControl()Landroid/os/IBinder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl$Stub;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl$Stub;
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->getControlStub()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayControl$Stub;

    return-object v0
.end method

.method public bridge synthetic getPlayQueue()Landroid/os/IBinder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->queueStub:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$queueStub$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayQueue$Stub;

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    return-object v0
.end method

.method public final printLog(Ljava/lang/String;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMUSIC-SV"

    .line 193
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

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerStubImpl "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V
    .locals 1

    const-string v0, "registerPlayerCallback"

    .line 34
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->printLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->getObserverGroup()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V

    return-void
.end method

.method public sendCustom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->sendCustom(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendCustomWithBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v1, "Bundle.EMPTY"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->sendCustom(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V
    .locals 1

    const-string v0, "unregisterPlayerCallback"

    .line 40
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->printLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->getObserverGroup()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V

    return-void
.end method
