.class public final Lio/reactivex/internal/operators/observable/ObservableSingleMaybe;
.super Lio/reactivex/Maybe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    .line 26
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe;->a:Lio/reactivex/ObservableSource;

    return-void
.end method


# virtual methods
.method public b(Lio/reactivex/MaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe;->a:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/ObservableSingleMaybe$SingleElementObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
