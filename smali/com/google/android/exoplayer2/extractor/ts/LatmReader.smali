.class public final Lcom/google/android/exoplayer2/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private e:Lcom/google/android/exoplayer2/Format;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private r:I

.field private s:J

.field private t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->a:Ljava/lang/String;

    .line 78
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 79
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a(I)V

    .line 298
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a([B)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->l:Z

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->l:Z

    if-nez v0, :cond_1

    return-void

    .line 160
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->m:I

    if-nez v0, :cond_4

    .line 161
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->n:I

    if-nez v0, :cond_3

    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->e(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->a(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V

    .line 166
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->p:Z

    if-eqz v0, :cond_2

    .line 167
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->q:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    :cond_2
    return-void

    .line 162
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1

    .line 170
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1
.end method

.method private a(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)V
    .locals 8

    .line 281
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a([BII)V

    .line 289
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 291
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 292
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->k:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 293
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->k:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->s:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->k:J

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 178
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    .line 179
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->m:I

    .line 180
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->m:I

    if-nez v5, :cond_9

    if-ne v3, v2, :cond_1

    .line 182
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->f(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    .line 184
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x6

    .line 187
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->n:I

    const/4 v5, 0x4

    .line 188
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v5

    const/4 v6, 0x3

    .line 189
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v6

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    const/16 v5, 0x8

    if-nez v3, :cond_2

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b()I

    move-result v6

    .line 195
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->d(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v7

    .line 196
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a(I)V

    add-int/lit8 v6, v7, 0x7

    .line 197
    div-int/2addr v6, v5

    new-array v6, v6, [B

    .line 198
    invoke-virtual {v1, v6, v4, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a([BII)V

    .line 199
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->f:Ljava/lang/String;

    const-string v9, "audio/mp4a-latm"

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->t:I

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->r:I

    .line 201
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->a:Ljava/lang/String;

    move-object/from16 v18, v4

    .line 199
    invoke-static/range {v8 .. v18}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 202
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->e:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 203
    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->e:Lcom/google/android/exoplayer2/Format;

    const-wide/32 v6, 0x3d090000

    .line 204
    iget v8, v4, Lcom/google/android/exoplayer2/Format;->s:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->s:J

    .line 205
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v6, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_1

    .line 208
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->f(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v6

    long-to-int v4, v6

    .line 209
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->d(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v6

    sub-int/2addr v4, v6

    .line 210
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    .line 212
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->c(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->p:Z

    const-wide/16 v6, 0x0

    .line 214
    iput-wide v6, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->q:J

    .line 215
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->p:Z

    if-eqz v4, :cond_5

    if-ne v3, v2, :cond_4

    .line 217
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->f(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->q:J

    goto :goto_2

    .line 221
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v2

    .line 222
    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->q:J

    shl-long/2addr v3, v5

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->q:J

    if-nez v2, :cond_4

    .line 226
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 228
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    :cond_6
    return-void

    .line 191
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    .line 185
    :cond_8
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1

    .line 231
    :cond_9
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw v1
.end method

.method private c(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V
    .locals 1

    const/4 v0, 0x3

    .line 236
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->o:I

    .line 237
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->o:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 251
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    .line 247
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x9

    .line 242
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x8

    .line 239
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->b(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private d(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a()I

    move-result v0

    const/4 v1, 0x1

    .line 258
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;

    move-result-object v1

    .line 259
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->r:I

    .line 260
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->t:I

    .line 261
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private e(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 267
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->o:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    .line 270
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    .line 275
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ParserException;-><init>()V

    throw p1
.end method

.method private static f(Lcom/google/android/exoplayer2/util/ParsableBitArray;)J
    .locals 2

    const/4 v0, 0x2

    .line 302
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 303
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->c(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->g:I

    .line 85
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->l:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->k:J

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 90
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 91
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->d:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 92
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v0

    if-lez v0, :cond_3

    .line 104
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->i:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->h:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->h:I

    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 130
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->h:I

    .line 131
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->h:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->i:I

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->a(I)V

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->c:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->a(Lcom/google/android/exoplayer2/util/ParsableBitArray;)V

    .line 134
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->g:I

    goto :goto_0

    .line 120
    :pswitch_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->i:I

    .line 121
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->i:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->b:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->i:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->a(I)V

    .line 124
    :cond_1
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->h:I

    const/4 v0, 0x3

    .line 125
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->g:I

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v0

    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_2

    .line 113
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->j:I

    const/4 v0, 0x2

    .line 114
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->g:I

    goto :goto_0

    :cond_2
    if-eq v0, v1, :cond_0

    .line 116
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->g:I

    goto :goto_0

    .line 106
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 107
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;->g:I

    goto :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method
