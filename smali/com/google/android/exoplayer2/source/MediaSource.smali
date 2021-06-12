.class public interface abstract Lcom/google/android/exoplayer2/source/MediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;,
        Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
.end method

.method public abstract a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
