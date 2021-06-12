.class final Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapMaybeObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
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

.field final parent:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber<",
            "*TR;>;)V"
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 272
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 0

    .line 297
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 293
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;->innerComplete(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;->innerError(Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 277
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

    .line 282
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver;->item:Ljava/lang/Object;

    .line 283
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber$SwitchMapMaybeObserver;->parent:Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/mixed/FlowableSwitchMapMaybe$SwitchMapMaybeSubscriber;->drain()V

    return-void
.end method
