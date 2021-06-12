.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/IQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
.end method

.method public abstract getPosition(I)[I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPosition(II)[I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract isEndOfPosition()Z
.end method

.method public abstract loadSavedValues()V
.end method

.method public abstract movePosition(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveRequest;)V
.end method

.method public abstract moveToNext(I)Z
.end method

.method public abstract moveToPrev()V
.end method

.method public abstract removePositions([I)Z
.end method

.method public abstract reorder(II)Z
.end method

.method public abstract setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$InnerOpenRequest;)V
.end method
