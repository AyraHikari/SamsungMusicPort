.class public Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;
.super Lcom/google/android/exoplayer2/Player$DefaultEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;
    }
.end annotation


# instance fields
.field protected a:F
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field

.field private final b:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/ExoPlayer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private k:Lcom/devbrackets/android/exomedia/util/Repeater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private l:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/google/android/exoplayer2/source/MediaSource;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private q:Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private u:Landroid/os/PowerManager$WakeLock;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private v:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 143
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Player$DefaultEventListener;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->i:Z

    .line 108
    new-instance v1, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    .line 110
    new-instance v1, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v1}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->k:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 121
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->p:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 133
    iput-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->u:Landroid/os/PowerManager$WakeLock;

    .line 136
    new-instance v1, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    invoke-direct {v1, p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->v:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    .line 138
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->w:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 140
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a:F

    .line 144
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->k:Lcom/devbrackets/android/exomedia/util/Repeater;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->a(I)V

    .line 147
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->k:Lcom/devbrackets/android/exomedia/util/Repeater;

    new-instance v1, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;

    invoke-direct {v1, p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->a(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->f:Landroid/os/Handler;

    .line 151
    new-instance v9, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;

    invoke-direct {v9, p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    .line 152
    new-instance v0, Lcom/devbrackets/android/exomedia/core/renderer/RendererProvider;

    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->f:Landroid/os/Handler;

    move-object v3, v0

    move-object v4, p1

    move-object v6, v9

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v3 .. v9}, Lcom/devbrackets/android/exomedia/core/renderer/RendererProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->p()Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/renderer/RendererProvider;->a(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    .line 155
    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/renderer/RendererProvider;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->o:Ljava/util/List;

    .line 157
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->p:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->e:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    .line 158
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->e:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 160
    sget-object p1, Lcom/devbrackets/android/exomedia/ExoMedia$Data;->e:Lcom/google/android/exoplayer2/LoadControl;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/devbrackets/android/exomedia/ExoMedia$Data;->e:Lcom/google/android/exoplayer2/LoadControl;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->a([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 162
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->a(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method static synthetic a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->w:I

    return p1
.end method

.method static synthetic a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->t:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    return-object p0
.end method

.method static synthetic b(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->m:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    return-object p0
.end method

.method static synthetic c(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->s:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    return-object p0
.end method

.method static synthetic d(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 665
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->t:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    if-eqz p1, :cond_0

    .line 666
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->k:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/util/Repeater;->a()V

    goto :goto_0

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->k:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/util/Repeater;->b()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->r:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    return-object p0
.end method

.method static synthetic f(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->q:Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;

    return-object p0
.end method

.method private r()V
    .locals 7

    .line 633
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->b()Z

    move-result v0

    .line 634
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->i()I

    move-result v1

    .line 636
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v2, v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->b(ZI)I

    move-result v2

    .line 637
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->b()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 638
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v3, v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->a(ZI)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    .line 642
    invoke-direct {p0, v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d(Z)V

    goto :goto_0

    :cond_0
    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 644
    invoke-direct {p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d(Z)V

    .line 650
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    invoke-virtual {v2, v6, v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->a([IZ)Z

    move-result v2

    .line 651
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-virtual {v6, v4, v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->a([IZ)Z

    move-result v4

    or-int/2addr v2, v4

    .line 652
    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-virtual {v4, v3, v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->a([IZ)Z

    move-result v3

    or-int/2addr v2, v3

    .line 654
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 655
    invoke-interface {v4, v0, v1}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->a(ZI)V

    if-eqz v2, :cond_3

    .line 658
    invoke-interface {v4}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->a()V

    goto :goto_1

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x64
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x64
        0x3
        0x2
        0x3
    .end array-data
.end method


# virtual methods
.method protected a(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;)I
    .locals 2
    .param p1    # Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 526
    sget-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;->a:[I

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    .line 531
    :pswitch_0
    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->ordinal()I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->l:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->l:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->l:Landroid/view/Surface;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 245
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(IILjava/lang/Object;Z)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->a(I)V

    return-void
.end method

.method protected a(IILjava/lang/Object;Z)V
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 546
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Renderer;

    .line 548
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->a()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 549
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->a(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/PlayerMessage;->a(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/PlayerMessage;->a(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 554
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Ljava/util/List;)V

    goto :goto_2

    .line 556
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/PlayerMessage;

    .line 557
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/PlayerMessage;->i()Lcom/google/android/exoplayer2/PlayerMessage;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->a(J)V

    .line 381
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->c()Z

    move-result p2

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->a(ZI)V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 190
    sget-object v0, Lcom/devbrackets/android/exomedia/ExoMedia$Data;->f:Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->p:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;->a(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->l:Landroid/view/Surface;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(IILjava/lang/Object;Z)V

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->r:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    return-void
.end method

.method public a(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 213
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->t:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 214
    :goto_0
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d(Z)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 173
    invoke-interface {v1, p0, p1}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->m:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 194
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->n:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->i:Z

    .line 197
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->e()V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/PlayerMessage;",
            ">;)V"
        }
    .end annotation

    .line 569
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/PlayerMessage;

    const/4 v3, 0x1

    move v4, v1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    .line 573
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/PlayerMessage;->j()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 583
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->a(Z)V

    .line 376
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b(Z)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->r()V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 8
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

    .line 263
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 269
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v3, 0x4

    .line 275
    new-array v3, v3, [Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    sget-object v4, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    sget-object v4, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->CLOSED_CAPTION:Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    aput-object v4, v3, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->METADATA:Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    aput-object v4, v3, v1

    .line 276
    array-length v1, v3

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v4, v3, v5

    .line 277
    invoke-virtual {p0, v4}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;)I

    move-result v6

    .line 278
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->a()I

    move-result v7

    if-le v7, v6, :cond_2

    .line 279
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->b(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public b(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected b(Z)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->u:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 599
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->u:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 601
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 602
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()F
    .locals 1
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 330
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a:F

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->i:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 352
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->n:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->d()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->j:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->a()V

    .line 361
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->n:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->a(Lcom/google/android/exoplayer2/source/MediaSource;)V

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->i:Z

    .line 364
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->a(Z)V

    .line 370
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->d()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 4

    .line 390
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->i()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-wide/16 v2, 0x0

    .line 395
    invoke-virtual {p0, v2, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(J)V

    .line 396
    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d()V

    .line 399
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->e()V

    return v1
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d(Z)V

    .line 406
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    .line 408
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->l:Landroid/view/Surface;

    .line 409
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->e()V

    .line 410
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b(Z)V

    return-void
.end method

.method public i()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->a()I

    move-result v0

    return v0
.end method

.method public j()F
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->c()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    .line 430
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->b:F

    return v0
.end method

.method public k()J
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()J
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()I
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->m()I

    move-result v0

    return v0
.end method

.method public n()Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->o()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->g()I

    move-result v1

    .line 453
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    .line 455
    new-instance v2, Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 456
    invoke-interface {v3}, Lcom/google/android/exoplayer2/ExoPlayer;->i()I

    move-result v3

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 458
    invoke-interface {v4}, Lcom/google/android/exoplayer2/ExoPlayer;->h()I

    move-result v4

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/WindowInfo;-><init>(IIILcom/google/android/exoplayer2/Timeline$Window;)V

    return-object v2
.end method

.method public o()Z
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->b()Z

    move-result v0

    return v0
.end method

.method protected p()Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .line 615
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    return-object v1

    .line 620
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/C;->e:Ljava/util/UUID;

    .line 623
    :try_start_0
    new-instance v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->a(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v3

    new-instance v4, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;

    invoke-direct {v4, p0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    .line 624
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->v:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "ExoMediaPlayer"

    const-string v3, "Unable to create a DrmSessionManager due to an exception"

    .line 627
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
