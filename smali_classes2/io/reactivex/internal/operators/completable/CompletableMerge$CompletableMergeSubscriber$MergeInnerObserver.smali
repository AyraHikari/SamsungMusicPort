.class final Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MergeInnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/CompletableObserver;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37ce7cbca0ace5dL


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver;->this$0:Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 208
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 198
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver;->this$0:Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;->innerComplete(Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver;->this$0:Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;->innerError(Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber$MergeInnerObserver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 188
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
