.class public Lkotlinx/coroutines/internal/ArrayQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    return-void
.end method

.method private final c()V
    .locals 6

    .line 36
    iget-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    array-length v0, v0

    shl-int/lit8 v1, v0, 0x1

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    iget-object v2, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    sub-int/2addr v2, v3

    .line 40
    iget-object v3, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    iget v4, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v2}, Lkotlinx/coroutines/internal/ArrayCopyKt;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 41
    iget-object v3, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    iget v4, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    invoke-static {v3, v5, v1, v2, v4}, Lkotlinx/coroutines/internal/ArrayCopyKt;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 42
    iput-object v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    .line 43
    iput v5, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    .line 44
    iput v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->c:I

    aput-object p1, v0, v1

    .line 16
    iget p1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->c:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->c:I

    .line 17
    iget p1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->c:I

    iget v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/ArrayQueue;->c()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 12
    iget v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->c:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 23
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    aget-object v0, v0, v1

    .line 24
    iget-object v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    iget v3, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    aput-object v2, v1, v3

    .line 25
    iget v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lkotlinx/coroutines/internal/ArrayQueue;->a:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/internal/ArrayQueue;->b:I

    if-eqz v0, :cond_1

    return-object v0

    .line 26
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type T"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
