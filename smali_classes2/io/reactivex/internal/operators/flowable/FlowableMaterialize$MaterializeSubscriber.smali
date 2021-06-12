.class final Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;
.super Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMaterialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaterializeSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber<",
        "TT;",
        "Lio/reactivex/Notification<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33ea157c2cf0a1deL


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Notification<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/SinglePostCompleteSubscriber;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 54
    invoke-static {}, Lio/reactivex/Notification;->c()Lio/reactivex/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDrop(Lio/reactivex/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Notification<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lio/reactivex/Notification;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lio/reactivex/Notification;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onDrop(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lio/reactivex/Notification;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;->onDrop(Lio/reactivex/Notification;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lio/reactivex/Notification;->a(Ljava/lang/Throwable;)Lio/reactivex/Notification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;->produced:J

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-static {p1}, Lio/reactivex/Notification;->a(Ljava/lang/Object;)Lio/reactivex/Notification;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
