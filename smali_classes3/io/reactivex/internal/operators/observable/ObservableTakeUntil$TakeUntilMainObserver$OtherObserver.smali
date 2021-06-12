.class final Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OtherObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x78a53ec6852cfbbfL


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver;->this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 127
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver;->this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;->otherComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver;->this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 116
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 117
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver;->this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;->otherComplete()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 111
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
