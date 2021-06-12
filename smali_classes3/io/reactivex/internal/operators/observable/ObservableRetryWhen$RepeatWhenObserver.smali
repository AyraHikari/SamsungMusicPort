.class final Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRetryWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RepeatWhenObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver$InnerRepeatObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xb23eb3635d55cf6L


# instance fields
.field volatile active:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final inner:Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver$InnerRepeatObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver<",
            "TT;>.InnerRepeatObserver;"
        }
    .end annotation
.end field

.field final signaller:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field

.field final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/subjects/Subject;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/subjects/Subject<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 84
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->downstream:Lio/reactivex/Observer;

    .line 85
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->signaller:Lio/reactivex/subjects/Subject;

    .line 86
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->source:Lio/reactivex/ObservableSource;

    .line 87
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    .line 89
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver$InnerRepeatObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver$InnerRepeatObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->inner:Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver$InnerRepeatObserver;

    .line 90
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 123
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->inner:Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver$InnerRepeatObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method innerComplete()V
    .locals 2

    .line 137
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 138
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 133
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method innerNext()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->subscribeNext()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 112
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->inner:Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver$InnerRepeatObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->active:Z

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->signaller:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method subscribeNext()V
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    .line 145
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 149
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->active:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->active:Z

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v0, p0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRetryWhen$RepeatWhenObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method
