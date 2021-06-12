.class public final Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final c:J


# virtual methods
.method public a(Lio/reactivex/Observer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    new-instance v5, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v5}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 38
    invoke-interface {p1, v5}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 40
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;->b:Lio/reactivex/functions/Predicate;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;->a:Lio/reactivex/ObservableSource;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver;-><init>(Lio/reactivex/Observer;JLio/reactivex/functions/Predicate;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/ObservableSource;)V

    .line 41
    invoke-virtual {v7}, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver;->subscribeNext()V

    return-void
.end method
