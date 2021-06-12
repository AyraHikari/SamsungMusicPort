.class public interface abstract Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(IIF)V
.end method

.method public abstract a(IZ)V
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
.end method

.method public abstract a(J)V
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method public abstract e()V
.end method

.method public abstract getAvailableTracks()Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBufferedPercent()I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x64L
    .end annotation
.end method

.method public abstract getCurrentPosition()J
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract getDuration()J
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract getPlaybackSpeed()F
.end method

.method public abstract getVolume()F
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end method

.method public abstract getWindowInfo()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
.end method

.method public abstract setMeasureBasedOnAspectRatioEnabled(Z)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setVideoUri(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
