.class final Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver$OtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OtherObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x28bcbbd2bea3b5e9L


# instance fields
.field final parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 332
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 333
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 353
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;->otherComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 338
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithMaybe$MergeWithObserver;->otherSuccess(Ljava/lang/Object;)V

    return-void
.end method
