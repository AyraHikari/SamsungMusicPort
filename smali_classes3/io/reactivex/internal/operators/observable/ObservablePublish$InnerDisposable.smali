.class final Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xf44f24fda471418L


# instance fields
.field final child:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 295
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->child:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 306
    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 308
    check-cast v0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->a(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 300
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setParent(Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, v0, p1}, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p1, p0}, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->a(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)V

    :cond_0
    return-void
.end method
