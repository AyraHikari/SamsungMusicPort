.class public final Lio/reactivex/internal/operators/observable/ObservableSkipLast;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSkipLast$SkipLastObserver;
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
.field final b:I


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

    .line 32
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipLast;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSkipLast$SkipLastObserver;

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipLast;->b:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/ObservableSkipLast$SkipLastObserver;-><init>(Lio/reactivex/Observer;I)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
