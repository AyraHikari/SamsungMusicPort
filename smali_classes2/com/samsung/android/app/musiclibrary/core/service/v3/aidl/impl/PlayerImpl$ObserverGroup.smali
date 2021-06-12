.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObserverGroup"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final callbacksFromAidl:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

.field private final callbacksTo$delegate:Lkotlin/Lazy;

.field private final iPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;

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

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "iPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->iPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->tag:Ljava/lang/String;

    .line 55
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksTo$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksTo$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->callbacksTo$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->callbacksFromAidl:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    return-void
.end method

.method public static final synthetic access$forEachOrRemove(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;Ljava/util/concurrent/CopyOnWriteArrayList;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->forEachOrRemove(Ljava/util/concurrent/CopyOnWriteArrayList;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getCallbacksFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->callbacksFromAidl:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    return-object p0
.end method

.method public static final synthetic access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->iPlayer:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    return-object p0
.end method

.method public static final synthetic access$printLifeCycleLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->printLifeCycleLog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$toMain(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->toMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final contains(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TE;>;>;TE;)Z"
        }
    .end annotation

    .line 137
    check-cast p1, Ljava/lang/Iterable;

    .line 272
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 138
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final forEachOrRemove(Ljava/util/concurrent/CopyOnWriteArrayList;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TE;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 125
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 270
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 126
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->callbacksTo$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private final printLifeCycleLog(Ljava/lang/String;)V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->tag:Ljava/lang/String;

    const-string v1, "SMUSIC-SV"

    .line 279
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

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiLifeCycle> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final remove(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "TE;>;>;TE;)Z"
        }
    .end annotation

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 274
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 145
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final toMain(Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 119
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$toMain$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$toMain$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final count()I
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 2

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->contains(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->access$getCallbacksFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 107
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->remove(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$Companion;

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object p1

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->access$getCallbacksFromAidl$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
