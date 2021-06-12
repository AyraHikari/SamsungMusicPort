.class public interface abstract Lcom/google/android/exoplayer2/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)V
.end method

.method public abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract a(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract a_()I
.end method

.method public abstract b()Lcom/google/android/exoplayer2/RendererCapabilities;
.end method

.method public abstract b_()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract c()Lcom/google/android/exoplayer2/util/MediaClock;
.end method

.method public abstract f()Lcom/google/android/exoplayer2/source/SampleStream;
.end method

.method public abstract g()Z
.end method

.method public abstract h()V
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract k()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract l()V
.end method

.method public abstract u()Z
.end method

.method public abstract v()Z
.end method
