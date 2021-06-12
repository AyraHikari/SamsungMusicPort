.class public Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;
.implements Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;
    }
.end annotation


# instance fields
.field protected k:Landroid/view/View$OnTouchListener;

.field protected l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

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

    .line 333
    new-instance p2, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-direct {p2, p1, p0, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;-><init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    .line 335
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;

    invoke-direct {p2, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;-><init>(Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p1, 0x1

    .line 337
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setFocusable(Z)V

    .line 338
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setFocusableInTouchMode(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestFocus()Z

    const/4 p1, 0x0

    .line 341
    invoke-virtual {p0, p1, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(II)Z

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

    .line 144
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setVideoURI(Landroid/net/Uri;)V

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

    .line 264
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 266
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    .line 267
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->invalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a()V

    .line 86
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestFocus()Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b()V

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

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

    .line 159
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->i()F

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->e()F

    move-result v0

    return v0
.end method

.method public getWindowInfo()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->j()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->k:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->k:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 128
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

    .line 221
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 297
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 287
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 319
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 329
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 277
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnSeekCompleteListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 307
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->k:Landroid/view/View$OnTouchListener;

    .line 134
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->a(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method
