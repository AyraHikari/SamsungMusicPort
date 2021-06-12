.class public final Lcom/google/android/gms/internal/zzalr;
.super Lcom/google/android/gms/internal/zzamb;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/google/android/gms/internal/zzamq;

.field private final e:Z

.field private f:I

.field private g:I

.field private h:Landroid/media/MediaPlayer;

.field private i:Landroid/net/Uri;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/google/android/gms/internal/zzamn;

.field private p:Z

.field private q:I

.field private r:Lcom/google/android/gms/internal/zzama;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/zzamo;Lcom/google/android/gms/internal/zzamq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamb;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->f:I

    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzalr;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/zzalr;->d:Lcom/google/android/gms/internal/zzamq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzalr;->p:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzalr;->e:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzalr;->d:Lcom/google/android/gms/internal/zzamq;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzamq;->a(Lcom/google/android/gms/internal/zzamb;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzalr;)Lcom/google/android/gms/internal/zzama;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzalr;->r:Lcom/google/android/gms/internal/zzama;

    return-object p0
.end method

.method private final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    const-string p1, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Z)V
    .locals 2

    const-string v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->b()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzalr;->b(I)V

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    :cond_1
    return-void
.end method

.method private final b(I)V
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->d:Lcom/google/android/gms/internal/zzamq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamq;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->b:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->b()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->f:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->d:Lcom/google/android/gms/internal/zzamq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamq;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->b:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->c()V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->f:I

    return-void
.end method

.method private final f()V
    .locals 6

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalr;->i:Landroid/net/Uri;

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzalr;->a(Z)V

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->t()Lcom/google/android/gms/ads/internal/overlay/zzr;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iput v1, p0, Lcom/google/android/gms/internal/zzalr;->l:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzalr;->p:Z

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzamn;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/gms/internal/zzamn;->a(Landroid/graphics/SurfaceTexture;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzamn;->start()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzamn;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzamn;->b()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzalr;->i:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->u()Lcom/google/android/gms/ads/internal/overlay/zzs;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzalr;->b(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->i:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to initialize MediaPlayer at "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/internal/zzalr;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private final g()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzalr;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzalr;->a(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-ne v3, v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamb;->e()V

    :cond_3
    return-void
.end method

.method private final h()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    const-string v0, "MediaPlayer"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzalr;->p:Z

    if-eqz v1, :cond_0

    const-string v1, " spherical"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzamn;->a(FF)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzama;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalr;->r:Lcom/google/android/gms/internal/zzama;

    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzalr;->b(I)V

    iput v0, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->d:Lcom/google/android/gms/internal/zzamq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamq;->b()V

    return-void
.end method

.method public final c()V
    .locals 3

    const-string v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->h()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzalr;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->a:Lcom/google/android/gms/internal/zzami;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzami;->a()V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzaly;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzaly;-><init>(Lcom/google/android/gms/internal/zzalr;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    return-void
.end method

.method public final d()V
    .locals 3

    const-string v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->h()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzalr;->b(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzalz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzalz;-><init>(Lcom/google/android/gms/internal/zzalr;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->b:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzams;->a()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzalr;->a(F)V

    return-void
.end method

.method public final getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/zzalr;->l:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "AdMediaPlayerView completion"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzalr;->b(I)V

    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzalt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzalt;-><init>(Lcom/google/android/gms/internal/zzalr;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    sget-object p1, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const/4 p3, -0x1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzalr;->b(I)V

    iput p3, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    sget-object p3, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzalu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzalu;-><init>(Lcom/google/android/gms/internal/zzalr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    sget-object p1, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcom/google/android/gms/internal/zzalr;->c:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x25

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzalr;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzalr;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    if-nez v2, :cond_7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    mul-int v0, v0, p2

    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    mul-int v1, v1, p1

    if-ge v0, v1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    mul-int p1, p1, p2

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    div-int v0, p1, v0

    move p1, v0

    goto :goto_3

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    mul-int v0, v0, p2

    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    mul-int v1, v1, p1

    if-le v0, v1, :cond_8

    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    mul-int p2, p2, p1

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    div-int v1, p2, v0

    goto :goto_2

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_3

    :cond_2
    move p2, v0

    goto :goto_3

    :cond_3
    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v1

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    iget v4, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    if-ne v1, v3, :cond_6

    if-le v4, p2, :cond_6

    iget v1, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    div-int/2addr v1, v2

    goto :goto_1

    :cond_6
    move v1, v2

    move p2, v4

    :goto_1
    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    goto :goto_0

    :cond_7
    move p1, v0

    :goto_2
    move p2, v1

    :cond_8
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzalr;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzamn;->a(II)V

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->m:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->m:I

    if-ne v0, p1, :cond_b

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->n:I

    if-lez v0, :cond_c

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->n:I

    if-eq v0, p2, :cond_c

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->g()V

    :cond_c
    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->m:I

    iput p2, p0, Lcom/google/android/gms/internal/zzalr;->n:I

    :cond_d
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzalr;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->d:Lcom/google/android/gms/internal/zzamq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamq;->a()V

    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzals;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzals;-><init>(Lcom/google/android/gms/internal/zzalr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamb;->a(I)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->g()V

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    iget v0, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamb;->c()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamb;->e()V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "AdMediaPlayerView surface created"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->f()V

    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/zzalv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzalv;-><init>(Lcom/google/android/gms/internal/zzalr;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "AdMediaPlayerView surface destroyed"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamn;->b()V

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzalx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzalx;-><init>(Lcom/google/android/gms/internal/zzalr;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzalr;->a(Z)V

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string p1, "AdMediaPlayerView surface changed"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->g:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    if-ne v2, p2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    if-ne v2, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzalr;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzamb;->a(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamb;->c()V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzalr;->o:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzamn;->a(II)V

    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzalw;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/zzalw;-><init>(Lcom/google/android/gms/internal/zzalr;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->d:Lcom/google/android/gms/internal/zzamq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzamq;->b(Lcom/google/android/gms/internal/zzamb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalr;->a:Lcom/google/android/gms/internal/zzami;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzalr;->r:Lcom/google/android/gms/internal/zzama;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzami;->a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/zzama;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->j:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/zzalr;->k:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzil;->a(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzil;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/google/android/gms/internal/zzil;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzalr;->i:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzalr;->q:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzalr;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzalr;->invalidate()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
