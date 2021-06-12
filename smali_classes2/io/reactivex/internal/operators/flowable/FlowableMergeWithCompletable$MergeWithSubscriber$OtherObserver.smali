.class final Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;
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
.field private static final serialVersionUID:J = -0x28bcbbd2bea3b5e9L


# instance fields
.field final parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber<",
            "*>;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 132
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;->parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;->parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->otherComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver;->parent:Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 137
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
