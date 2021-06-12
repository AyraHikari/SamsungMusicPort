.class public Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;,
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;,
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field protected c:Landroid/content/Context;

.field protected d:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;

.field protected e:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

.field protected f:Landroid/media/MediaPlayer;

.field protected g:Z

.field protected h:J

.field protected i:I

.field protected j:F
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field protected k:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected m:Landroid/media/MediaPlayer$OnCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected n:Landroid/media/MediaPlayer$OnPreparedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected o:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected p:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected q:Landroid/media/MediaPlayer$OnErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected r:Landroid/media/MediaPlayer$OnInfoListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->j:F

    .line 81
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    .line 98
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->c:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->d:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;

    .line 100
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->e:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    .line 102
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l()V

    .line 103
    sget-object p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 109
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    :cond_0
    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    .line 113
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->k:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b(Z)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-wide p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    .line 350
    iget-wide p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h:J

    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(J)V

    .line 353
    :cond_1
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    if-eqz p1, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const-wide/16 p1, 0x0

    .line 155
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h:J

    goto :goto_0

    .line 157
    :cond_0
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h:J

    :goto_0
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 309
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->o:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 299
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 331
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->q:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 341
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->r:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 289
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnSeekCompleteListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 319
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->p:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 389
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->i:I

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 393
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a:Ljava/util/Map;

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 394
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 396
    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContentValues"

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    sget-object p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 401
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->onError(Landroid/media/MediaPlayer;II)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
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

    .line 265
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 266
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h:J

    const/4 p2, 0x0

    .line 267
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    .line 269
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 360
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->k:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 275
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 278
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 206
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 208
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContentValues"

    const-string v2, "stopPlayback: error calling mediaPlayer.stop()"

    .line 212
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->k:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->e:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 119
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    return-void
.end method

.method public c()J
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->k:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->k:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()F
    .locals 1
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 143
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->j:F

    return v0
.end method

.method public f()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 167
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->i:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()F
    .locals 2

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public j()V
    .locals 3

    .line 227
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 231
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContentValues"

    const-string v2, "stopPlayback: error calling mediaPlayer.reset() or mediaPlayer.release()"

    .line 233
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    return-void
.end method

.method public k()Z
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const-wide/16 v0, 0x0

    .line 244
    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(J)V

    .line 245
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a()V

    .line 248
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->k:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Z)V

    .line 249
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->k:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->b(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method protected l()V
    .locals 2

    .line 366
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    .line 368
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 369
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 370
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 371
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 372
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 373
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 374
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->l:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 376
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 377
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method protected m()Z
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
