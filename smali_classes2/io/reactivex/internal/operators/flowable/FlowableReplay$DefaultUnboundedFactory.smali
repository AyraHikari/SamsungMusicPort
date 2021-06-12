.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$DefaultUnboundedFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultUnboundedFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1262
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$UnboundedReplayBuffer;-><init>(I)V

    return-object v0
.end method
