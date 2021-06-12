.class interface abstract Lio/reactivex/internal/operators/maybe/MaybeMergeArray$SimpleQueueWithConsumerIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/fuseable/SimpleQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeMergeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SimpleQueueWithConsumerIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/fuseable/SimpleQueue<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract consumerIndex()I
.end method

.method public abstract drop()V
.end method

.method public abstract peek()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract poll()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract producerIndex()I
.end method
