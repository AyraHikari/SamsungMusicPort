.class public final Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;,
        Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;,
        Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SamplerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainObserver;
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
.field final b:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation
.end field

.field final c:Z


# virtual methods
.method public a(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lio/reactivex/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;)V

    .line 38
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->c:Z

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->b:Lio/reactivex/ObservableSource;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainEmitLast;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable;->b:Lio/reactivex/ObservableSource;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast;-><init>(Lio/reactivex/Observer;Lio/reactivex/ObservableSource;)V

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
