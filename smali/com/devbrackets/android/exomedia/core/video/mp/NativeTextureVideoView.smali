.class public Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.source "SourceFile"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;
.implements Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;
    }
.end annotation


# instance fields
.field protected k:Landroid/view/View$OnTouchListener;

.field protected l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(J)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 338
    new-instance p2, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-direct {p2, p1, p0, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;-><init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    .line 340
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;

    invoke-direct {p1, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;)V

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 p1, 0x1

    .line 342
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setFocusable(Z)V

    .line 343
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setFocusableInTouchMode(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestFocus()Z

    const/4 p1, 0x0

    .line 346
    invoke-virtual {p0, p1, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(II)Z

    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 271
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestLayout()V

    .line 272
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->invalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a()V

    .line 91
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestFocus()Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b()V

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->k()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->i()F

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->e()F

    move-result v0

    return v0
.end method

.method public getWindowInfo()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->j()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->k:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->k:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 133
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 302
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 292
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 324
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 334
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnSeekCompleteListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 312
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->k:Landroid/view/View$OnTouchListener;

    .line 139
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->a(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method
