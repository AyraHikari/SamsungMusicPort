.class final Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

.field private final b:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field private final c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->a:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    .line 259
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->b:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 260
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method

.method private b()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->d:Z

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->e:Z

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->g:I

    return-void
.end method

.method private c()V
    .locals 10

    const-wide/16 v0, 0x0

    .line 309
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->h:J

    .line 310
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->d:Z

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 313
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 314
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 315
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 316
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 317
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 318
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->f:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->e:Z

    if-eqz v5, :cond_0

    .line 319
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 321
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 322
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 323
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 324
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 325
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 331
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->b:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->b(J)J

    .line 332
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->f:Z

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->b:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->h:J

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->f:Z

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->a:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->a()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a(I)V

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->b()V

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->g:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a(I)V

    .line 287
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->c()V

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->a:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->h:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->a(JZ)V

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->a:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 291
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor$PesReader;->a:Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;->b()V

    return-void
.end method
