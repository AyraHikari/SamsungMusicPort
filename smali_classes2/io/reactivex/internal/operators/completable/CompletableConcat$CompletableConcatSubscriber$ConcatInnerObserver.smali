.class final Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatInnerObserver"
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
.field private static final serialVersionUID:J = -0x4bb35305c09b480fL


# instance fields
.field final parent:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 236
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;->parent:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 251
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;->parent:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver;->parent:Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 241
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
