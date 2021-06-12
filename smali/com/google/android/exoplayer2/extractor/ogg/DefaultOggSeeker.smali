.class final Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

.field private final b:J

.field private final c:J

.field private final d:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/extractor/ogg/StreamReader;IJ)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    cmp-long v1, p3, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 67
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 68
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->d:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    .line 69
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->b:J

    .line 70
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    int-to-long p5, p6

    sub-long/2addr p3, p1

    cmp-long p1, p5, p3

    if-nez p1, :cond_1

    .line 72
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->f:J

    const/4 p1, 0x3

    .line 73
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    goto :goto_1

    .line 75
    :cond_1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    :goto_1
    return-void
.end method

.method private a(JJJ)J
    .locals 4

    .line 205
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->b:J

    sub-long/2addr v0, v2

    mul-long p3, p3, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->f:J

    div-long/2addr p3, v0

    sub-long/2addr p3, p5

    add-long/2addr p1, p3

    .line 206
    iget-wide p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->b:J

    cmp-long p3, p1, p3

    if-gez p3, :cond_0

    .line 207
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->b:J

    .line 209
    :cond_0
    iget-wide p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    cmp-long p3, p1, p3

    if-ltz p3, :cond_1

    .line 210
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    :cond_1
    return-wide p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;JJJ)J
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->d:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(J)J
    .locals 4

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->d:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->b(J)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->h:J

    .line 120
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    .line 121
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->b()V

    .line 122
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->h:J

    return-wide p1
.end method

.method public a(JLcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    const-wide/16 v4, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 156
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->k:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    .line 159
    :cond_0
    invoke-interface {p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    .line 160
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    invoke-virtual {p0, p3, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    .line 164
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    return-wide p1

    .line 162
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No ogg page can be found."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 168
    invoke-interface {p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    .line 170
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->c:J

    sub-long/2addr p1, v2

    .line 171
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->h:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->i:I

    add-int/2addr v2, v3

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-ltz v3, :cond_4

    const-wide/32 v6, 0x11940

    cmp-long v6, p1, v6

    if-lez v6, :cond_3

    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {p3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 201
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->c:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    :cond_4
    :goto_0
    const-wide/32 v6, 0x186a0

    if-gez v3, :cond_5

    .line 174
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->c:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->l:J

    goto :goto_1

    .line 177
    :cond_5
    invoke-interface {p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    int-to-long v8, v2

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->c:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->k:J

    .line 179
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    sub-long/2addr v0, v10

    add-long/2addr v0, v8

    cmp-long v0, v0, v6

    if-gez v0, :cond_6

    .line 180
    invoke-interface {p3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 181
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->k:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    .line 185
    :cond_6
    :goto_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    sub-long/2addr v0, v8

    cmp-long v0, v0, v6

    if-gez v0, :cond_7

    .line 186
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    .line 187
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    return-wide p1

    :cond_7
    int-to-long v0, v2

    const-wide/16 v6, 0x1

    if-gtz v3, :cond_8

    goto :goto_2

    :cond_8
    move-wide v4, v6

    :goto_2
    mul-long v0, v0, v4

    .line 191
    invoke-interface {p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    sub-long/2addr v0, v4

    mul-long p1, p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->l:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->k:J

    sub-long/2addr v0, v4

    div-long/2addr p1, v0

    add-long/2addr v2, p1

    .line 194
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 195
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    sub-long/2addr v0, v6

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 99
    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->h:J

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->h:J

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a(JLcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    return-wide v2

    .line 106
    :cond_1
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->h:J

    add-long/2addr v2, v4

    neg-long v10, v2

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JJ)J

    move-result-wide v6

    .line 108
    :goto_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    add-long/2addr v6, v4

    neg-long v0, v6

    return-wide v0

    .line 85
    :pswitch_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->g:J

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    .line 88
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    const-wide/32 v4, 0xff1b

    sub-long/2addr v2, v4

    .line 89
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->g:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return-wide v2

    .line 94
    :cond_2
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->f:J

    .line 95
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->e:I

    .line 96
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->g:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->c:J

    cmp-long v0, v2, p2

    if-gez v0, :cond_0

    .line 332
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget p4, p4, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->h:I

    iget-object p5, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget p5, p5, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->i:I

    add-int/2addr p4, p5

    invoke-interface {p1, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 334
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide p4, p4, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->c:J

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    goto :goto_0

    .line 338
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a()V

    return-wide p4
.end method

.method public a()Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
    .locals 5

    .line 127
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->f:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    invoke-direct {v0, p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$1;)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x3

    add-long/2addr p2, v0

    .line 267
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const/16 v0, 0x800

    .line 268
    new-array v0, v0, [B

    .line 269
    array-length v1, v0

    .line 271
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v2, v2, p2

    if-lez v2, :cond_0

    .line 273
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v1

    sub-long v1, p2, v1

    long-to-int v1, v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    return v4

    .line 279
    :cond_0
    invoke-interface {p1, v0, v4, v1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BIIZ)Z

    :goto_1
    add-int/lit8 v2, v1, -0x3

    if-ge v4, v2, :cond_2

    .line 281
    aget-byte v2, v0, v4

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x2

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x3

    aget-byte v2, v0, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_1

    .line 284
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 289
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->i:J

    .line 133
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->j:J

    const-wide/16 v0, 0x0

    .line 134
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->k:J

    .line 135
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->f:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->l:J

    return-void
.end method

.method b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 249
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 251
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->a()V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->h:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->c:J

    return-wide v0
.end method

.method public synthetic c()Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;->a()Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;

    move-result-object v0

    return-object v0
.end method
