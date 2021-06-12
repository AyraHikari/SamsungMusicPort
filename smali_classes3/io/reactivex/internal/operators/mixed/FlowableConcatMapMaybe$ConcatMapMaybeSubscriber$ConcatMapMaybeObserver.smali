.class final Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a58ff0addf51744L


# instance fields
.field final parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber<",
            "*TR;>;)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 312
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 0

    .line 336
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 332
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 317
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber$ConcatMapMaybeObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapMaybe$ConcatMapMaybeSubscriber;->innerSuccess(Ljava/lang/Object;)V

    return-void
.end method
