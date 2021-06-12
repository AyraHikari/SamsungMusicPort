.class final Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRepeatUntil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RepeatUntilObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x628271a96862fff0L


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final stop:Lio/reactivex/functions/BooleanSupplier;

.field final upstream:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/BooleanSupplier;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/BooleanSupplier;",
            "Lio/reactivex/internal/disposables/SequentialDisposable;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Lio/reactivex/Observer;

    .line 50
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->upstream:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 51
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->source:Lio/reactivex/ObservableSource;

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->stop:Lio/reactivex/functions/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 74
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->stop:Lio/reactivex/functions/BooleanSupplier;

    invoke-interface {v0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->subscribeNext()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 77
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->upstream:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method subscribeNext()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 94
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v1, p0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    neg-int v0, v0

    .line 96
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method
