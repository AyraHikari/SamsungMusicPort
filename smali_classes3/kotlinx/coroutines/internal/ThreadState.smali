.class final Lkotlinx/coroutines/internal/ThreadState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private final c:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/ThreadState;->c:Lkotlin/coroutines/CoroutineContext;

    .line 15
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/ThreadState;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 19
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadState;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/ThreadState;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/ThreadState;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadState;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/ThreadState;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/ThreadState;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lkotlinx/coroutines/internal/ThreadState;->b:I

    return-void
.end method

.method public final c()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 14
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadState;->c:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method
