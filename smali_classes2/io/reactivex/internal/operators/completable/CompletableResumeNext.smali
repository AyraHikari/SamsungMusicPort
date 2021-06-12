.class public final Lio/reactivex/internal/operators/completable/CompletableResumeNext;
.super Lio/reactivex/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNextObserver;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/CompletableSource;

.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected b(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 39
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNextObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext;->b:Lio/reactivex/functions/Function;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNextObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;)V

    .line 40
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 41
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext;->a:Lio/reactivex/CompletableSource;

    invoke-interface {p1, v0}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
