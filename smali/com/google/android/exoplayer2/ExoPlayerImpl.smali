.class final Lcom/google/android/exoplayer2/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/Renderer;

.field private final b:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final c:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/Player$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/Timeline$Window;

.field private final i:Lcom/google/android/exoplayer2/Timeline$Period;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private q:Lcom/google/android/exoplayer2/ExoPlaybackException;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private s:I

.field private t:I

.field private u:J


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object v11, p0

    move-object v1, p1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoPlayerImpl"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ExoPlayerLib/2.8.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/google/android/exoplayer2/util/Util;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    array-length v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 88
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a:[Lcom/google/android/exoplayer2/Renderer;

    .line 89
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 90
    iput-boolean v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->j:Z

    .line 91
    iput v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->k:I

    .line 92
    iput-boolean v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->l:Z

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/exoplayer2/RendererConfiguration;

    array-length v3, v1

    new-array v3, v3, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;Ljava/lang/Object;)V

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->h:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 100
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->i:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 101
    sget-object v0, Lcom/google/android/exoplayer2/PlaybackParameters;->a:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 103
    :goto_1
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Landroid/os/Looper;)V

    iput-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->d:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    sget-object v4, Lcom/google/android/exoplayer2/Timeline;->a:Lcom/google/android/exoplayer2/Timeline;

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v8, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;JLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 115
    new-instance v12, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-boolean v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->j:Z

    iget v6, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->k:I

    iget-boolean v7, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->l:Z

    iget-object v8, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->d:Landroid/os/Handler;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move-object v9, p0

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;ZIZLandroid/os/Handler;Lcom/google/android/exoplayer2/ExoPlayer;Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object v12, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 127
    new-instance v0, Landroid/os/Handler;

    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->f:Landroid/os/Handler;

    return-void
.end method

.method private a(ZZI)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 16

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 623
    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->s:I

    .line 624
    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->t:I

    const-wide/16 v2, 0x0

    .line 625
    iput-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->u:J

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->s:I

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->f()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->t:I

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->k()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->u:J

    .line 631
    :goto_0
    new-instance v2, Lcom/google/android/exoplayer2/PlaybackInfo;

    if-eqz p2, :cond_1

    sget-object v3, Lcom/google/android/exoplayer2/Timeline;->a:Lcom/google/android/exoplayer2/Timeline;

    :goto_1
    move-object v5, v3

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    goto :goto_1

    :goto_2
    if-eqz p2, :cond_2

    const/4 v3, 0x0

    :goto_3
    move-object v6, v3

    goto :goto_4

    :cond_2
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    goto :goto_3

    :goto_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v8, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v10, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    const/4 v13, 0x0

    if-eqz p2, :cond_3

    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_5
    move-object v14, v3

    goto :goto_6

    :cond_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_5

    :goto_6
    if-eqz p2, :cond_4

    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_7
    move-object v15, v1

    goto :goto_8

    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_7

    :goto_8
    move-object v4, v2

    move/from16 v12, p3

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)V

    return-object v2
.end method

