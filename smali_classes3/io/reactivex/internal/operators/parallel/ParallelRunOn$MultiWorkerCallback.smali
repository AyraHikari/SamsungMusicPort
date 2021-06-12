.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelRunOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWorkerCallback"
.end annotation


# instance fields
.field final a:[Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lio/reactivex/internal/operators/parallel/ParallelRunOn;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/parallel/ParallelRunOn;[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;[",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->c:Lio/reactivex/internal/operators/parallel/ParallelRunOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->a:[Lorg/reactivestreams/Subscriber;

    .line 96
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->b:[Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public a(ILio/reactivex/Scheduler$Worker;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->c:Lio/reactivex/internal/operators/parallel/ParallelRunOn;

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->a:[Lorg/reactivestreams/Subscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$MultiWorkerCallback;->b:[Lorg/reactivestreams/Subscriber;

    invoke-virtual {v0, p1, v1, v2, p2}, Lio/reactivex/internal/operators/parallel/ParallelRunOn;->a(I[Lorg/reactivestreams/Subscriber;[Lorg/reactivestreams/Subscriber;Lio/reactivex/Scheduler$Worker;)V

    return-void
.end method
