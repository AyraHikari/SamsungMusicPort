.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/BaseMediaSource;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final d:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final e:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final f:I

.field private final g:J

.field private final h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final i:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private m:Lcom/google/android/exoplayer2/upstream/Loader;

.field private n:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private o:J

.field private p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.smoothstreaming"

    .line 55
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLjava/lang/Object;)V
    .locals 3
    .param p10    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;",
            "Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "IJ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 445
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 446
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->d:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 447
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    const/4 v2, 0x0

    if-nez p2, :cond_2

    move-object p2, v2

    goto :goto_2

    .line 448
    :cond_2
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsUtil;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->b:Landroid/net/Uri;

    .line 449
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 450
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->i:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 451
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->d:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 452
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->e:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 453
    iput p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->f:I

    .line 454
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->g:J

    .line 455
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 456
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Ljava/lang/Object;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 457
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a:Z

    .line 458
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLjava/lang/Object;Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->e()V

    return-void
.end method

.method private c()V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 563
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 564
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 569
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v5, v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v8, v2

    move-wide v13, v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    .line 570
    iget v10, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->k:I

    if-lez v10, :cond_1

    .line 571
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->a(I)J

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 572
    iget v12, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->k:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->a(I)J

    move-result-wide v12

    iget v14, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->k:I

    add-int/lit8 v14, v14, -0x1

    .line 573
    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->b(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    .line 572
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v13, v10

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v13, v6

    if-nez v5, :cond_4

    .line 579
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->d:Z

    if-eqz v5, :cond_3

    move-wide v7, v3

    goto :goto_2

    :cond_3
    move-wide v7, v1

    .line 580
    :goto_2
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->d:Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Ljava/lang/Object;

    move-object v6, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v6 .. v17}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZLjava/lang/Object;)V

    goto/16 :goto_4

    .line 589
    :cond_4
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->d:Z

    if-eqz v5, :cond_7

    .line 590
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->h:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->h:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_5

    .line 591
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->h:J

    sub-long v1, v8, v1

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    :cond_5
    move-wide/from16 v20, v13

    const/4 v1, 0x0

    sub-long v18, v8, v20

    .line 594
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->g:J

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v1

    sub-long v1, v18, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    const-wide/16 v1, 0x2

    .line 599
    div-long v1, v18, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_6
    move-wide/from16 v22, v1

    .line 601
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x1

    const/16 v25, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Ljava/lang/Object;

    move-object v15, v1

    move-object/from16 v26, v2

    invoke-direct/range {v15 .. v26}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZLjava/lang/Object;)V

    goto :goto_4

    .line 611
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->g:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->g:J

    move-wide v11, v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    sub-long/2addr v8, v13

    move-wide v11, v8

    .line 613
    :goto_3
    new-instance v1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    add-long v9, v13, v11

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->k:Ljava/lang/Object;

    move-object v8, v1

    move-object/from16 v19, v2

    invoke-direct/range {v8 .. v19}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZLjava/lang/Object;)V

    .line 623
    :goto_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 6

    .line 627
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 632
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e()V
    .locals 5

    .line 641
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->i:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 643
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->f:I

    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v1

    .line 644
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 51
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v9, p6

    .line 548
    instance-of v11, v9, Lcom/google/android/exoplayer2/ParserException;

    move-object v12, p0

    .line 549
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 554
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    .line 549
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    if-eqz v11, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 9

    .line 484
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v6

    .line 486
    new-instance p1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->d:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->e:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->f:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 489
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a()V
    .locals 4

    .line 501
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 502
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    const-wide/16 v2, 0x0

    .line 503
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:J

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 506
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 510
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V
    .locals 0

    .line 465
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a:Z

    if-eqz p1, :cond_0

    .line 466
    new-instance p1, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 467
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->c()V

    goto :goto_0

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->c:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->a()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->l:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 470
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:Manifest"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 471
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->m:Lcom/google/android/exoplayer2/upstream/Loader;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 472
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->q:Landroid/os/Handler;

    .line 473
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->e()V

    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 495
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->f()V

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 51
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 51
    check-cast p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ)V"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 524
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 519
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 525
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->p:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    sub-long/2addr p2, p4

    .line 526
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->o:J

    .line 527
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->c()V

    .line 528
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->d()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->h:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 539
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 534
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;->n:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->a()V

    return-void
.end method
