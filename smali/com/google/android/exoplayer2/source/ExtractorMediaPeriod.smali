.class final Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# instance fields
.field private A:J

.field private B:[Z

.field private C:[Z

.field private D:[Z

.field private E:Z

.field private F:J

.field private G:J

.field private H:J

.field private I:Z

.field private J:I

.field private K:Z

.field private L:Z

.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final e:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

.field private final f:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final h:J

.field private final i:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final j:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

.field private final k:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/os/Handler;

.field private o:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private p:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field private q:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private r:[I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V
    .locals 0
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a:Landroid/net/Uri;

    .line 145
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->b:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 146
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->c:I

    .line 147
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 148
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->e:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    .line 149
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->f:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 150
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->g:Ljava/lang/String;

    int-to-long p1, p9

    .line 151
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->h:J

    .line 152
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:ExtractorMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 153
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {p1, p3, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;-><init>([Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->j:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    .line 154
    new-instance p1, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->k:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 155
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$1;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->l:Ljava/lang/Runnable;

    .line 161
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$2;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->m:Ljava/lang/Runnable;

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 170
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->r:[I

    .line 171
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 172
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    const-wide/16 p6, -0x1

    .line 173
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->F:J

    .line 174
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    const/4 p4, 0x3

    .line 176
    :cond_0
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->u:I

    .line 180
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V
    .locals 4

    .line 637
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->F:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 638
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->d(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->F:J

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->j()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;I)Z
    .locals 6

    .line 680
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->F:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 681
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->b()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    .line 686
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->t:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i()Z

    move-result p2

    if-nez p2, :cond_1

    .line 696
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->I:Z

    return v0

    .line 703
    :cond_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->t:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->w:Z

    const-wide/16 v3, 0x0

    .line 704
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->G:J

    .line 705
    iput v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->J:I

    .line 706
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    .line 707
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_2
    invoke-virtual {p1, v3, v4, v3, v4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->a(JJ)V

    return v2

    .line 684
    :cond_3
    :goto_1
    iput p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->J:I

    return v2
.end method

.method private static a(Ljava/io/IOException;)Z
    .locals 0

    .line 760
    instance-of p0, p0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    return p0
.end method

.method private b(I)V
    .locals 9

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->D:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->z:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 448
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v4, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 449
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->g(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->G:J

    .line 448
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->D:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->L:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->o:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    .line 459
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->I:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->C:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    .line 461
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 464
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    const/4 p1, 0x0

    .line 465
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->I:Z

    const/4 v2, 0x1

    .line 466
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->w:Z

    .line 467
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->G:J

    .line 468
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->J:I

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    .line 470
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->o:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->g:Ljava/lang/String;

    return-object p0
.end method

.method private d(J)Z
    .locals 6

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 723
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v4, v4, v2

    .line 724
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->k()V

    .line 725
    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 731
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->C:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->E:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->h:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Ljava/lang/Runnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private i()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->w:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n()Z

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

.method private j()V
    .locals 8

    .line 603
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->L:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->t:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->s:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 607
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->k:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->b()Z

    .line 612
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    .line 613
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 614
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->C:[Z

    .line 615
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->B:[Z

    .line 616
    new-array v3, v0, [Z

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->D:[Z

    .line 617
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->b()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 619
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 620
    new-instance v6, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v7, v4, [Lcom/google/android/exoplayer2/Format;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v6, v1, v3

    .line 621
    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 622
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/MimeTypes;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 623
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->C:[Z

    aput-boolean v4, v5, v3

    .line 624
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->E:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->E:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 626
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->z:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 627
    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->F:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 628
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->b()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x6

    .line 629
    iput v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->u:I

    .line 631
    :cond_6
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->t:Z

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->e:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/SeekMap;->a()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;->a(JZ)V

    .line 633
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->o:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method private k()V
    .locals 21

    move-object/from16 v6, p0

    .line 643
    new-instance v7, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    iget-object v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a:Landroid/net/Uri;

    iget-object v3, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->b:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->j:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    iget-object v5, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->k:Lcom/google/android/exoplayer2/util/ConditionVariable;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;Lcom/google/android/exoplayer2/util/ConditionVariable;)V

    .line 645
    iget-boolean v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->t:Z

    if-eqz v0, :cond_1

    .line 646
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 647
    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 648
    iput-boolean v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    .line 649
    iput-wide v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    return-void

    .line 652
    :cond_0
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    .line 653
    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap;->b(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->a:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->c:J

    iget-wide v4, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    .line 652
    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->a(JJ)V

    .line 654
    iput-wide v2, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    .line 656
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->l()I

    move-result v0

    iput v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->J:I

    .line 657
    iget-object v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v1, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->u:I

    invoke-virtual {v0, v7, v6, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v19

    .line 658
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 659
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 665
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->b(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v15

    iget-wide v0, v6, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    move-wide/from16 v17, v0

    .line 658
    invoke-virtual/range {v8 .. v20}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private l()I
    .locals 5

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 741
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->c()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private m()J
    .locals 7

    .line 748
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 750
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->i()J

    move-result-wide v5

    .line 749
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private n()Z
    .locals 4

    .line 756
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(IJ)I
    .locals 4

    .line 424
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, p1

    .line 429
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->i()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    .line 430
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->n()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 432
    invoke-virtual {v0, p2, p3, v2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-lez v1, :cond_3

    .line 438
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->b(I)V

    goto :goto_1

    .line 440
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->c(I)V

    :goto_1
    return v1
.end method

.method a(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 9

    .line 409
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->G:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 413
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_1

    .line 416
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->b(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 418
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->c(I)V

    :cond_2
    :goto_0
    return p2
.end method

.method public a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v18, p6

    .line 536
    invoke-static/range {p6 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(Ljava/io/IOException;)Z

    move-result v20

    move/from16 v19, v20

    .line 537
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 538
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 544
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->b(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    .line 548
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->c(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 537
    invoke-virtual/range {v1 .. v19}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 551
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    if-eqz v20, :cond_0

    const/4 v1, 0x3

    return v1

    .line 555
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->l()I

    move-result v1

    .line 556
    iget v2, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->J:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_1

    move-object/from16 v2, p1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    const/4 v5, 0x0

    .line 557
    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :cond_3
    :goto_1
    return v3
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public a(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 9

    .line 388
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap;->b(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    move-result-object v0

    .line 393
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->a:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;->b:J

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;->b:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;->b:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/util/Util;->a(JLcom/google/android/exoplayer2/SeekParameters;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 6

    .line 225
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->t:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 226
    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 228
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 229
    aget-object v3, p3, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v2

    if-nez v3, :cond_1

    .line 230
    :cond_0
    aget-object v3, p3, v2

    check-cast v3, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;)I

    move-result v3

    .line 231
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->B:[Z

    aget-boolean v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 232
    iget v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    .line 233
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->B:[Z

    aput-boolean v1, v4, v3

    const/4 v3, 0x0

    .line 234
    aput-object v3, p3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->v:Z

    if-eqz p2, :cond_4

    if-nez v0, :cond_3

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long p2, p5, v2

    if-eqz p2, :cond_3

    goto :goto_1

    :goto_2
    move v0, p2

    const/4 p2, 0x0

    .line 241
    :goto_3
    array-length v2, p1

    if-ge p2, v2, :cond_9

    .line 242
    aget-object v2, p3, p2

    if-nez v2, :cond_8

    aget-object v2, p1, p2

    if-eqz v2, :cond_8

    .line 243
    aget-object v2, p1, p2

    .line 244
    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->g()I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 245
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->b(I)I

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 246
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->z:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v2

    .line 247
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->B:[Z

    aget-boolean v3, v3, v2

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 248
    iget v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    .line 249
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->B:[Z

    aput-boolean v4, v3, v2

    .line 250
    new-instance v3, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;I)V

    aput-object v3, p3, p2

    .line 251
    aput-boolean v4, p4, p2

    if-nez v0, :cond_8

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v0, v0, v2

    .line 255
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->k()V

    .line 260
    invoke-virtual {v0, p5, p6, v4, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->b(JZZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 261
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->f()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 265
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    if-nez p1, :cond_c

    .line 266
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->I:Z

    .line 267
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->w:Z

    .line 268
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 270
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_a

    aget-object p3, p1, v1

    .line 271
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->m()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 273
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    goto :goto_a

    .line 275
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p1

    :goto_8
    if-ge v1, p2, :cond_e

    aget-object p3, p1, v1

    .line 276
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    if-eqz v0, :cond_e

    .line 280
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->b(J)J

    move-result-wide p5

    .line 282
    :goto_9
    array-length p1, p3

    if-ge v1, p1, :cond_e

    .line 283
    aget-object p1, p3, v1

    if-eqz p1, :cond_d

    .line 284
    aput-boolean v4, p4, v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 288
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->v:Z

    return-wide p5
.end method

.method public a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 3

    .line 566
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 568
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->r:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->f:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    .line 573
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    .line 574
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->r:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->r:[I

    .line 575
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->r:[I

    aput p1, v1, p2

    .line 576
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 577
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aput-object v0, p1, p2

    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->s:Z

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 296
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->B:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->a(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 597
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 1

    .line 589
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 590
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V
    .locals 22

    move-object/from16 v0, p0

    .line 484
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->m()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    .line 486
    :goto_0
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    .line 488
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->e:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/SeekMap;->a()Z

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;->a(JZ)V

    .line 490
    :cond_1
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 491
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 497
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->b(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v12

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    .line 501
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->c(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v20

    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    .line 490
    invoke-virtual/range {v5 .. v21}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 502
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    const/4 v1, 0x1

    .line 503
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    .line 504
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->o:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    .line 510
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 511
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object v2

    .line 517
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->b(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->A:J

    .line 521
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;->c(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)J

    move-result-wide v16

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 510
    invoke-virtual/range {v1 .. v17}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/upstream/DataSpec;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    .line 523
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;)V

    .line 524
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 525
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    if-lez v1, :cond_1

    .line 528
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->o:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->o:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 208
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->k:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->a()Z

    .line 209
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->k()V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 53
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 53
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->a(Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractingLoadable;JJZ)V

    return-void
.end method

.method a(I)Z
    .locals 1

    .line 400
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(J)J
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->p:Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/SeekMap;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 366
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->G:J

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->w:Z

    .line 369
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d(J)Z

    move-result v1

    if-eqz v1, :cond_1

    return-wide p1

    .line 373
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->I:Z

    .line 374
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    .line 375
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    .line 376
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()V

    goto :goto_2

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 380
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-wide p1
.end method

.method public b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->z:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->x:Z

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c()V

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->x:Z

    .line 329
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->w:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    if-nez v0, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->l()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->J:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->w:Z

    .line 332
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->G:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 0

    .line 307
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->I:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->t:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->k:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ConditionVariable;->a()Z

    move-result p1

    .line 311
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->b()Z

    move-result p2

    if-nez p2, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->k()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c_()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->h()V

    return-void
.end method

.method public d()J
    .locals 8

    .line 339
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->K:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_0

    return-wide v1

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->H:J

    return-wide v0

    .line 345
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->E:Z

    if-eqz v0, :cond_3

    const-wide v3, 0x7fffffffffffffffL

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v0, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    .line 350
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->C:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 351
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object v6, v6, v5

    .line 352
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->i()J

    move-result-wide v6

    .line 351
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 356
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->m()J

    move-result-wide v3

    :cond_4
    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    .line 358
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->G:J

    :cond_5
    return-wide v3
.end method

.method public e()J
    .locals 2

    .line 320
    iget v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->y:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 184
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->t:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 188
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->m()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->L:Z

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b()V

    return-void
.end method

.method public g()V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->q:[Lcom/google/android/exoplayer2/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 200
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->j:Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->a()V

    return-void
.end method

.method h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->i:Lcom/google/android/exoplayer2/upstream/Loader;

    iget v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->u:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(I)V

    return-void
.end method
