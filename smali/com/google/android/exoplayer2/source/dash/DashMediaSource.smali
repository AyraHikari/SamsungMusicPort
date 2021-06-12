.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation


# instance fields
.field private A:J

.field private B:I

.field private C:J

.field private D:Z

.field private E:I

.field private final a:Z

.field private final b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final c:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private final e:I

.field private final f:J

.field private final g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final h:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

.field private final j:Ljava/lang/Object;

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private final n:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private final o:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final p:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private r:Lcom/google/android/exoplayer2/upstream/Loader;

.field private s:Ljava/io/IOException;

.field private t:Landroid/os/Handler;

.field private u:Landroid/net/Uri;

.field private v:Landroid/net/Uri;

.field private w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 66
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLjava/lang/Object;)V
    .locals 0
    .param p10    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;",
            "Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;",
            "IJ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 490
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 491
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/net/Uri;

    .line 492
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 493
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Landroid/net/Uri;

    .line 494
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 495
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 496
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 497
    iput p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e:I

    .line 498
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f:J

    .line 499
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 500
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Ljava/lang/Object;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 501
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a:Z

    const/4 p3, 0x0

    .line 502
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 503
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Ljava/lang/Object;

    .line 504
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Landroid/util/SparseArray;

    .line 505
    new-instance p4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;

    invoke-direct {p4, p0, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 506
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:J

    .line 507
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a:Z

    if-eqz p4, :cond_1

    .line 508
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 509
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 510
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->l:Ljava/lang/Runnable;

    .line 511
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Ljava/lang/Runnable;

    .line 512
    new-instance p1, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    goto :goto_1

    .line 514
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    invoke-direct {p1, p0, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    .line 515
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestLoadErrorThrower;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 516
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->l:Ljava/lang/Runnable;

    .line 522
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$2;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 2

    .line 779
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->a:Ljava/lang/String;

    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    .line 780
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 781
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 783
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 784
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 786
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 787
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 791
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Ljava/io/IOException;)V

    goto :goto_3

    .line 788
    :cond_3
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_3

    .line 785
    :cond_4
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Iso8601Parser;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    goto :goto_3

    .line 782
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    :goto_3
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 806
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V

    const/4 p2, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide p2

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget p1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJ)V

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    .line 816
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 818
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 823
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 824
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 825
    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:I

    if-lt v3, v4, :cond_0

    .line 826
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 833
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 834
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 835
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v5

    .line 834
    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->a(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v4

    .line 836
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 837
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v6

    .line 836
    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->a(Lcom/google/android/exoplayer2/source/dash/manifest/Period;J)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;

    move-result-object v5

    .line 839
    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->b:J

    .line 840
    iget-wide v8, v5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->c:J

    .line 841
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_5

    iget-boolean v4, v5, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$PeriodSeekInfo;->a:Z

    if-nez v4, :cond_5

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g()J

    move-result-wide v4

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v14, v14, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 845
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 846
    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v14

    iget-wide v14, v14, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 847
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 848
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->f:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    .line 849
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->f:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v4

    sub-long v4, v8, v4

    :goto_1
    cmp-long v14, v4, v12

    if-gez v14, :cond_2

    if-lez v2, :cond_2

    .line 853
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v14

    add-long/2addr v4, v14

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 856
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_2
    move-wide v6, v4

    goto :goto_3

    .line 860
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    :goto_3
    move-wide/from16 v20, v6

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move-wide/from16 v20, v6

    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x0

    sub-long v8, v8, v20

    move-wide/from16 v22, v8

    const/4 v4, 0x0

    .line 866
    :goto_5
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_6

    .line 867
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->c(I)J

    move-result-wide v5

    add-long v22, v22, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 870
    :cond_6
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    if-eqz v3, :cond_a

    .line 871
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_8

    .line 873
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->g:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->g:J

    goto :goto_6

    :cond_7
    const-wide/16 v3, 0x7530

    .line 877
    :cond_8
    :goto_6
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v3

    sub-long v3, v22, v3

    const-wide/32 v5, 0x4c4b40

    cmp-long v7, v3, v5

    if-gez v7, :cond_9

    const-wide/16 v3, 0x2

    .line 882
    div-long v3, v22, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_9
    move-wide/from16 v24, v3

    goto :goto_7

    :cond_a
    move-wide/from16 v24, v12

    .line 886
    :goto_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 887
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v1

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    add-long/2addr v3, v5

    invoke-static/range {v20 .. v21}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide v5

    add-long v17, v3, v5

    .line 888
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a:J

    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:I

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Ljava/lang/Object;

    move-object v14, v1

    move-wide v15, v3

    move/from16 v19, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    invoke-direct/range {v14 .. v27}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;-><init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Ljava/lang/Object;)V

    .line 898
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 900
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a:Z

    if-nez v1, :cond_e

    .line 902
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_b

    .line 905
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 907
    :cond_b
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Z

    if-eqz v1, :cond_c

    .line 908
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e()V

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_e

    .line 909
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->e:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_e

    .line 913
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->e:J

    cmp-long v5, v1, v12

    if-nez v5, :cond_d

    move-wide v1, v3

    .line 921
    :cond_d
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:J

    add-long/2addr v3, v1

    .line 923
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v3, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 924
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c(J)V

    :cond_e
    :goto_8
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Lcom/google/android/exoplayer2/upstream/Loader;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    return-object p0
.end method

