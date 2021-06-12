.class final Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;
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
.field final parent:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 242
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 262
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 247
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

    .line 252
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver;->otherSuccess(Ljava/lang/Object;)V

    return-void
.end method
