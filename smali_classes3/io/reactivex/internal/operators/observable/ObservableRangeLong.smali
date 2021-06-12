.class public final Lio/reactivex/internal/operators/observable/ObservableRangeLong;
.super Lio/reactivex/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong;->a:J

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong;->a:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong;->b:J

    add-long/2addr v4, v0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;-><init>(Lio/reactivex/Observer;JJ)V

    .line 31
    invoke-interface {p1, v6}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 32
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->run()V

    return-void
.end method
