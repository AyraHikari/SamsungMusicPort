.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Sender;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private D:J

.field private E:I

.field private final a:[Lcom/google/android/exoplayer2/Renderer;

.field private final b:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private final c:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final d:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private final e:Lcom/google/android/exoplayer2/LoadControl;

.field private final f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final j:Lcom/google/android/exoplayer2/Timeline$Window;

.field private final k:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final l:J

.field private final m:Z

.field private final n:Lcom/google/android/exoplayer2/DefaultMediaClock;

.field private final o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/exoplayer2/util/Clock;

.field private final r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

.field private s:Lcom/google/android/exoplayer2/SeekParameters;

.field private t:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private u:Lcom/google/android/exoplayer2/source/MediaSource;

.field private v:[Lcom/google/android/exoplayer2/Renderer;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;ZIZLandroid/os/Handler;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p10

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    .line 133
    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-object v4, p3

    .line 134
    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v5, p4

    .line 135
    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:Lcom/google/android/exoplayer2/LoadControl;

    move v6, p5

    .line 136
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Z

    move/from16 v6, p6

    .line 137
    iput v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z:I

    move/from16 v6, p7

    .line 138
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A:Z

    move-object/from16 v6, p8

    .line 139
    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h:Landroid/os/Handler;

    move-object/from16 v6, p9

    .line 140
    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 141
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q:Lcom/google/android/exoplayer2/util/Clock;

    .line 142
    new-instance v6, Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;-><init>()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 144
    invoke-interface {p4}, Lcom/google/android/exoplayer2/LoadControl;->e()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:J

    .line 145
    invoke-interface {p4}, Lcom/google/android/exoplayer2/LoadControl;->f()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m:Z

    .line 147
    sget-object v5, Lcom/google/android/exoplayer2/SeekParameters;->e:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/SeekParameters;

    .line 148
    new-instance v5, Lcom/google/android/exoplayer2/PlaybackInfo;

    sget-object v6, Lcom/google/android/exoplayer2/Timeline;->a:Lcom/google/android/exoplayer2/Timeline;

    sget-object v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object p4, v5

    move-object p5, v6

    move-wide/from16 p6, v8

    move-object/from16 p8, v7

    move-object/from16 p9, p3

    invoke-direct/range {p4 .. p9}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;JLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    iput-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 154
    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;)V

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 155
    array-length v4, v1

    new-array v4, v4, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b:[Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 156
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 157
    aget-object v6, v1, v5

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/Renderer;->a(I)V

    .line 158
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v7, v1, v5

    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->b()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-direct {v1, p0, v3}, Lcom/google/android/exoplayer2/DefaultMediaClock;-><init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    .line 162
    new-array v1, v4, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    .line 163
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 164
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 165
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    .line 169
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayerImplInternal:Handler"

    const/16 v4, -0x10

    invoke-direct {v1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:Landroid/os/HandlerThread;

    .line 171
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 172
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-interface {v3, v1, p0}, Lcom/google/android/exoplayer2/util/Clock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-void
.end method

.method private a(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I
    .locals 9

    .line 1271
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 1273
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z:I

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 1279
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v3, 0x1

    .line 1280
    invoke-virtual {p2, v4, p1, v3}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->b:Ljava/lang/Object;

    .line 1279
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/Timeline;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 649
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->d()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 648
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 655
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e()V

    const/4 v0, 0x0

    .line 656
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Z

    const/4 v1, 0x2

    .line 657
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    .line 660
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 663
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 664
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    goto :goto_1

    .line 667
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->h()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, v3, :cond_2

    if-eqz p4, :cond_4

    .line 672
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v4, p1, v2

    .line 673
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 675
    :cond_3
    new-array p1, v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    const/4 v2, 0x0

    :cond_4
    if-eqz v3, :cond_6

    .line 681
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    .line 682
    iget-boolean p1, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->g:Z

    if-eqz p1, :cond_5

    .line 683
    iget-object p1, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->b(J)J

    move-result-wide p2

    .line 684
    iget-object p1, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:J

    sub-long v2, p2, v2

    iget-boolean p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m:Z

    invoke-interface {p1, v2, v3, p4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(JZ)V

    .line 687
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(J)V

    .line 688
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q()V

    goto :goto_3

    .line 690
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->b(Z)V

    .line 691
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(J)V

    .line 694
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(I)Z

    return-wide p2
.end method

.method private a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 1299
    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 1300
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 1304
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 1312
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v7, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->b:I

    iget-wide v8, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->c:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/Timeline;->a(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object v2

    .line 1324
    :cond_2
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1325
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v5, 0x1

    invoke-virtual {v1, p1, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->b:Ljava/lang/Object;

    .line 1324
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_3

    .line 1328
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 1332
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result p1

    if-eq p1, v4, :cond_4

    .line 1335
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1336
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->c:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1335
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v3

    .line 1316
    :catch_0
    new-instance p2, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->b:I

    iget-wide v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->c:J

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw p2
.end method

.method private a(F)V
    .locals 5

    .line 1064
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->e()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1066
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eqz v1, :cond_1

    .line 1067
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a()[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    .line 1068
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1070
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1074
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(IZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1588
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1589
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v1, v1, p1

    .line 1590
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    aput-object v1, v2, p3

    .line 1591
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->a_()I

    move-result p3

    if-nez p3, :cond_2

    .line 1592
    iget-object p3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v3, p3, p1

    .line 1594
    iget-object p3, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p3, p3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object p3

    .line 1596
    invoke-static {p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 1598
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p3, p3, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 1602
    :goto_1
    iget-object p2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, p2, p1

    iget-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    .line 1604
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a()J

    move-result-wide v9

    move-object v2, v1

    .line 1602
    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/Renderer;->a(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V

    .line 1605
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->a(Lcom/google/android/exoplayer2/Renderer;)V

    if-eqz p3, :cond_2

    .line 1608
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Renderer;->b_()V

    :cond_2
    return-void
.end method

.method private a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 713
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 715
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    .line 716
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->a(J)V

    .line 717
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 718
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->b(I)V

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(IJ)Z

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1126
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eq v2, v3, :cond_0

    return-void

    .line 1131
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 1132
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->b:Lcom/google/android/exoplayer2/Timeline;

    .line 1133
    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;->c:Ljava/lang/Object;

    .line 1134
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/Timeline;)V

    .line 1135
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j()V

    .line 1138
    iget v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    if-lez v1, :cond_7

    .line 1139
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 1140
    iput v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    .line 1141
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    if-eqz v1, :cond_3

    .line 1142
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    .line 1143
    invoke-direct {v0, v1, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 1144
    iput-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    if-nez v1, :cond_1

    .line 1148
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n()V

    goto/16 :goto_2

    .line 1150
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1151
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1152
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1, v2, v14, v15}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v11

    .line 1153
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1155
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    move-wide v12, v8

    goto :goto_0

    :cond_2
    move-wide v12, v14

    .line 1154
    :goto_0
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    goto :goto_2

    .line 1157
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_6

    .line 1158
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1159
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n()V

    goto :goto_2

    .line 1161
    :cond_4
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A:Z

    .line 1162
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/Timeline;->b(Z)I

    move-result v1

    .line 1161
    invoke-direct {v0, v3, v1, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 1163
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1164
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1165
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1, v2, v14, v15}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v11

    .line 1166
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1169
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    move-wide v12, v8

    goto :goto_1

    :cond_5
    move-wide v12, v14

    .line 1167
    :goto_1
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_6
    :goto_2
    return-void

    .line 1176
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    .line 1177
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v13, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    .line 1178
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1180
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1181
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    .line 1182
    invoke-virtual {v2, v1, v13, v14}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v12

    .line 1183
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1185
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move-wide v8, v13

    :goto_3
    move-wide v1, v13

    move-wide v13, v8

    move-wide v15, v1

    .line 1184
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_9
    return-void

    .line 1189
    :cond_a
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->e()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v10

    if-nez v10, :cond_b

    .line 1190
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1191
    invoke-virtual {v2, v1, v11, v7}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/exoplayer2/Timeline$Period;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_b
    iget-object v11, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 1192
    :goto_4
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/Timeline;->a(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_10

    .line 1196
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result v1

    if-ne v1, v12, :cond_c

    .line 1199
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n()V

    return-void

    .line 1203
    :cond_c
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1204
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->c:I

    .line 1203
    invoke-direct {v0, v3, v1, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 1205
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1206
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1207
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v14

    .line 1208
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v2, v1, v7}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    if-eqz v10, :cond_e

    .line 1212
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->b:Ljava/lang/Object;

    .line 1213
    iget-object v3, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a(I)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    .line 1214
    :goto_5
    iget-object v3, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v3, :cond_e

    .line 1215
    iget-object v10, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    .line 1216
    iget-object v3, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1217
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v6, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {v3, v6, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/MediaPeriodInfo;I)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    goto :goto_5

    .line 1219
    :cond_d
    iget-object v3, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a(I)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v3

    iput-object v3, v10, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    goto :goto_5

    .line 1224
    :cond_e
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    move-wide v8, v4

    :goto_6
    invoke-direct {v0, v14, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v15

    .line 1225
    iget-object v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-wide/from16 v17, v4

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void

    :cond_10
    if-eq v11, v1, :cond_11

    .line 1231
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1234
    :cond_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1235
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1236
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2, v11, v13, v14}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v12

    .line 1237
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1240
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_7

    :cond_12
    move-wide v8, v13

    :goto_7
    invoke-direct {v0, v12, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v1

    .line 1241
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-wide v3, v13

    move-wide v13, v1

    move-wide v15, v3

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    return-void

    .line 1246
    :cond_13
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-virtual {v2, v1, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1247
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f(Z)V

    :cond_14
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 579
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 586
    invoke-direct {v1, v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    .line 590
    new-instance v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i()I

    move-result v9

    invoke-direct {v2, v9}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    move-object v15, v2

    move-wide v12, v7

    move-wide/from16 v18, v12

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 596
    :cond_0
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 597
    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 598
    iget-object v12, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v12, v9, v10, v11}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(IJ)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v9

    .line 599
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v12, v4

    move-object v15, v9

    move-wide/from16 v18, v10

    goto :goto_0

    .line 603
    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 604
    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->c:J

    cmp-long v2, v14, v7

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v15, v9

    move-wide/from16 v18, v10

    :goto_2
    const/4 v9, 0x2

    .line 609
    :try_start_0
    iget-object v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v10, :cond_a

    iget v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    if-lez v10, :cond_3

    goto :goto_5

    :cond_3
    cmp-long v0, v12, v7

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 614
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    .line 615
    invoke-direct {v1, v6, v3, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZZ)V

    goto :goto_6

    .line 620
    :cond_4
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v15, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 621
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    cmp-long v4, v12, v4

    if-eqz v4, :cond_5

    .line 623
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/SeekParameters;

    .line 624
    invoke-interface {v0, v12, v13, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide v4

    goto :goto_3

    :cond_5
    move-wide v4, v12

    .line 627
    :goto_3
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v7

    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-nez v0, :cond_8

    .line 629
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-wide/from16 v16, v3

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v2, :cond_6

    .line 640
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    :cond_6
    return-void

    :cond_7
    move-wide v4, v12

    .line 633
    :cond_8
    :try_start_1
    invoke-direct {v1, v15, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v4

    cmp-long v0, v12, v4

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v2, v3

    move-wide/from16 v16, v4

    goto :goto_7

    .line 611
    :cond_a
    :goto_5
    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    move-wide/from16 v16, v12

    .line 638
    :goto_7
    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v2, :cond_b

    .line 640
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 638
    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    move-wide/from16 v16, v12

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz v2, :cond_c

    .line 640
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    :cond_c
    throw v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e(Lcom/google/android/exoplayer2/PlayerMessage;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V
    .locals 8
    .param p1    # Lcom/google/android/exoplayer2/MediaPeriodHolder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1545
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1550
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1551
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 1552
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v5, v5, v3

    .line 1553
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->a_()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    .line 1554
    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 1557
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1558
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1559
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1560
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->f()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 1564
    :cond_3
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/Renderer;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1567
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->j:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1568
    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1570
    invoke-direct {p0, v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a([ZI)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 961
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->a_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 962
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->k()V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->s:Lcom/google/android/exoplayer2/SeekParameters;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/LoadControl;->a([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method private a(ZZ)V
    .locals 2

    const/4 v0, 0x1

    .line 731
    invoke-direct {p0, v0, p1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZZ)V

    .line 733
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    const/4 p1, 0x0

    .line 735
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    .line 736
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/LoadControl;->b()V

    .line 737
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 17

    move-object/from16 v1, p0

    .line 762
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->b(I)V

    const/4 v3, 0x0

    .line 763
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Z

    .line 764
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->b()V

    const-wide/16 v4, 0x0

    .line 765
    iput-wide v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    .line 766
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v0, v4, v6

    .line 768
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/Renderer;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v0, "ExoPlayerImplInternal"

    const-string v8, "Stop failed."

    .line 771
    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 774
    :cond_0
    new-array v0, v3, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    .line 775
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->b(Z)V

    .line 776
    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 778
    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->C:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    :cond_1
    if-eqz p3, :cond_3

    .line 781
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    sget-object v5, Lcom/google/android/exoplayer2/Timeline;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/Timeline;)V

    .line 782
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    .line 783
    iget-object v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/PlayerMessage;->a(Z)V

    goto :goto_2

    .line 785
    :cond_2
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 786
    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    .line 788
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p3, :cond_4

    sget-object v4, Lcom/google/android/exoplayer2/Timeline;->a:Lcom/google/android/exoplayer2/Timeline;

    :goto_3
    move-object v6, v4

    goto :goto_4

    :cond_4
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    goto :goto_3

    :goto_4
    if-eqz p3, :cond_5

    move-object v7, v0

    goto :goto_5

    :cond_5
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    move-object v7, v4

    :goto_5
    if-eqz p2, :cond_6

    new-instance v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    :goto_6
    move-object v8, v4

    goto :goto_7

    :cond_6
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    goto :goto_6

    :goto_7
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_7

    move-wide v9, v4

    goto :goto_8

    :cond_7
    iget-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v9, v9, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    :goto_8
    if-eqz p2, :cond_8

    :goto_9
    move-wide v11, v4

    goto :goto_a

    :cond_8
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v4, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    goto :goto_9

    :goto_a
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v13, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    const/4 v14, 0x0

    if-eqz p3, :cond_9

    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_b
    move-object v15, v2

    goto :goto_c

    :cond_9
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_b

    :goto_c
    if-eqz p3, :cond_a

    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_d
    move-object/from16 v16, v2

    goto :goto_e

    :cond_a
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_d

    :goto_e
    move-object v5, v3

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p1, :cond_b

    .line 801
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v2, :cond_b

    .line 802
    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V

    .line 803
    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    :cond_b
    return-void
.end method

.method private a([ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1575
    new-array p2, p2, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    .line 1577
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1578
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1579
    iget-object v2, p2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1580
    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(IZI)V

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)Z
    .locals 7

    .line 877
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 879
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 882
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->a()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 883
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/PlayerMessage;->g()I

    move-result v4

    iget-object v5, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a:Lcom/google/android/exoplayer2/PlayerMessage;

    .line 884
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    .line 880
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 889
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 890
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 891
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 892
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v5, v0, v6, v1}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->b:Ljava/lang/Object;

    .line 889
    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a(IJLjava/lang/Object;)V

    goto :goto_0

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Timeline;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    return v2

    .line 899
    :cond_2
    iput v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    :goto_0
    return v1
.end method

.method private a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplayer2/MediaPeriodHolder;)Z
    .locals 2

    .line 700
    iget-object v0, p4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-eqz p1, :cond_1

    .line 701
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, p4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 702
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline$Period;->b(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 703
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 704
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Timeline$Period;->a(I)J

    move-result-wide p1

    iget-object p3, p4, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide p3, p3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->c:J

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1622
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->g()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1623
    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1625
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private b(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1349
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->a(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private b(I)V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-eq v0, p1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->b(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_0
    return-void
.end method

.method private b(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    .line 916
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    add-int/lit8 v3, v3, -0x1

    .line 917
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 918
    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    if-gt v3, v0, :cond_3

    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    if-ne v3, v0, :cond_4

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->c:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    .line 922
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    .line 923
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    add-int/lit8 v3, v3, -0x1

    .line 924
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_0

    .line 926
    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    .line 927
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    .line 928
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 930
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    if-lt v3, v0, :cond_6

    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    if-ne v3, v0, :cond_7

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->c:J

    cmp-long v3, v3, p1

    if-gtz v3, :cond_7

    .line 935
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    .line 936
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    .line 937
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    .line 938
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_a

    .line 942
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->d:Ljava/lang/Object;

    if-eqz v3, :cond_a

    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->b:I

    if-ne v3, v0, :cond_a

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->c:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_a

    iget-wide v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->c:J

    cmp-long v3, v3, p3

    if-gtz v3, :cond_a

    .line 947
    iget-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 948
    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a:Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlayerMessage;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 949
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 951
    :cond_8
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    .line 953
    :goto_3
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    .line 954
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->E:I

    .line 955
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_2

    :cond_9
    move-object v1, v2

    goto :goto_2

    :cond_a
    return-void

    :cond_b
    :goto_4
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->a(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 809
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 811
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto :goto_1

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 816
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 817
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 818
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 822
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->a(Z)V

    goto :goto_1

    .line 814
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->b(Lcom/google/android/exoplayer2/Renderer;)V

    .line 968
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/Renderer;)V

    .line 969
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->l()V

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 2

    .line 391
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    .line 392
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZZ)V

    .line 393
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/LoadControl;->a()V

    .line 394
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 p2, 0x2

    .line 395
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    .line 396
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->i:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p3, v1, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->a(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V

    .line 397
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(I)Z

    return-void
.end method

.method private c()V
    .locals 5

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(Lcom/google/android/exoplayer2/PlaybackInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 380
    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 381
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 382
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->c(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 378
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method private c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 418
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->z:I

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 420
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f(Z)V

    :cond_0
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 828
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 829
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e(Lcom/google/android/exoplayer2/PlayerMessage;)V

    .line 830
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-ne p1, v1, :cond_2

    .line 833
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(I)Z

    goto :goto_0

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1499
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1503
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->b()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 1504
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->e()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->b:F

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(F)V

    .line 1505
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->j:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 1507
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1509
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->h()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 1510
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(J)V

    const/4 p1, 0x0

    .line 1511
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    .line 1513
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q()V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    if-eq v0, p1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Z)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    :cond_0
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/Renderer;)Z
    .locals 2

    .line 1614
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->d()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1615
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-eqz v0, :cond_0

    .line 1616
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Z

    .line 449
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->a()V

    .line 450
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 451
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->b_()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 2

    .line 841
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->e()Landroid/os/Handler;

    move-result-object v0

    .line 842
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Lcom/google/android/exoplayer2/PlayerMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 1517
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1521
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(J)V

    .line 1522
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q()V

    return-void
.end method

.method private d(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Z

    .line 402
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Z

    if-nez p1, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e()V

    .line 405
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f()V

    goto :goto_0

    .line 407
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d()V

    .line 409
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(I)Z

    goto :goto_0

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-ne p1, v1, :cond_2

    .line 411
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->b()V

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 458
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 858
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->b()Lcom/google/android/exoplayer2/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/PlayerMessage$Target;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->a(Z)V

    throw v1
.end method

.method private e(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 426
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A:Z

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 428
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f(Z)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 469
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->c()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v1

    if-eqz v1, :cond_1

    .line 471
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(J)V

    .line 474
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    cmp-long v1, v4, v1

    if-eqz v1, :cond_2

    .line 475
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 477
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    .line 481
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(J)J

    move-result-wide v1

    .line 482
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(JJ)V

    .line 483
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iput-wide v1, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    .line 487
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-nez v2, :cond_3

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->e:J

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 490
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(Z)J

    move-result-wide v2

    :goto_1
    iput-wide v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->k:J

    return-void
.end method

.method private f(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    const/4 v3, 0x1

    .line 437
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v3

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    .line 440
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 494
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/Clock;->b()J

    move-result-wide v1

    .line 495
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o()V

    .line 496
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->f()Z

    move-result v3

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m()V

    .line 499
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(JJ)V

    return-void

    .line 502
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v3

    const-string v6, "doSomeWork"

    .line 504
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f()V

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    .line 509
    iget-object v10, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v11, v11, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    iget-wide v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l:J

    sub-long/2addr v11, v13

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m:Z

    invoke-interface {v10, v11, v12, v13}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(JZ)V

    .line 514
    iget-object v10, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v11, v10

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_0
    if-ge v14, v11, :cond_6

    aget-object v13, v10, v14

    .line 518
    iget-wide v8, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-interface {v13, v8, v9, v6, v7}, Lcom/google/android/exoplayer2/Renderer;->a(JJ)V

    if-eqz v15, :cond_1

    .line 519
    invoke-interface {v13}, Lcom/google/android/exoplayer2/Renderer;->v()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    .line 524
    :goto_1
    invoke-interface {v13}, Lcom/google/android/exoplayer2/Renderer;->u()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v13}, Lcom/google/android/exoplayer2/Renderer;->v()Z

    move-result v8

    if-nez v8, :cond_3

    .line 525
    invoke-direct {v0, v13}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Lcom/google/android/exoplayer2/Renderer;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_4

    .line 527
    invoke-interface {v13}, Lcom/google/android/exoplayer2/Renderer;->j()V

    :cond_4
    if-eqz v12, :cond_5

    if-eqz v8, :cond_5

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v8, 0x3e8

    goto :goto_0

    :cond_6
    if-nez v12, :cond_7

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->m()V

    .line 535
    :cond_7
    iget-object v6, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/MediaPeriodInfo;->e:J

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v15, :cond_9

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v6, v13

    if-eqz v11, :cond_8

    .line 536
    iget-object v11, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v13, v11, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    cmp-long v6, v6, v13

    if-gtz v6, :cond_9

    :cond_8
    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/MediaPeriodInfo;->g:Z

    if-eqz v3, :cond_9

    .line 540
    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e()V

    goto :goto_5

    .line 542
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-ne v3, v10, :cond_a

    .line 543
    invoke-direct {v0, v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 544
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    .line 545
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Z

    if-eqz v3, :cond_d

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d()V

    goto :goto_5

    .line 548
    :cond_a
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-ne v3, v9, :cond_d

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-nez v3, :cond_b

    .line 549
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_b
    if-nez v12, :cond_d

    .line 550
    :cond_c
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Z

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Z

    .line 551
    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e()V

    .line 555
    :cond_d
    :goto_5
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-ne v3, v10, :cond_e

    .line 556
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v3

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_e

    aget-object v11, v3, v7

    .line 557
    invoke-interface {v11}, Lcom/google/android/exoplayer2/Renderer;->j()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 561
    :cond_e
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-eq v3, v9, :cond_10

    :cond_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-ne v3, v10, :cond_11

    .line 563
    :cond_10
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(JJ)V

    goto :goto_7

    .line 564
    :cond_11
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-eq v3, v8, :cond_12

    const-wide/16 v3, 0x3e8

    .line 565
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(JJ)V

    goto :goto_7

    .line 567
    :cond_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v1, v10}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->b(I)V

    .line 570
    :goto_7
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    return-void
.end method

.method private g(Z)Z
    .locals 7

    .line 1079
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1081
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->l()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1086
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 1092
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->b()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object p1

    .line 1093
    iget-object v2, p1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->g:Z

    xor-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 1094
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:Lcom/google/android/exoplayer2/LoadControl;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    .line 1096
    invoke-virtual {p1, v5, v6}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(J)J

    move-result-wide v5

    sub-long/2addr v2, v5

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 1097
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->e()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->b:F

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->y:Z

    .line 1095
    invoke-interface {v4, v2, v3, p1, v5}, Lcom/google/android/exoplayer2/LoadControl;->a(JFZ)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x1

    .line 741
    invoke-direct {p0, v0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZZ)V

    .line 743
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->c()V

    .line 744
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    .line 745
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 746
    monitor-enter p0

    .line 747
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Z

    .line 748
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 749
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()I
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 754
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->A:Z

    .line 756
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->b(Z)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->j:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->f:I

    :goto_0
    return v0
.end method

.method private j()V
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 866
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo;->a:Lcom/google/android/exoplayer2/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->a(Z)V

    .line 869
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private k()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->e()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->b:F

    .line 979
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 980
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->d()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-eqz v1, :cond_d

    .line 983
    iget-boolean v5, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 987
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(F)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_b

    const/4 v0, 0x4

    if-eqz v4, :cond_8

    .line 1000
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    .line 1001
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    move-result v2

    .line 1003
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    new-array v4, v4, [Z

    .line 1004
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v7, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    .line 1005
    invoke-virtual {v1, v7, v8, v2, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(JZ[Z)J

    move-result-wide v7

    .line 1007
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->j:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v5, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, v2, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 1009
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v9, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_2

    .line 1011
    iget-object v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v10, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v13, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    move-wide v11, v7

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1013
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 1014
    invoke-direct {p0, v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(J)V

    .line 1018
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1019
    :goto_1
    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v8, v8

    if-ge v5, v8, :cond_7

    .line 1020
    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v8, v8, v5

    .line 1021
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->a_()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    aput-boolean v9, v2, v5

    .line 1022
    iget-object v9, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v9, v9, v5

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    .line 1026
    :cond_4
    aget-boolean v10, v2, v5

    if-eqz v10, :cond_6

    .line 1027
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->f()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v10

    if-eq v9, v10, :cond_5

    .line 1029
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/Renderer;)V

    goto :goto_3

    .line 1030
    :cond_5
    aget-boolean v9, v4, v5

    if-eqz v9, :cond_6

    .line 1032
    iget-wide v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-interface {v8, v9, v10}, Lcom/google/android/exoplayer2/Renderer;->a(J)V

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1036
    :cond_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->j:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1037
    invoke-virtual {v3, v4, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1039
    invoke-direct {p0, v2, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a([ZI)V

    goto :goto_4

    .line 1042
    :cond_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(Lcom/google/android/exoplayer2/MediaPeriodHolder;)Z

    .line 1043
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-eqz v2, :cond_9

    .line 1044
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    .line 1046
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(J)J

    move-result-wide v4

    .line 1045
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1047
    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a(JZ)J

    .line 1048
    iget-object v2, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->j:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 1051
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-eq v1, v0, :cond_a

    .line 1052
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q()V

    .line 1053
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f()V

    .line 1054
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(I)Z

    :cond_a
    return-void

    :cond_b
    if-ne v1, v2, :cond_c

    const/4 v4, 0x0

    .line 995
    :cond_c
    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    goto/16 :goto_0

    :cond_d
    :goto_5
    return-void
.end method

.method private l()Z
    .locals 5

    .line 1102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1103
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/MediaPeriodInfo;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 1104
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    cmp-long v1, v3, v1

    if-ltz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1107
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private m()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1111
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->b()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1112
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->d()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 1113
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-ne v1, v0, :cond_3

    .line 1115
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->v:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1116
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->g()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1120
    :cond_2
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->c_()V

    :cond_3
    return-void
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x4

    .line 1252
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1254
    invoke-direct {p0, v0, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZZ)V

    return-void
.end method

.method private o()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1353
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_0

    return-void

    .line 1357
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->B:I

    if-lez v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->b()V

    return-void

    .line 1364
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->p()V

    .line 1365
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->b()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1366
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1368
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    if-nez v0, :cond_4

    .line 1369
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->q()V

    goto :goto_1

    .line 1367
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Z)V

    .line 1372
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->f()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 1378
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->c()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1379
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->d()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1381
    :goto_2
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->x:Z

    if-eqz v5, :cond_8

    if-eq v0, v2, :cond_8

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/MediaPeriodHolder;->e:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    if-eqz v4, :cond_6

    .line 1387
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c()V

    .line 1389
    :cond_6
    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/MediaPeriodInfo;->f:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v4, 0x3

    .line 1394
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->h()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v5

    .line 1395
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/MediaPeriodHolder;)V

    .line 1396
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    iget-object v0, v5, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->d:J

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1398
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->o:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 1399
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f()V

    move-object v0, v5

    const/4 v4, 0x1

    goto :goto_2

    .line 1403
    :cond_8
    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->h:Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->g:Z

    if-eqz v0, :cond_b

    .line 1404
    :goto_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 1405
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v0, v0, v1

    .line 1406
    iget-object v3, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    .line 1409
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->f()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-ne v4, v3, :cond_9

    .line 1410
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->g()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1411
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->h()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void

    .line 1418
    :cond_b
    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    if-eqz v0, :cond_17

    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->i:Lcom/google/android/exoplayer2/MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaPeriodHolder;->f:Z

    if-nez v0, :cond_c

    goto/16 :goto_b

    :cond_c
    const/4 v0, 0x0

    .line 1423
    :goto_5
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v0, v4, :cond_f

    .line 1424
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v0

    .line 1425
    iget-object v5, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v5, v5, v0

    .line 1426
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->f()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v6

    if-ne v6, v5, :cond_e

    if-eqz v5, :cond_d

    .line 1427
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->g()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void

    .line 1433
    :cond_f
    iget-object v0, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1434
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->g()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v2

    .line 1435
    iget-object v4, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->k:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1437
    iget-object v5, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1438
    invoke-interface {v5}, Lcom/google/android/exoplayer2/source/MediaPeriod;->c()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_7

    :cond_10
    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    .line 1439
    :goto_8
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    array-length v7, v7

    if-ge v6, v7, :cond_16

    .line 1440
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v7, v7, v6

    .line 1441
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_a

    :cond_11
    if-eqz v5, :cond_12

    .line 1447
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->h()V

    goto :goto_a

    .line 1448
    :cond_12
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->i()Z

    move-result v8

    if-nez v8, :cond_15

    .line 1449
    iget-object v8, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v8, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->a(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v8

    .line 1450
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->a(I)Z

    move-result v9

    .line 1451
    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object v10, v10, v6

    invoke-interface {v10}, Lcom/google/android/exoplayer2/RendererCapabilities;->a()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_13

    const/4 v10, 0x1

    goto :goto_9

    :cond_13
    const/4 v10, 0x0

    .line 1452
    :goto_9
    iget-object v11, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v11, v11, v6

    .line 1453
    iget-object v12, v4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v12, v12, v6

    if-eqz v9, :cond_14

    .line 1454
    invoke-virtual {v12, v11}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-nez v10, :cond_14

    .line 1461
    invoke-static {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 1462
    iget-object v9, v2, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v9, v9, v6

    .line 1463
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->a()J

    move-result-wide v10

    .line 1462
    invoke-interface {v7, v8, v9, v10, v11}, Lcom/google/android/exoplayer2/Renderer;->a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V

    goto :goto_a

    .line 1470
    :cond_14
    invoke-interface {v7}, Lcom/google/android/exoplayer2/Renderer;->h()V

    :cond_15
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_16
    return-void

    :cond_17
    :goto_b
    return-void
.end method

.method private p()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1477
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(J)V

    .line 1478
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1479
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a(JLcom/google/android/exoplayer2/PlaybackInfo;)Lcom/google/android/exoplayer2/MediaPeriodInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->b()V

    goto :goto_0

    .line 1483
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->t:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->a:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v3, v11}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget-object v9, v1, Lcom/google/android/exoplayer2/Timeline$Period;->b:Ljava/lang/Object;

    .line 1484
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:Lcom/google/android/exoplayer2/LoadControl;

    .line 1488
    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->d()Lcom/google/android/exoplayer2/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->u:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object v10, v0

    .line 1485
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->a([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaPeriodInfo;)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object v1

    .line 1492
    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->b:J

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->a(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    .line 1493
    invoke-direct {p0, v11}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 5

    .line 1526
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->r:Lcom/google/android/exoplayer2/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodQueue;->b()Lcom/google/android/exoplayer2/MediaPeriodHolder;

    move-result-object v0

    .line 1527
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->c()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 1529
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Z)V

    return-void

    .line 1532
    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    .line 1533
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->b(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1534
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->n:Lcom/google/android/exoplayer2/DefaultMediaClock;

    .line 1536
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/DefaultMediaClock;->e()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackParameters;->b:F

    .line 1535
    invoke-interface {v3, v1, v2, v4}, Lcom/google/android/exoplayer2/LoadControl;->a(JF)Z

    move-result v1

    .line 1537
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Z)V

    if-eqz v1, :cond_1

    .line 1539
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->D:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/MediaPeriodHolder;->d(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 222
    monitor-exit p0

    return-void

    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(I)Z

    const/4 v0, 0x0

    .line 226
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 228
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 235
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 220
    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->b:F

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(F)V

    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/exoplayer2/PlayerMessage;)V
    .locals 2

    monitor-enter p0

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 211
    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    .line 177
    invoke-interface {v0, v1, p2, p3, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->f:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    return v2

    .line 331
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_5

    .line 328
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/PlayerMessage;)V

    goto/16 :goto_5

    .line 298
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->e(Z)V

    goto/16 :goto_5

    .line 295
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(I)V

    goto/16 :goto_5

    .line 325
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->k()V

    goto/16 :goto_5

    .line 322
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_5

    .line 316
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    goto :goto_5

    .line 319
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaSourceRefreshInfo;)V

    goto :goto_5

    .line 334
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h()V

    return v1

    .line 313
    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZ)V

    goto :goto_5

    .line 310
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/SeekParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/SeekParameters;)V

    goto :goto_5

    .line 307
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_5

    .line 304
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    goto :goto_5

    .line 301
    :pswitch_d
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->g()V

    goto :goto_5

    .line 292
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->d(Z)V

    goto :goto_5

    .line 286
    :pswitch_f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    invoke-direct {p0, v3, v4, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    .line 340
    :goto_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    const-string v3, "ExoPlayerImplInternal"

    const-string v4, "Internal runtime error."

    .line 352
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZ)V

    .line 354
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c()V

    goto :goto_6

    :catch_1
    move-exception p1

    const-string v3, "ExoPlayerImplInternal"

    const-string v4, "Source error."

    .line 347
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZ)V

    .line 349
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 350
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c()V

    goto :goto_6

    :catch_2
    move-exception p1

    const-string v3, "ExoPlayerImplInternal"

    const-string v4, "Playback error."

    .line 342
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    invoke-direct {p0, v2, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(ZZ)V

    .line 344
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 345
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->c()V

    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
