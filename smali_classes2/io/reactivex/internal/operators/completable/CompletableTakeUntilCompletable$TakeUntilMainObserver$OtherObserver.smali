.class final Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver$OtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OtherObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/CompletableObserver;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x47d5c91fdd74042eL


# instance fields
.field final parent:Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 125
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 135
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 130
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
