.class final Lio/reactivex/internal/operators/observable/ObservableReplay$UnBoundedFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnBoundedFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BufferSupplier<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 919
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;-><init>(I)V

    return-object v0
.end method
