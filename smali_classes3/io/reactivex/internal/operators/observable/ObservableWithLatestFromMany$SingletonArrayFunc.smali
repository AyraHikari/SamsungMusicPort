.class final Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SingletonArrayFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;->a:Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;->a:Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->d:Lio/reactivex/functions/Function;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The combiner returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
