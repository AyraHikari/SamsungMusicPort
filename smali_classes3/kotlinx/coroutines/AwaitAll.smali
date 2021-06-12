.class final Lkotlinx/coroutines/AwaitAll;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;,
        Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field volatile a:I

.field private final c:[Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/AwaitAll;

    const-string v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/AwaitAll;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>([Lkotlinx/coroutines/Deferred;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "deferreds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/AwaitAll;->c:[Lkotlinx/coroutines/Deferred;

    .line 60
    iget-object p1, p0, Lkotlinx/coroutines/AwaitAll;->c:[Lkotlinx/coroutines/Deferred;

    array-length p1, p1

    iput p1, p0, Lkotlinx/coroutines/AwaitAll;->a:I

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/AwaitAll;)[Lkotlinx/coroutines/Deferred;
    .locals 0

    .line 59
    iget-object p0, p0, Lkotlinx/coroutines/AwaitAll;->c:[Lkotlinx/coroutines/Deferred;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 119
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 123
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 65
    invoke-static {p0}, Lkotlinx/coroutines/AwaitAll;->a(Lkotlinx/coroutines/AwaitAll;)[Lkotlinx/coroutines/Deferred;

    move-result-object v2

    array-length v2, v2

    .line 124
    new-array v2, v2, [Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    .line 125
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    .line 126
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 66
    invoke-static {p0}, Lkotlinx/coroutines/AwaitAll;->a(Lkotlinx/coroutines/AwaitAll;)[Lkotlinx/coroutines/Deferred;

    move-result-object v7

    aget-object v6, v7, v6

    .line 67
    invoke-interface {v6}, Lkotlinx/coroutines/Deferred;->j()Z

    .line 68
    new-instance v7, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/Job;

    invoke-direct {v7, p0, v1, v8}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;-><init>(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/Job;)V

    .line 69
    move-object v8, v7

    check-cast v8, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 127
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 69
    invoke-interface {v6, v8}, Lkotlinx/coroutines/Deferred;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v6

    invoke-virtual {v7, v6}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->a(Lkotlinx/coroutines/DisposableHandle;)V

    .line 70
    aput-object v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    :cond_0
    new-instance v3, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;

    invoke-direct {v3, p0, v2}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;-><init>(Lkotlinx/coroutines/AwaitAll;[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V

    .line 129
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 74
    invoke-virtual {v6, v3}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->a(Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 77
    :cond_1
    invoke-interface {v1}, Lkotlinx/coroutines/CancellableContinuation;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v3}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->a()V

    goto :goto_2

    .line 81
    :cond_2
    check-cast v3, Lkotlinx/coroutines/CancelHandlerBase;

    .line 131
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 81
    invoke-interface {v1, v3}, Lkotlinx/coroutines/CancellableContinuation;->a(Lkotlin/jvm/functions/Function1;)V

    .line 132
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->d()Ljava/lang/Object;

    move-result-object v0

    .line 118
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_3
    return-object v0
.end method
