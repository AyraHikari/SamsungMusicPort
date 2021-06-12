.class public final Lio/reactivex/internal/operators/observable/BlockingObservableIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:I


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 38
    new-instance v0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable;->b:I

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/BlockingObservableIterable$BlockingObservableIterator;-><init>(I)V

    .line 39
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/BlockingObservableIterable;->a:Lio/reactivex/ObservableSource;

    invoke-interface {v1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-object v0
.end method
