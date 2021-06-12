.class abstract Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;,
        Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

.field private b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private c:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private d:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x3

    .line 125
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    const/4 p1, -0x1

    return p1

    .line 128
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->k:J

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->c()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->f:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->j:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->f:J

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->j:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->a:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->s:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->i:I

    .line 137
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->m:Z

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->j:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 139
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->m:Z

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->j:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->b:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 143
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->j:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->b:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_1

    .line 144
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 145
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    goto :goto_1

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->b()Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    move-result-object v0

    .line 148
    new-instance v11, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->f:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->d()J

    move-result-wide v5

    iget p1, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->h:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->i:I

    add-int v8, p1, v2

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->c:J

    move-object v2, v11

    move-object v7, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/extractor/ogg/DefaultOggSeeker;-><init>(JJLcom/google/android/exoplayer2/extractor/ogg/StreamReader;IJ)V

    iput-object v11, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    .line 153
    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->j:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    const/4 p1, 0x2

    .line 154
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    .line 156
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->d()V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 162
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    move-object/from16 v7, p2

    .line 164
    iput-wide v2, v7, Lcom/google/android/exoplayer2/extractor/PositionHolder;->a:J

    return v4

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    .line 167
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->c(J)V

    .line 169
    :cond_1
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->l:Z

    if-nez v2, :cond_2

    .line 170
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->c()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object v2

    .line 171
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->c:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 172
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->l:Z

    .line 175
    :cond_2
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->k:J

    cmp-long v2, v2, v5

    if-gtz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 188
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    const/4 v1, -0x1

    return v1

    .line 176
    :cond_4
    :goto_0
    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->k:J

    .line 177
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->c()Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    .line 179
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->g:J

    add-long/2addr v4, v2

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->e:J

    cmp-long v4, v4, v9

    if-ltz v4, :cond_5

    .line 181
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->g:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a(J)J

    move-result-wide v10

    .line 182
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 183
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 184
    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->e:J

    .line 186
    :cond_5
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->g:J

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method final a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 114
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 110
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    const/4 p1, 0x2

    .line 111
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    const/4 p1, 0x0

    return p1

    .line 108
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 201
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method final a(JJ)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a:Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->a()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 92
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a(Z)V

    goto :goto_0

    .line 94
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->d:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;

    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->e:J

    const/4 p1, 0x2

    .line 96
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->c:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->b:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 76
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->j:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;

    .line 77
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->f:J

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 82
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->e:J

    .line 83
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->g:J

    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected b(J)J
    .locals 2

    .line 211
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected abstract b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
.end method

.method protected c(J)V
    .locals 0

    .line 240
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->g:J

    return-void
.end method
