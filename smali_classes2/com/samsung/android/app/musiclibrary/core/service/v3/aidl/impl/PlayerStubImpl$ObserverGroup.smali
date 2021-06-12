.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObserverGroup"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final callbackFromAidl$delegate:Lkotlin/Lazy;

.field private final callbacksTo:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;

.field private final player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "callbackFromAidl"

    const-string v4, "getCallbackFromAidl()Ljava/util/concurrent/CopyOnWriteArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 135
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbackFromAidl$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbackFromAidl$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->callbackFromAidl$delegate:Lkotlin/Lazy;

    .line 139
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->callbacksTo:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;

    return-void
.end method

.method public static final synthetic access$getCallbackFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->getCallbackFromAidl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final getCallbackFromAidl()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->callbackFromAidl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method


# virtual methods
.method public final printLog(Ljava/lang/String;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

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

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerStubImpl Group "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ObserverGroup "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public final registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V
    .locals 2

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->getCallbackFromAidl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->callbacksTo:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->getCallbackFromAidl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast p1, Landroid/os/IInterface;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt;->a(Ljava/util/List;Landroid/os/IInterface;)V

    return-void
.end method

.method public final unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->getCallbackFromAidl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast p1, Landroid/os/IInterface;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt;->b(Ljava/util/List;Landroid/os/IInterface;)V

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->getCallbackFromAidl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup;->callbacksTo:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$ObserverGroup$callbacksTo$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    :cond_0
    return-void
.end method
