.class public Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;
    }
.end annotation


# instance fields
.field protected a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

.field protected b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected c:Z

.field protected d:Landroid/content/Context;

.field protected e:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

.field protected f:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->c:Z

    .line 50
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->f:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->d:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->e:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    .line 57
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->n()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(I)V

    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 115
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(J)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Z)V

    .line 67
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(J)V

    if-eqz p2, :cond_0

    .line 70
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 71
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {p1, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 73
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {p2, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Landroid/net/Uri;)V

    .line 74
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {p1, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b(Z)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Landroid/view/Surface;)V

    .line 221
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->c:Z

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 212
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->f()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->c:Z

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->e:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Z)V

    .line 99
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()F
    .locals 1
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c()F

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->o()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Z)V

    .line 124
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b(Z)V

    .line 125
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->c:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Z)V

    .line 130
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->c:Z

    return-void
.end method

.method public f()J
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->m()I

    move-result v0

    return v0
.end method

.method public i()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->n()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Map;
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

    .line 187
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public k()F
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j()F

    move-result v0

    return v0
.end method

.method public l()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->h()V

    return-void
.end method

.method public m()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a()V

    return-void
.end method

.method protected n()V
    .locals 0

    .line 231
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->o()V

    return-void
.end method

.method protected o()V
    .locals 2

    .line 235
    new-instance v0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    .line 237
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->f:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V

    .line 238
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->f:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V

    return-void
.end method
