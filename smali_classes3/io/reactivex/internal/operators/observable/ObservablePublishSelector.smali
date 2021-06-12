.class public final Lio/reactivex/internal/operators/observable/ObservablePublishSelector;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver;,
        Lio/reactivex/internal/operators/observable/ObservablePublishSelector$SourceObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;+",
            "Lio/reactivex/ObservableSource<",
            "TR;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 43
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishSelector;->b:Lio/reactivex/functions/Function;

    invoke-interface {v1, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver;

    invoke-direct {v2, p1}, Lio/reactivex/internal/operators/observable/ObservablePublishSelector$TargetObserver;-><init>(Lio/reactivex/Observer;)V

    .line 57
    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 59
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublishSelector;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservablePublishSelector$SourceObserver;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservablePublishSelector$SourceObserver;-><init>(Lio/reactivex/subjects/PublishSubject;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void

    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 51
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    return-void
.end method
