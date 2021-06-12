.class final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver$SwitchMapSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6f9e30e36197ffc7L


# instance fields
.field volatile item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final parent:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver<",
            "*TR;>;)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 253
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver$SwitchMapSingleObserver;->parent:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 0

    .line 273
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver$SwitchMapSingleObserver;->parent:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;->innerError(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver$SwitchMapSingleObserver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 258
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver$SwitchMapSingleObserver;->item:Ljava/lang/Object;

    .line 264
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver$SwitchMapSingleObserver;->parent:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapSingle$SwitchMapSingleMainObserver;->drain()V

    return-void
.end method
