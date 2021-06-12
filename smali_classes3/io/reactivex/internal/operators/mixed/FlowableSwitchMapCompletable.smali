.class public final Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;
.super Lio/reactivex/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Completable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z


# virtual methods
.method protected b(Lio/reactivex/CompletableObserver;)V
    .locals 4

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;->a:Lio/reactivex/Flowable;

    new-instance v1, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;->b:Lio/reactivex/functions/Function;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapCompletable$SwitchMapCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->a(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
