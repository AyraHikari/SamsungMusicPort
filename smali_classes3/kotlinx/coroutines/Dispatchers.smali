.class public final Lkotlinx/coroutines/Dispatchers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/Dispatchers;

.field private static final b:Lkotlinx/coroutines/CoroutineDispatcher;

.field private static final c:Lkotlinx/coroutines/CoroutineDispatcher;

.field private static final d:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lkotlinx/coroutines/Dispatchers;

    invoke-direct {v0}, Lkotlinx/coroutines/Dispatchers;-><init>()V

    sput-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/Dispatchers;

    .line 33
    invoke-static {}, Lkotlinx/coroutines/CoroutineContextKt;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/Dispatchers;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 75
    sget-object v0, Lkotlinx/coroutines/Unconfined;->b:Lkotlinx/coroutines/Unconfined;

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    sput-object v0, Lkotlinx/coroutines/Dispatchers;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 90
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/DefaultScheduler;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/Dispatchers;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 33
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 1

    .line 55
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-object v0
.end method
