.class public abstract Lkotlinx/coroutines/internal/AtomicOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/OpDescriptor;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/AtomicOp;

    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/AtomicOp;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    .line 38
    invoke-static {}, Lkotlinx/coroutines/internal/AtomicKt;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/AtomicOp;->a:Ljava/lang/Object;

    return-void
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/AtomicOp;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/internal/AtomicOp;->a:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public final a()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lkotlinx/coroutines/internal/AtomicOp;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/internal/AtomicKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2

    .line 43
    invoke-static {}, Lkotlinx/coroutines/internal/AtomicKt;->a()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lkotlinx/coroutines/internal/AtomicOp;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/internal/AtomicKt;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 57
    iget-object v0, p0, Lkotlinx/coroutines/internal/AtomicOp;->a:Ljava/lang/Object;

    .line 58
    invoke-static {}, Lkotlinx/coroutines/internal/AtomicKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/AtomicOp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/AtomicOp;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/AtomicOp;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
