.class public final Lio/reactivex/internal/operators/completable/CompletableFromUnsafeSource;
.super Lio/reactivex/Completable;
.source "SourceFile"


# instance fields
.field final a:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 23
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableFromUnsafeSource;->a:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method protected b(Lio/reactivex/CompletableObserver;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableFromUnsafeSource;->a:Lio/reactivex/CompletableSource;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableSource;->a(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
