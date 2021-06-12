.class public final Lkotlinx/coroutines/internal/MainDispatcherLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/MainCoroutineDispatcher;

.field public static final b:Lkotlinx/coroutines/internal/MainDispatcherLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->b:Lkotlinx/coroutines/internal/MainDispatcherLoader;

    .line 10
    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 14
    :try_start_0
    const-class v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    const-string v3, "ServiceLoader.load(clz, clz.classLoader)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 18
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .line 99
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    goto :goto_1

    .line 101
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 102
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 18
    invoke-interface {v5}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->b()I

    move-result v5

    .line 103
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 105
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 18
    invoke-interface {v7}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->b()I

    move-result v7

    if-ge v5, v7, :cond_1

    move-object v4, v6

    move v5, v7

    goto :goto_0

    .line 111
    :cond_2
    :goto_1
    check-cast v4, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v4, :cond_3

    .line 18
    invoke-static {v4, v2}, Lkotlinx/coroutines/internal/MainDispatchersKt;->a(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    new-instance v2, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    invoke-direct {v2, v1, v1, v0, v1}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lkotlinx/coroutines/MainCoroutineDispatcher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 22
    new-instance v3, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    invoke-direct {v3, v2, v1, v0, v1}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v3

    check-cast v2, Lkotlinx/coroutines/MainCoroutineDispatcher;

    :goto_2
    return-object v2
.end method
