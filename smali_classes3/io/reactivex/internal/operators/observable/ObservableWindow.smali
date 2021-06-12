.class public final Lio/reactivex/internal/operators/observable/ObservableWindow;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;",
        "Lio/reactivex/Observable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:I


# virtual methods
.method public a(Lio/reactivex/Observer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 38
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->b:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->b:J

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;-><init>(Lio/reactivex/Observer;JI)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->a:Lio/reactivex/ObservableSource;

    new-instance v8, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->b:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->c:J

    iget v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindow;->d:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;-><init>(Lio/reactivex/Observer;JJI)V

    invoke-interface {v0, v8}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method
