.class final Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;
.super Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x51dae9f17ccbb88eL


# instance fields
.field final limit:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 785
    invoke-direct {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$BoundedReplayBuffer;-><init>()V

    .line 786
    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;->limit:I

    return-void
.end method


# virtual methods
.method truncate()V
    .locals 2

    .line 792
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;->limit:I

    if-le v0, v1, :cond_0

    .line 793
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableReplay$SizeBoundReplayBuffer;->removeFirst()V

    :cond_0
    return-void
.end method
