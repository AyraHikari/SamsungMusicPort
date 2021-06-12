.class public Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.source "SourceFile"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;
    }
.end annotation


# instance fields
.field protected k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->h()V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->a(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 103
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(J)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->c()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->e()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->l()V

    return-void
.end method

.method public getAvailableTracks()Ljava/util/Map;
    .locals 1
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

    .line 175
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->j()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->h()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->k()F

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b()F

    move-result v0

    return v0
.end method

.method public getWindowInfo()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->i()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 2

    .line 206
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;-><init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    .line 208
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;)V

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0, v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->a(II)Z

    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(I)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->k:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(Landroid/net/Uri;)V

    return-void
.end method
