.class public final Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->f:I

    .line 65
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 66
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->c:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 125
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    .line 126
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v1

    .line 127
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 129
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 130
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->i:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 131
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->i:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 133
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 135
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->i:Z

    .line 136
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    const/4 p1, 0x2

    .line 137
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    .line 138
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->f:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 20

    move-object/from16 v0, p0

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v1

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 163
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 164
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    .line 165
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    if-ge v1, v3, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 171
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->a(ILcom/google/android/exoplayer2/extractor/MpegAudioHeader;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 174
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    .line 175
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->f:I

    return-void

    .line 179
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->c:I

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->k:I

    .line 180
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->h:Z

    if-nez v1, :cond_2

    const-wide/32 v5, 0xf4240

    .line 181
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->g:I

    int-to-long v7, v1

    mul-long v7, v7, v5

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->d:I

    int-to-long v5, v1

    div-long/2addr v7, v5

    iput-wide v7, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->j:J

    .line 182
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    iget-object v10, v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->b:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x1000

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    iget v14, v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->e:I

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b:Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;

    iget v15, v1, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->d:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->c:Ljava/lang/String;

    move-object/from16 v19, v1

    invoke-static/range {v9 .. v19}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 185
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v5, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 186
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->h:Z

    .line 189
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 190
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->a:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v1, 0x2

    .line 191
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->f:I

    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 207
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->k:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 209
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    .line 210
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->k:I

    if-ge p1, v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->l:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->k:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 216
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->l:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->l:J

    const/4 p1, 0x0

    .line 217
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    .line 218
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->f:I

    .line 74
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->g:I

    .line 75
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->i:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->l:J

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 80
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 81
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->d:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->e:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 1

    .line 92
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method
