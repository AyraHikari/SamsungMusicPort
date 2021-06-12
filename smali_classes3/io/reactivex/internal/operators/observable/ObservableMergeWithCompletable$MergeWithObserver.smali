.class final Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeWithObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver;
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
.field private static final serialVersionUID:J = -0x3fbd8a98db8e76f7L


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field volatile mainDone:Z

.field volatile otherDone:Z

.field final otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    .line 66
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver;

    .line 68
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 102
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver$OtherObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->mainDone:Z

    .line 90
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->otherDone:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method otherComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->otherDone:Z

    .line 113
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->mainDone:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    :cond_0
    return-void
.end method

.method otherError(Ljava/lang/Throwable;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->mainDisposable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->downstream:Lio/reactivex/Observer;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithCompletable$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/HalfSerializer;->a(Lio/reactivex/Observer;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method
