.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final c:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:J

.field private i:Z


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 335
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->a:Landroid/net/Uri;

    .line 337
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 338
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->c:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 339
    iput p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->d:I

    .line 340
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->e:Ljava/lang/String;

    .line 341
    iput p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->f:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 342
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->h:J

    .line 343
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->g:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$1;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private b(JZ)V
    .locals 6

    .line 397
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->h:J

    .line 398
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->i:Z

    .line 400
    new-instance p1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->h:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->i:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->g:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZLjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->a(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 11

    .line 358
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 359
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 361
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->a()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->c:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 362
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->a()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->d:I

    .line 364
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->a(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v6

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->e:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->f:I

    move-object v1, v0

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(JZ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 386
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->h:J

    .line 387
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->h:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->i:Z

    if-ne v0, p3, :cond_1

    return-void

    .line 391
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->b(JZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/ExoPlayer;Z)V
    .locals 1

    .line 348
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->h:J

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->b(JZ)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 373
    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->f()V

    return-void
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
