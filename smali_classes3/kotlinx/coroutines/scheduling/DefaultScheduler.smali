.class public final Lkotlinx/coroutines/scheduling/DefaultScheduler;
.super Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;
.source "SourceFile"


# static fields
.field public static final b:Lkotlinx/coroutines/scheduling/DefaultScheduler;

.field private static final c:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/DefaultScheduler;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    const-string v1, "kotlinx.coroutines.io.parallelism"

    .line 17
    invoke-static {}, Lkotlinx/coroutines/internal/SystemPropsKt;->a()I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->c(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/DefaultScheduler;->a(I)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;-><init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 17
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DefaultDispatcher cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultDispatcher"

    return-object v0
.end method