.method private b(J)V
    .locals 0

    .line 811
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:J

    const/4 p1, 0x1

    .line 812
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Z)V

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V
    .locals 4

    .line 797
    :try_start_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->g(Ljava/lang/String;)J

    move-result-wide v0

    .line 798
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:J

    const/4 p1, 0x0

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 800
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)Ljava/io/IOException;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Ljava/io/IOException;

    return-object p0
.end method

.method private c(J)V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e()V
    .locals 5

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 935
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 936
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Z

    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Landroid/net/Uri;

    .line 942
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 943
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Z

    .line 944
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Lcom/google/android/exoplayer2/upstream/DataSource;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->h:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->i:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$ManifestCallback;

    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 942
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private f()J
    .locals 2

    .line 951
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private g()J
    .locals 4

    .line 961
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 964
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->b(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v9, p6

    .line 725
    instance-of v11, v9, Lcom/google/android/exoplayer2/ParserException;

    move-object v12, p0

    .line 726
    iget-object v1, v12, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v3, v0, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 731
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    .line 726
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
    .locals 13

    .line 564
    iget v3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    .line 565
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 566
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v6

    .line 567
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:I

    add-int v1, v0, v3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e:I

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:J

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->n:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;-><init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;)V

    .line 580
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Landroid/util/SparseArray;

    iget v0, p1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a:I

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public a()V
    .locals 5

    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Z

    const/4 v1, 0x0

    .line 594
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 595
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 597
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    :cond_0
    const-wide/16 v2, 0x0

    .line 599
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:J

    .line 600
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:J

    .line 601
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 602
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Landroid/net/Uri;

    iput-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Landroid/net/Uri;

    .line 603
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Ljava/io/IOException;

    .line 604
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 605
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 606
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    .line 608
    :cond_2
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:J

    .line 609
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 610
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:J

    .line 611
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Z

    .line 612
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:I

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method a(J)V
    .locals 4

    .line 628
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 630
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:J

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V
    .locals 0

    .line 547
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 548
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Z)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->a()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 551
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:DashMediaSource"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 552
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    .line 553
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e()V

    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 586
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;

    .line 587
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->f()V

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->k:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->a:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method a(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 643
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 638
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 644
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 646
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v1

    .line 648
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 649
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 650
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->b:J

    cmp-long v6, v6, v3

    if-gez v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 654
    :cond_1
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    sub-int v3, v1, v5

    .line 656
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->a()I

    move-result v6

    if-le v3, v6, :cond_2

    const-string v3, "DashMediaSource"

    const-string v6, "Loaded out of sync manifest"

    .line 662
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v3, 0x1

    goto :goto_4

    .line 664
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Z

    if-nez v3, :cond_4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->h:J

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:J

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const-string v3, "DashMediaSource"

    .line 670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded stale dynamic manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->h:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_4
    if-eqz v3, :cond_6

    .line 682
    iget p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:I

    iget p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e:I

    if-ge p1, p2, :cond_5

    .line 683
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->f()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c(J)V

    goto :goto_5

    .line 685
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Ljava/io/IOException;

    :goto_5
    return-void

    .line 689
    :cond_6
    iput v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:I

    .line 693
    :cond_7
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 694
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->d:Z

    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Z

    sub-long p4, p2, p4

    .line 695
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:J

    .line 696
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:J

    .line 697
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->j:Landroid/net/Uri;

    if-eqz p2, :cond_9

    .line 698
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->j:Ljava/lang/Object;

    monitor-enter p2

    .line 701
    :try_start_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Landroid/net/Uri;

    if-ne p1, p3, :cond_8

    .line 702
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->j:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Landroid/net/Uri;

    .line 704
    :cond_8
    monitor-exit p2

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_6
    if-nez v1, :cond_b

    .line 708
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->i:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz p1, :cond_a

    .line 709
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->i:Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;)V

    goto :goto_7

    .line 711
    :cond_a
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Z)V

    goto :goto_7

    .line 714
    :cond_b
    iget p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:I

    .line 715
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Z)V

    :goto_7
    return-void
.end method

.method b(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 754
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v3, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v4, v1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 759
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v8

    const/4 v11, 0x1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v10, p6

    .line 754
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    move-object/from16 v1, p6

    .line 762
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(Ljava/io/IOException;)V

    const/4 v1, 0x2

    return v1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->a()V

    return-void
.end method

.method b(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 744
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 739
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 745
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    sub-long/2addr p4, p2

    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->b(J)V

    return-void
.end method

.method c()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->e()V

    return-void
.end method

.method c(Lcom/google/android/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable<",
            "*>;JJ)V"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->g:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->a:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->b:I

    .line 773
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->e()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 768
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;IJJJ)V

    return-void
.end method

.method d()V
    .locals 1

    const/4 v0, 0x1

    .line 624
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Z

    return-void
.end method