.method private a(Lcom/google/android/exoplayer2/PlaybackInfo;IZI)V
    .locals 6

    .line 588
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    .line 589
    iget p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    if-nez p2, :cond_4

    .line 590
    iget-wide v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 592
    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->e:J

    move-object v0, p1

    .line 593
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlaybackInfo;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 596
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->n:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 597
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 599
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->t:I

    .line 600
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->s:I

    const-wide/16 v2, 0x0

    .line 601
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->u:J

    .line 604
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->n:Z

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    const/4 v4, 0x2

    .line 608
    :goto_0
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->o:Z

    .line 609
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->n:Z

    .line 610
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->o:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 611
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(Lcom/google/android/exoplayer2/PlaybackInfo;ZIIZ)V

    :cond_4
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/PlaybackInfo;ZIIZ)V
    .locals 7

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 652
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    iget v4, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    if-eq v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 653
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    iget-boolean v5, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 654
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v6, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eq v5, v6, :cond_4

    const/4 v2, 0x1

    .line 656
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    if-nez v0, :cond_5

    if-nez p4, :cond_6

    .line 658
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 659
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/PlaybackInfo;->b:Ljava/lang/Object;

    invoke-interface {v0, v3, v5, p4}, Lcom/google/android/exoplayer2/Player$EventListener;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    .line 664
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 665
    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener;->c(I)V

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    .line 669
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p2, p2, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->d:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->a(Ljava/lang/Object;)V

    .line 670
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 671
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p3, p3, Lcom/google/android/exoplayer2/PlaybackInfo;->h:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p4, p4, Lcom/google/android/exoplayer2/PlaybackInfo;->i:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p4, p4, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->c:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-interface {p2, p3, p4}, Lcom/google/android/exoplayer2/Player$EventListener;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    goto :goto_6

    :cond_8
    if-eqz v4, :cond_9

    .line 676
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 677
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean p3, p3, Lcom/google/android/exoplayer2/PlaybackInfo;->g:Z

    invoke-interface {p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener;->c(Z)V

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_a

    .line 681
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 682
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->j:Z

    iget-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget p4, p4, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    invoke-interface {p2, p3, p4}, Lcom/google/android/exoplayer2/Player$EventListener;->a(ZI)V

    goto :goto_8

    :cond_a
    if-eqz p5, :cond_b

    .line 686
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 687
    invoke-interface {p2}, Lcom/google/android/exoplayer2/Player$EventListener;->q()V

    goto :goto_9

    :cond_b
    return-void
.end method

.method private b(J)J
    .locals 3

    .line 693
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide p1

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->i:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->i:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->b()J

    move-result-wide v0

    add-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method private p()Z
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    if-lez v0, :cond_0

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


# virtual methods
.method public a()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 7

    .line 375
    new-instance v6, Lcom/google/android/exoplayer2/PlayerMessage;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 379
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->f:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/PlayerMessage;-><init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public a(I)V
    .locals 2

    .line 209
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->k:I

    if-eq v0, p1, :cond_0

    .line 210
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->k:I

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 213
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 10

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    if-ltz p1, :cond_6

    .line 262
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->b()I

    move-result v1

    if-ge p1, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 265
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->o:Z

    .line 266
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    .line 267
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->n()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 271
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->d:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 273
    invoke-virtual {p1, v2, v7, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 281
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->s:I

    .line 282
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v3

    if-nez v1, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    move-wide v3, p2

    .line 283
    :goto_0
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->u:J

    .line 284
    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->t:I

    goto :goto_3

    :cond_3
    cmp-long v1, p2, v3

    if-nez v1, :cond_4

    .line 286
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->h:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 287
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Window;->a()J

    move-result-wide v1

    :goto_1
    move-wide v8, v1

    goto :goto_2

    :cond_4
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v1

    goto :goto_1

    .line 288
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->h:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->i:Lcom/google/android/exoplayer2/Timeline$Period;

    move-object v1, v0

    move v4, p1

    move-wide v5, v8

    .line 289
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/Timeline;->a(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 290
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->u:J

    .line 291
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->t:I

    .line 293
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/Timeline;IJ)V

    .line 294
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 295
    invoke-interface {p2, v7}, Lcom/google/android/exoplayer2/Player$EventListener;->c(I)V

    goto :goto_4

    :cond_5
    return-void

    .line 263
    :cond_6
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v1
.end method

.method public a(J)V
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(IJ)V

    return-void
.end method

.method a(Landroid/os/Message;)V
    .locals 4

    .line 555
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 579
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 573
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->q:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 574
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 575
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->q:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player$EventListener;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    goto :goto_0

    .line 564
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 567
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 568
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/Player$EventListener;->a(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_1

    .line 557
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(Lcom/google/android/exoplayer2/PlaybackInfo;IZI)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 7

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->q:Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v0, 0x2

    .line 174
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(ZZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->n:Z

    .line 181
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 183
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(Lcom/google/android/exoplayer2/PlaybackInfo;ZIIZ)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 193
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->j:Z

    if-eq v0, p1, :cond_0

    .line 194
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->j:Z

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a(Z)V

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Player$EventListener;

    .line 197
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->f:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer2/Player$EventListener;->a(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->q:Lcom/google/android/exoplayer2/ExoPlaybackException;

    :cond_0
    const/4 v0, 0x1

    .line 339
    invoke-direct {p0, p1, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(ZZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 347
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->m:I

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->b(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 349
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->a(Lcom/google/android/exoplayer2/PlaybackInfo;ZIIZ)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->j:Z

    return v0
.end method

.method public c()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->b(Z)V

    return-void
.end method

.method public e()V
    .locals 3

    const-string v0, "ExoPlayerImpl"

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ExoPlayerLib/2.8.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->a()V

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public f()I
    .locals 1

    .line 413
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->t:I

    return v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    return v0
.end method

.method public g()I
    .locals 3

    .line 422
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->s:I

    return v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->i:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->c:I

    return v0
.end method

.method public h()I
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 432
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->k:I

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->l:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->a(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 439
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->k:I

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->l:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->b(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public j()J
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    .line 446
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 451
    iget v2, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->i:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->i:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->b:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->c:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->c(II)J

    move-result-wide v0

    .line 453
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->h:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->a(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()J
    .locals 2

    .line 461
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->u:J

    return-wide v0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->j:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()J
    .locals 2

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->u:J

    return-wide v0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->k:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()I
    .locals 9

    .line 480
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->l()J

    move-result-wide v0

    .line 481
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->j()J

    move-result-wide v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    .line 482
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 483
    invoke-static {v0, v5, v4}, Lcom/google/android/exoplayer2/util/Util;->a(III)I

    move-result v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public n()Z
    .locals 1

    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->c:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->r:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->a:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method
