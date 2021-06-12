.class public interface abstract Lcom/facebook/internal/WorkQueue$WorkItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WorkItem"
.end annotation


# virtual methods
.method public abstract cancel()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract moveToFront()V
.end method
