.class final Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber$ConcatMapSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatMapSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2a58ff0addf51744L


# instance fields
.field final parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber<",
            "*TR;>;)V"
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 307
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber$ConcatMapSingleObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 0

    .line 326
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber$ConcatMapSingleObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 312
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

    .line 317
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber$ConcatMapSingleObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/mixed/FlowableConcatMapSingle$ConcatMapSingleSubscriber;->innerSuccess(Ljava/lang/Object;)V

    return-void
.end method
