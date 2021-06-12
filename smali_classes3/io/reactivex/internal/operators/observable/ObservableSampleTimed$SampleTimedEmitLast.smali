.class final Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;
.super Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSampleTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SampleTimedEmitLast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x63165c33f8fff493L


# instance fields
.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    .line 148
    invoke-direct/range {p0 .. p5}, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver;-><init>(Lio/reactivex/Observer;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    .line 149
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method complete()V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;->emit()V

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;->emit()V

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_0
    return-void
.end method
