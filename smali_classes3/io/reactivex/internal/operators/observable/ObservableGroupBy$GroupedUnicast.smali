.class final Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;
.super Lio/reactivex/observables/GroupedObservable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupedUnicast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/observables/GroupedObservable<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$State<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$State<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lio/reactivex/observables/GroupedObservable;-><init>(Ljava/lang/Object;)V

    .line 188
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->a:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    return-void
.end method

.method public static a(Ljava/lang/Object;ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Z)Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast<",
            "TK;TT;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;-><init>(ILio/reactivex/internal/operators/observable/ObservableGroupBy$GroupByObserver;Ljava/lang/Object;Z)V

    .line 183
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;)V

    return-object p1
.end method


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->a:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->a:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->a:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 205
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGroupBy$GroupedUnicast;->a:Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableGroupBy$State;->onComplete()V

    return-void
.end method
