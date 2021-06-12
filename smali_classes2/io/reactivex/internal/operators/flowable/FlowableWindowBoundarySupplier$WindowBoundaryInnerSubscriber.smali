.class final Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowBoundaryInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 306
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 331
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 334
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->b:Z

    .line 335
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 321
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->b:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->b:Z

    .line 326
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 311
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->b:Z

    .line 315
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->dispose()V

    .line 316
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;

    invoke-virtual {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber;->innerNext(Lio/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber;)V

    return-void
.end method
