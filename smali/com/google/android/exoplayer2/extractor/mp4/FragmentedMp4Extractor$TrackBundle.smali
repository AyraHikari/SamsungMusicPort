.class final Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public final b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

.field public c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

.field public d:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final j:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 1

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1386
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1387
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1388
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->j:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)V
    .locals 0

    .line 1369
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1498
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1503
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    .line 1504
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->d:I

    if-eqz v2, :cond_1

    .line 1505
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1507
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->n:[Z

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 1508
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    :cond_2
    return-void
.end method

.method private e()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 2

    .line 1513
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->a:I

    .line 1514
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->o:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->o:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 1516
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a()V

    const/4 v0, 0x0

    .line 1408
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    .line 1409
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    .line 1410
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 1411
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 1421
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->a(J)J

    move-result-wide p1

    .line 1422
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    .line 1423
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->f:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1424
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->b(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 1425
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->l:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1426
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 3

    .line 1399
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->a:I

    .line 1400
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1402
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V
    .locals 1

    .line 1392
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 1393
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 1394
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->f:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 1395
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a()V

    return-void
.end method

.method public b()Z
    .locals 4

    .line 1441
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    .line 1442
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 1443
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->h:[I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    .line 1444
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    const/4 v0, 0x0

    .line 1445
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    return v0

    :cond_0
    return v1
.end method

.method public c()I
    .locals 6

    .line 1457
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1461
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e()Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    .line 1464
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->d:I

    if-eqz v2, :cond_1

    .line 1465
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1466
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->d:I

    goto :goto_0

    .line 1469
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->e:[B

    .line 1470
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->j:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BI)V

    .line 1471
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->j:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1472
    array-length v0, v0

    .line 1475
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->n:[Z

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    aget-boolean v3, v3, v4

    .line 1478
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    if-eqz v3, :cond_2

    const/16 v5, 0x80

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 1479
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1480
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->i:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1482
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    if-nez v3, :cond_3

    add-int/2addr v0, v5

    return v0

    .line 1488
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->q:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1489
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v2

    const/4 v3, -0x2

    .line 1490
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x2

    .line 1492
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    return v0
.end method
