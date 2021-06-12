.class final Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelReduceFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SlotPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x693e266f84553f6L


# instance fields
.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final releaseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 231
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->releaseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method releaseSlot()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->releaseIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method tryAcquireSlot()I
    .locals 2

    .line 243
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->get()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 248
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method
