.class final Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary;
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
.field final a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber<",
            "TT;TB;>;)V"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 273
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 296
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->b:Z

    .line 300
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->innerComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 286
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->b:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->b:Z

    .line 291
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->innerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 278
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber;->innerNext()V

    return-void
.end method
