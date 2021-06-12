.class final Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnlockOp"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->a:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 407
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->a:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/Empty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->a:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    :goto_0
    if-eqz p1, :cond_2

    .line 409
    check-cast p1, Lkotlinx/coroutines/sync/MutexImpl;

    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 416
    iget-object p1, p1, Lkotlinx/coroutines/sync/MutexImpl;->a:Ljava/lang/Object;

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->a:Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->f()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 409
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.sync.MutexImpl"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
