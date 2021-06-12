.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vide"

    .line 48
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a:I

    const-string v0, "soun"

    .line 49
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->b:I

    const-string v0, "text"

    .line 50
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->c:I

    const-string v0, "sbtl"

    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->d:I

    const-string v0, "subt"

    .line 52
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->e:I

    const-string v0, "clcp"

    .line 53
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->f:I

    const-string v0, "meta"

    .line 54
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->g:I

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 508
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 509
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 510
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 511
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 827
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->Q:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 830
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 831
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 832
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 833
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v0

    .line 834
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v1

    .line 835
    new-array v2, v1, [J

    .line 836
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 840
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->q()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 841
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->j()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 846
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 844
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 848
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 828
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 1087
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1088
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v8

    .line 1089
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v9

    .line 1090
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ab:I

    if-ne v9, v10, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 1092
    :cond_0
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->W:I

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 1093
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1095
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->e(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1096
    :cond_1
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->X:I

    if-ne v9, v10, :cond_2

    move v6, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    .line 1103
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    .line 1104
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v5, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 1105
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    if-eq v6, v1, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 1106
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 1108
    invoke-static {p0, v6, v7, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    const-string p2, "tenc atom is mandatory"

    .line 1110
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 1111
    invoke-static {v5, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    const/16 v0, 0xc

    .line 631
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v11

    .line 633
    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v12, v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_8

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v15

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    .line 637
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 639
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->b:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->c:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->Z:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->al:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->d:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->e:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->f:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aK:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aL:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_4

    .line 646
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->i:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aa:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->n:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->p:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->r:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->u:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->s:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->t:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ay:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->az:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->l:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->m:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->j:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aO:I

    if-ne v1, v0, :cond_2

    goto :goto_3

    .line 655
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aj:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->au:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->av:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aw:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ax:I

    if-ne v1, v0, :cond_3

    goto :goto_2

    .line 660
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aN:I

    if-ne v1, v0, :cond_7

    .line 661
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_5

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    .line 658
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_5

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    .line 653
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    .line 644
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_7
    :goto_5
    add-int v15, v15, v16

    .line 664
    invoke-virtual {v10, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v12
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 77
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->E:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    .line 78
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->S:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_0

    return-object v2

    .line 83
    :cond_0
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->O:I

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 85
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->a(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v8, p2

    .line 87
    :goto_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v14

    cmp-long v4, v8, v6

    if-nez v4, :cond_2

    :goto_1
    move-wide v10, v6

    goto :goto_2

    :cond_2
    const-wide/32 v10, 0xf4240

    move-wide v12, v14

    .line 92
    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v6

    goto :goto_1

    .line 94
    :goto_2
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->F:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->G:I

    .line 95
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 97
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->R:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 98
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->T:I

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->b(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v17

    .line 99
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->c(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v18

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/String;

    move-object/from16 v16, v4

    move-object/from16 v20, p4

    move/from16 v21, p6

    .line 98
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    if-nez p5, :cond_3

    .line 103
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->P:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    .line 104
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 105
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_3

    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    .line 107
    :goto_3
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 108
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->b(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->d:I

    iget-object v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->a:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->c:I

    move-object v3, v0

    move v4, v2

    move v2, v8

    move-wide v8, v14

    move-object v14, v1

    move v15, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_4
    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 1121
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1122
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v3

    .line 1124
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->Y:I

    if-ne v3, v4, :cond_3

    .line 1125
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p1

    .line 1126
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1127
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1131
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1137
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1138
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v6

    const/16 p1, 0x10

    .line 1139
    new-array v7, p1, [B

    .line 1140
    array-length p1, v7

    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 1143
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p1

    .line 1144
    new-array v2, p1, [B

    .line 1145
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    :cond_2
    move-object v10, v2

    .line 1147
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 125
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aq:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 127
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 129
    :cond_0
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ar:I

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 133
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 136
    :goto_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->a()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 138
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v0

    .line 144
    :cond_1
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->as:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 147
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->at:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 149
    :goto_1
    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 151
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ap:I

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 153
    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->am:I

    invoke-virtual {v1, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 155
    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->an:I

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 156
    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    move-object v11, v12

    .line 158
    :goto_2
    sget v13, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ao:I

    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_3

    :cond_4
    move-object v1, v12

    .line 162
    :goto_3
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v6, 0xc

    .line 165
    invoke-virtual {v10, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 166
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v8

    sub-int/2addr v8, v7

    .line 167
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v9

    .line 168
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v14

    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 176
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v15

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    const/16 v16, -0x1

    if-eqz v11, :cond_7

    .line 182
    invoke-virtual {v11, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 183
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v6

    if-lez v6, :cond_6

    .line 185
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    goto :goto_5

    :cond_6
    move-object v11, v12

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    .line 193
    :goto_5
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->c()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "audio/raw"

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 194
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    const-wide/16 v18, 0x0

    if-nez v5, :cond_18

    .line 207
    new-array v5, v3, [J

    .line 208
    new-array v12, v3, [I

    .line 209
    new-array v7, v3, [J

    move/from16 v21, v6

    .line 210
    new-array v6, v3, [I

    move/from16 v28, v8

    move/from16 v27, v9

    move-object/from16 v26, v10

    move v10, v14

    move/from16 v23, v15

    move/from16 v2, v16

    move-wide/from16 v14, v18

    move/from16 v9, v21

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v21, v14

    :goto_7
    if-ge v8, v3, :cond_12

    :goto_8
    if-nez v24, :cond_9

    .line 217
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->a()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    move/from16 v29, v9

    move/from16 v30, v10

    .line 218
    iget-wide v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->d:J

    move-wide/from16 v31, v9

    .line 219
    iget v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->c:I

    move/from16 v24, v9

    move/from16 v9, v29

    move/from16 v10, v30

    move-wide/from16 v21, v31

    goto :goto_8

    :cond_9
    move/from16 v29, v9

    move/from16 v30, v10

    if-eqz v1, :cond_b

    :goto_9
    if-nez v16, :cond_a

    if-lez v23, :cond_a

    .line 225
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v16

    .line 231
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v25

    add-int/lit8 v23, v23, -0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v16, v16, -0x1

    :cond_b
    move/from16 v9, v25

    .line 237
    aput-wide v21, v5, v8

    .line 238
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->b()I

    move-result v10

    aput v10, v12, v8

    .line 239
    aget v10, v12, v8

    if-le v10, v0, :cond_c

    .line 240
    aget v0, v12, v8

    :cond_c
    move/from16 v34, v3

    move-object/from16 v33, v4

    int-to-long v3, v9

    add-long/2addr v3, v14

    .line 242
    aput-wide v3, v7, v8

    if-nez v11, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    .line 245
    :goto_a
    aput v3, v6, v8

    if-ne v8, v2, :cond_f

    const/4 v3, 0x1

    .line 247
    aput v3, v6, v8

    add-int/lit8 v4, v29, -0x1

    if-lez v4, :cond_e

    .line 250
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_e
    move/from16 v35, v2

    move/from16 v36, v4

    goto :goto_b

    :cond_f
    move/from16 v35, v2

    move/from16 v36, v29

    :goto_b
    move/from16 v2, v30

    int-to-long v3, v2

    add-long/2addr v14, v3

    add-int/lit8 v27, v27, -0x1

    if-nez v27, :cond_10

    move/from16 v3, v28

    if-lez v3, :cond_11

    .line 258
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v2

    .line 265
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v4

    add-int/lit8 v28, v3, -0x1

    move/from16 v27, v2

    move v10, v4

    goto :goto_c

    :cond_10
    move/from16 v3, v28

    :cond_11
    move v10, v2

    move/from16 v28, v3

    .line 269
    :goto_c
    aget v2, v12, v8

    int-to-long v2, v2

    add-long v21, v21, v2

    add-int/lit8 v24, v24, -0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v25, v9

    move-object/from16 v4, v33

    move/from16 v3, v34

    move/from16 v2, v35

    move/from16 v9, v36

    goto/16 :goto_7

    :cond_12
    move/from16 v34, v3

    move/from16 v29, v9

    move/from16 v9, v25

    move/from16 v3, v28

    int-to-long v8, v9

    add-long/2addr v14, v8

    if-nez v16, :cond_13

    const/4 v2, 0x1

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    .line 274
    :goto_d
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    :goto_e
    if-lez v23, :cond_15

    .line 277
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    :goto_f
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 278
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    add-int/lit8 v23, v23, -0x1

    goto :goto_e

    :cond_15
    if-nez v29, :cond_17

    if-nez v27, :cond_17

    if-nez v24, :cond_17

    if-eqz v3, :cond_16

    goto :goto_10

    :cond_16
    move v4, v0

    move-object/from16 v0, p0

    goto :goto_11

    :cond_17
    :goto_10
    const-string v1, "AtomParsers"

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": remainingSynchronizationSamples "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v29

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v27

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingSamplesInChunk "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v24

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remainingTimestampDeltaChanges "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move v3, v4

    goto :goto_13

    :cond_18
    move/from16 v34, v3

    move-object/from16 v33, v4

    .line 293
    iget v1, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->a:I

    new-array v1, v1, [J

    .line 294
    iget v2, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->a:I

    new-array v2, v2, [I

    .line 295
    :goto_12
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->a()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 296
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->b:I

    iget-wide v4, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->d:J

    aput-wide v4, v1, v3

    .line 297
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->b:I

    iget v4, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->c:I

    aput v4, v2, v3

    goto :goto_12

    .line 299
    :cond_19
    invoke-interface/range {v33 .. v33}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->b()I

    move-result v3

    int-to-long v4, v14

    .line 300
    invoke-static {v3, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->a(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v1

    .line 302
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->a:[J

    .line 303
    iget-object v12, v1, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->b:[I

    .line 304
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->c:I

    .line 305
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->d:[J

    .line 306
    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->e:[I

    .line 307
    iget-wide v14, v1, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->f:J

    move v3, v2

    :goto_13
    move-object v1, v5

    move-object v5, v6

    move-object v4, v7

    move-object v2, v12

    const-wide/32 v23, 0xf4240

    .line 309
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v21, v14

    move-wide/from16 v25, v6

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v6

    .line 311
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    if-eqz v8, :cond_31

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->a()Z

    move-result v8

    if-eqz v8, :cond_1a

    goto/16 :goto_24

    .line 325
    :cond_1a
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    array-length v8, v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_1c

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->b:I

    if-ne v8, v11, :cond_1c

    array-length v8, v4

    const/4 v11, 0x2

    if-lt v8, v11, :cond_1c

    .line 328
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->i:[J

    const/4 v11, 0x0

    aget-wide v12, v8, v11

    .line 329
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    aget-wide v21, v8, v11

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v37, v6

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->d:J

    move-wide/from16 v23, v9

    move-wide/from16 v25, v6

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v6

    add-long/2addr v6, v12

    move-object/from16 v21, v4

    move-wide/from16 v22, v14

    move-wide/from16 v24, v12

    move-wide/from16 v26, v6

    .line 331
    invoke-static/range {v21 .. v27}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a([JJJJ)Z

    move-result v8

    if-eqz v8, :cond_1d

    sub-long v21, v14, v6

    const/4 v6, 0x0

    .line 333
    aget-wide v7, v4, v6

    sub-long v23, v12, v7

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->f:Lcom/google/android/exoplayer2/Format;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->s:I

    int-to-long v6, v6

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    invoke-static/range {v23 .. v28}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v6

    .line 335
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->f:Lcom/google/android/exoplayer2/Format;

    iget v8, v8, Lcom/google/android/exoplayer2/Format;->s:I

    int-to-long v8, v8

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v8

    cmp-long v10, v6, v18

    if-nez v10, :cond_1b

    cmp-long v10, v8, v18

    if-eqz v10, :cond_1d

    :cond_1b
    const-wide/32 v10, 0x7fffffff

    cmp-long v12, v6, v10

    if-gtz v12, :cond_1d

    cmp-long v10, v8, v10

    if-gtz v10, :cond_1d

    long-to-int v6, v6

    move-object/from16 v7, p2

    .line 339
    iput v6, v7, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->b:I

    long-to-int v6, v8

    .line 340
    iput v6, v7, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->c:I

    .line 341
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    const-wide/32 v8, 0xf4240

    invoke-static {v4, v8, v9, v6, v7}, Lcom/google/android/exoplayer2/util/Util;->a([JJJ)V

    .line 342
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v8

    move-wide/from16 v6, v37

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v8

    :cond_1c
    move-wide/from16 v37, v6

    .line 347
    :cond_1d
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    const/4 v7, 0x0

    aget-wide v8, v6, v7

    cmp-long v6, v8, v18

    if-nez v6, :cond_1f

    .line 351
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->i:[J

    aget-wide v8, v6, v7

    const/4 v6, 0x0

    .line 352
    :goto_14
    array-length v7, v4

    if-ge v6, v7, :cond_1e

    .line 353
    aget-wide v10, v4, v6

    sub-long v16, v10, v8

    const-wide/32 v18, 0xf4240

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v20, v10

    .line 354
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v10

    aput-wide v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1e
    const/4 v6, 0x0

    sub-long v16, v14, v8

    const-wide/32 v18, 0xf4240

    .line 357
    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v20, v6

    .line 358
    invoke-static/range {v16 .. v21}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v6

    .line 359
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v8

    .line 363
    :cond_1f
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->b:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_20

    const/4 v6, 0x1

    goto :goto_15

    :cond_20
    const/4 v6, 0x0

    :goto_15
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 369
    :goto_16
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    array-length v11, v11

    const-wide/16 v12, -0x1

    if-ge v7, v11, :cond_23

    .line 370
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->i:[J

    aget-wide v14, v11, v7

    cmp-long v11, v14, v12

    if-eqz v11, :cond_22

    .line 372
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    aget-wide v21, v11, v7

    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-object/from16 v39, v2

    move/from16 v40, v3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->d:J

    move-wide/from16 v23, v11

    move-wide/from16 v25, v2

    .line 373
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v2

    const/4 v11, 0x1

    .line 375
    invoke-static {v4, v14, v15, v11, v11}, Lcom/google/android/exoplayer2/util/Util;->b([JJZZ)I

    move-result v12

    add-long/2addr v14, v2

    const/4 v2, 0x0

    .line 377
    invoke-static {v4, v14, v15, v6, v2}, Lcom/google/android/exoplayer2/util/Util;->b([JJZZ)I

    move-result v3

    sub-int v2, v3, v12

    add-int/2addr v9, v2

    if-eq v10, v12, :cond_21

    const/4 v2, 0x1

    goto :goto_17

    :cond_21
    const/4 v2, 0x0

    :goto_17
    or-int/2addr v2, v8

    move v8, v2

    move v10, v3

    goto :goto_18

    :cond_22
    move-object/from16 v39, v2

    move/from16 v40, v3

    :goto_18
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v39

    move/from16 v3, v40

    goto :goto_16

    :cond_23
    move-object/from16 v39, v2

    move/from16 v40, v3

    move/from16 v2, v34

    if-eq v9, v2, :cond_24

    const/4 v2, 0x1

    goto :goto_19

    :cond_24
    const/4 v2, 0x0

    :goto_19
    or-int/2addr v2, v8

    if-eqz v2, :cond_25

    .line 387
    new-array v3, v9, [J

    goto :goto_1a

    :cond_25
    move-object v3, v1

    :goto_1a
    if-eqz v2, :cond_26

    .line 388
    new-array v7, v9, [I

    goto :goto_1b

    :cond_26
    move-object/from16 v7, v39

    :goto_1b
    if-eqz v2, :cond_27

    const/4 v8, 0x0

    goto :goto_1c

    :cond_27
    move/from16 v8, v40

    :goto_1c
    if-eqz v2, :cond_28

    .line 390
    new-array v10, v9, [I

    goto :goto_1d

    :cond_28
    move-object v10, v5

    .line 391
    :goto_1d
    new-array v9, v9, [J

    move v14, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 394
    :goto_1e
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    array-length v15, v15

    if-ge v8, v15, :cond_2d

    .line 395
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->i:[J

    aget-wide v12, v15, v8

    .line 396
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    aget-wide v27, v15, v8

    const-wide/16 v15, -0x1

    cmp-long v21, v12, v15

    if-eqz v21, :cond_2c

    move/from16 v41, v14

    .line 398
    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move/from16 v43, v8

    move-object/from16 v42, v9

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->d:J

    move-wide/from16 v21, v27

    move-wide/from16 v23, v14

    move-wide/from16 v25, v8

    .line 400
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v12

    const/4 v14, 0x1

    .line 401
    invoke-static {v4, v12, v13, v14, v14}, Lcom/google/android/exoplayer2/util/Util;->b([JJZZ)I

    move-result v15

    const/4 v14, 0x0

    .line 402
    invoke-static {v4, v8, v9, v6, v14}, Lcom/google/android/exoplayer2/util/Util;->b([JJZZ)I

    move-result v8

    if-eqz v2, :cond_29

    sub-int v9, v8, v15

    .line 405
    invoke-static {v1, v15, v3, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v14, v39

    .line 406
    invoke-static {v14, v15, v7, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    invoke-static {v5, v15, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    :cond_29
    move-object/from16 v14, v39

    :goto_1f
    move/from16 v9, v41

    :goto_20
    if-ge v15, v8, :cond_2b

    const-wide/32 v23, 0xf4240

    move-object/from16 v44, v5

    move/from16 v45, v6

    .line 410
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->d:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v5

    .line 411
    aget-wide v16, v4, v15

    sub-long v21, v16, v12

    move-wide/from16 v46, v12

    iget-wide v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v25, v12

    .line 412
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v12

    add-long/2addr v5, v12

    .line 414
    aput-wide v5, v42, v11

    if-eqz v2, :cond_2a

    .line 415
    aget v5, v7, v11

    if-le v5, v9, :cond_2a

    .line 416
    aget v9, v14, v15

    :cond_2a
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v44

    move/from16 v6, v45

    move-wide/from16 v12, v46

    goto :goto_20

    :cond_2b
    move-object/from16 v44, v5

    move/from16 v45, v6

    move/from16 v41, v9

    goto :goto_21

    :cond_2c
    move-object/from16 v44, v5

    move/from16 v45, v6

    move/from16 v43, v8

    move-object/from16 v42, v9

    move/from16 v41, v14

    move-object/from16 v14, v39

    :goto_21
    const/4 v5, 0x0

    add-long v18, v18, v27

    add-int/lit8 v8, v43, 0x1

    move-object/from16 v39, v14

    move/from16 v14, v41

    move-object/from16 v9, v42

    move-object/from16 v5, v44

    move/from16 v6, v45

    const-wide/16 v12, -0x1

    goto/16 :goto_1e

    :cond_2d
    move-object/from16 v44, v5

    move-object/from16 v42, v9

    move/from16 v41, v14

    move-object/from16 v14, v39

    const-wide/32 v23, 0xf4240

    .line 423
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v27

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 426
    :goto_22
    array-length v6, v10

    if-ge v2, v6, :cond_2f

    if-nez v5, :cond_2f

    .line 427
    aget v6, v10, v2

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-eqz v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_23

    :cond_2e
    const/4 v6, 0x0

    :goto_23
    or-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2f
    if-nez v5, :cond_30

    const-string v2, "AtomParsers"

    const-string v3, "Ignoring edit list: Edited sample sequence does not contain a sync sample."

    .line 432
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    const-wide/32 v5, 0xf4240

    invoke-static {v4, v5, v6, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a([JJJ)V

    .line 434
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v8

    move-object v2, v14

    move/from16 v3, v40

    move-object/from16 v5, v44

    move-wide/from16 v6, v37

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v8

    .line 437
    :cond_30
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move/from16 v24, v41

    move-object/from16 v25, v42

    move-object/from16 v26, v10

    invoke-direct/range {v21 .. v28}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v0

    :cond_31
    :goto_24
    move-object v14, v2

    move/from16 v40, v3

    move-object/from16 v44, v5

    move-wide/from16 v37, v6

    .line 314
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    const-wide/32 v5, 0xf4240

    invoke-static {v4, v5, v6, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a([JJJ)V

    .line 315
    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v8

    move-object v2, v14

    move/from16 v3, v40

    move-object/from16 v5, v44

    move-wide/from16 v6, v37

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v8

    .line 131
    :cond_32
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 459
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p1, 0x8

    .line 460
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 461
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 462
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v1

    .line 463
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 464
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v3

    .line 465
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aB:I

    if-ne v3, v4, :cond_1

    .line 466
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    add-int/2addr v1, v2

    .line 467
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, -0x8

    .line 469
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    const/16 v0, 0xc

    .line 475
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 476
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v0

    .line 478
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 479
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 480
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aC:I

    if-ne v2, v3, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    add-int/2addr v0, v1

    .line 482
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, -0x8

    .line 484
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 707
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    const/16 v5, 0x10

    .line 709
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v11

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v12

    const/16 v5, 0x32

    .line 714
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v5

    .line 717
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->Z:I

    const/4 v7, 0x0

    move/from16 v8, p1

    if-ne v8, v6, :cond_2

    .line 718
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->c(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 721
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_0

    move-object v3, v7

    goto :goto_0

    .line 722
    :cond_0
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    .line 723
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 724
    :goto_0
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->a:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v6, v9, p8

    .line 726
    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    :cond_2
    move-object/from16 v20, v3

    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v14, v7

    move-object/from16 v17, v14

    const/4 v3, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    :goto_1
    sub-int v9, v5, v1

    if-ge v9, v2, :cond_13

    .line 739
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v9

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v10

    if-nez v10, :cond_3

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v13

    sub-int/2addr v13, v1

    if-ne v13, v2, :cond_3

    goto/16 :goto_a

    :cond_3
    if-lez v10, :cond_4

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const-string v6, "childAtomSize should be positive"

    .line 746
    invoke-static {v15, v6}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v6

    .line 748
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->H:I

    const/4 v13, 0x3

    if-ne v6, v15, :cond_6

    if-nez v7, :cond_5

    const/16 v21, 0x1

    goto :goto_3

    :cond_5
    const/16 v21, 0x0

    .line 749
    :goto_3
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    const-string v7, "video/avc"

    add-int/lit8 v9, v9, 0x8

    .line 751
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 752
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v6

    .line 753
    iget-object v14, v6, Lcom/google/android/exoplayer2/video/AvcConfig;->a:Ljava/util/List;

    .line 754
    iget v9, v6, Lcom/google/android/exoplayer2/video/AvcConfig;->b:I

    iput v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->c:I

    if-nez v3, :cond_12

    .line 756
    iget v6, v6, Lcom/google/android/exoplayer2/video/AvcConfig;->e:F

    move/from16 v16, v6

    goto/16 :goto_9

    .line 758
    :cond_6
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->I:I

    if-ne v6, v15, :cond_8

    if-nez v7, :cond_7

    const/16 v21, 0x1

    goto :goto_4

    :cond_7
    const/16 v21, 0x0

    .line 759
    :goto_4
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    const-string v7, "video/hevc"

    add-int/lit8 v9, v9, 0x8

    .line 761
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 762
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v6

    .line 763
    iget-object v14, v6, Lcom/google/android/exoplayer2/video/HevcConfig;->a:Ljava/util/List;

    .line 764
    iget v6, v6, Lcom/google/android/exoplayer2/video/HevcConfig;->b:I

    iput v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->c:I

    goto/16 :goto_9

    .line 765
    :cond_8
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aM:I

    if-ne v6, v15, :cond_b

    if-nez v7, :cond_9

    const/16 v21, 0x1

    goto :goto_5

    :cond_9
    const/16 v21, 0x0

    .line 766
    :goto_5
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 767
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aK:I

    if-ne v8, v6, :cond_a

    const-string v6, "video/x-vnd.on2.vp8"

    :goto_6
    move-object v7, v6

    goto/16 :goto_9

    :cond_a
    const-string v6, "video/x-vnd.on2.vp9"

    goto :goto_6

    .line 768
    :cond_b
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->g:I

    if-ne v6, v15, :cond_d

    if-nez v7, :cond_c

    const/16 v21, 0x1

    goto :goto_7

    :cond_c
    const/16 v21, 0x0

    .line 769
    :goto_7
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    const-string v7, "video/3gpp"

    goto :goto_9

    .line 771
    :cond_d
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->J:I

    if-ne v6, v15, :cond_f

    if-nez v7, :cond_e

    const/16 v21, 0x1

    goto :goto_8

    :cond_e
    const/16 v21, 0x0

    .line 772
    :goto_8
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 774
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->d(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v6

    .line 775
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 776
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_9

    .line 777
    :cond_f
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ai:I

    if-ne v6, v15, :cond_10

    .line 778
    invoke-static {v0, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->c(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v16

    const/4 v3, 0x1

    goto :goto_9

    .line 780
    :cond_10
    sget v15, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aI:I

    if-ne v6, v15, :cond_11

    .line 781
    invoke-static {v0, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->d(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v17

    goto :goto_9

    .line 782
    :cond_11
    sget v9, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aH:I

    if-ne v6, v9, :cond_12

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v6

    .line 784
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    if-nez v6, :cond_12

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    const/16 v18, 0x3

    goto :goto_9

    :pswitch_1
    const/4 v6, 0x2

    const/16 v18, 0x2

    goto :goto_9

    :pswitch_2
    const/16 v18, 0x1

    goto :goto_9

    :pswitch_3
    const/16 v18, 0x0

    :cond_12
    :goto_9
    add-int/2addr v5, v10

    goto/16 :goto_1

    :cond_13
    :goto_a
    if-nez v7, :cond_14

    return-void

    .line 813
    :cond_14
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move/from16 v15, p5

    invoke-static/range {v6 .. v20}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    .line 671
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 678
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aj:I

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    if-ne v1, v3, :cond_0

    const-string v0, "application/ttml+xml"

    :goto_0
    move-object v8, v0

    :goto_1
    move-object/from16 v17, v4

    move-wide v15, v5

    goto :goto_2

    .line 680
    :cond_0
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->au:I

    if-ne v1, v3, :cond_1

    const-string v1, "application/x-quicktime-tx3g"

    add-int/lit8 v3, p3, -0x8

    add-int/lit8 v3, v3, -0x8

    .line 683
    new-array v4, v3, [B

    const/4 v7, 0x0

    .line 684
    invoke-virtual {v0, v4, v7, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 685
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v8, v1

    goto :goto_1

    .line 686
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->av:I

    if-ne v1, v0, :cond_2

    const-string v0, "application/x-mp4-vtt"

    goto :goto_0

    .line 688
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aw:I

    if-ne v1, v0, :cond_3

    const-string v0, "application/ttml+xml"

    const-wide/16 v5, 0x0

    goto :goto_0

    .line 691
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ax:I

    if-ne v1, v0, :cond_4

    const-string v0, "application/x-mp4-cea-608"

    const/4 v1, 0x1

    .line 694
    iput v1, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->d:I

    goto :goto_0

    .line 700
    :goto_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v12, p5

    invoke-static/range {v7 .. v17}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 697
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v13, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 861
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    const/4 v4, 0x6

    const/4 v12, 0x0

    if-eqz p6, :cond_0

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v5

    .line 866
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    goto :goto_0

    .line 868
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    const/4 v11, 0x2

    const/4 v10, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v10, :cond_1

    goto :goto_1

    :cond_1
    if-ne v5, v11, :cond_2

    .line 883
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->x()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v5

    const/16 v6, 0x14

    .line 890
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    move v7, v5

    goto :goto_2

    :cond_2
    return-void

    .line 875
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v7

    .line 876
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->s()I

    move-result v4

    if-ne v5, v10, :cond_4

    .line 880
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 896
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v5

    .line 897
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aa:I

    const/4 v15, 0x0

    move/from16 v8, p1

    if-ne v8, v6, :cond_7

    .line 898
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->c(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 901
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_5

    move-object v3, v15

    goto :goto_3

    .line 902
    :cond_5
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    .line 903
    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 904
    :goto_3
    iget-object v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->a:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v6, v9, p9

    .line 906
    :cond_6
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    :cond_7
    move-object v9, v3

    .line 915
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->n:I

    if-ne v8, v3, :cond_8

    const-string v3, "audio/ac3"

    goto :goto_6

    .line 917
    :cond_8
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->p:I

    if-ne v8, v3, :cond_9

    const-string v3, "audio/eac3"

    goto :goto_6

    .line 919
    :cond_9
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->r:I

    if-ne v8, v3, :cond_a

    const-string v3, "audio/vnd.dts"

    goto :goto_6

    .line 921
    :cond_a
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->s:I

    if-eq v8, v3, :cond_13

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->t:I

    if-ne v8, v3, :cond_b

    goto :goto_5

    .line 923
    :cond_b
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->u:I

    if-ne v8, v3, :cond_c

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    .line 925
    :cond_c
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ay:I

    if-ne v8, v3, :cond_d

    const-string v3, "audio/3gpp"

    goto :goto_6

    .line 927
    :cond_d
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->az:I

    if-ne v8, v3, :cond_e

    const-string v3, "audio/amr-wb"

    goto :goto_6

    .line 929
    :cond_e
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->l:I

    if-eq v8, v3, :cond_12

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->m:I

    if-ne v8, v3, :cond_f

    goto :goto_4

    .line 931
    :cond_f
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->j:I

    if-ne v8, v3, :cond_10

    const-string v3, "audio/mpeg"

    goto :goto_6

    .line 933
    :cond_10
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aO:I

    if-ne v8, v3, :cond_11

    const-string v3, "audio/alac"

    goto :goto_6

    :cond_11
    move-object v3, v15

    goto :goto_6

    :cond_12
    :goto_4
    const-string v3, "audio/raw"

    goto :goto_6

    :cond_13
    :goto_5
    const-string v3, "audio/vnd.dts.hd"

    :goto_6
    move/from16 v17, v4

    move v8, v5

    move/from16 v16, v7

    move-object/from16 v18, v15

    move-object v7, v3

    :goto_7
    sub-int v3, v8, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_1e

    .line 939
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v6

    if-lez v6, :cond_14

    const/4 v3, 0x1

    goto :goto_8

    :cond_14
    const/4 v3, 0x0

    :goto_8
    const-string v5, "childAtomSize should be positive"

    .line 941
    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v3

    .line 943
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->J:I

    if-eq v3, v5, :cond_1a

    if-eqz p6, :cond_15

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->k:I

    if-ne v3, v5, :cond_15

    goto/16 :goto_a

    .line 960
    :cond_15
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->o:I

    if-ne v3, v4, :cond_16

    add-int/lit8 v3, v8, 0x8

    .line 961
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 962
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v9}, Lcom/google/android/exoplayer2/audio/Ac3Util;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    :goto_9
    move v5, v6

    move-object/from16 v24, v7

    move v6, v8

    move-object/from16 v19, v9

    move-object v2, v13

    const/4 v7, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    goto/16 :goto_d

    .line 964
    :cond_16
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->q:I

    if-ne v3, v4, :cond_17

    add-int/lit8 v3, v8, 0x8

    .line 965
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 966
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v9}, Lcom/google/android/exoplayer2/audio/Ac3Util;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    goto :goto_9

    .line 968
    :cond_17
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->v:I

    if-ne v3, v4, :cond_19

    .line 969
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v4, v7

    move/from16 v23, v6

    move/from16 v6, v19

    move-object/from16 v24, v7

    move/from16 v7, v20

    move/from16 v25, v8

    move/from16 v8, v16

    move-object/from16 v19, v9

    move/from16 v9, v17

    const/16 v20, 0x1

    move-object/from16 v10, v21

    const/16 v21, 0x2

    move-object/from16 v11, v19

    move/from16 v12, v22

    move-object v2, v13

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    :cond_18
    move/from16 v5, v23

    move/from16 v6, v25

    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_19
    move/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v25, v8

    move-object/from16 v19, v9

    move-object v2, v13

    const/16 v20, 0x1

    const/16 v21, 0x2

    .line 972
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aO:I

    if-ne v3, v4, :cond_18

    move/from16 v5, v23

    .line 973
    new-array v3, v5, [B

    move/from16 v6, v25

    .line 974
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    const/4 v7, 0x0

    .line 975
    invoke-virtual {v0, v3, v7, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    move-object/from16 v18, v3

    goto :goto_d

    :cond_1a
    :goto_a
    move v5, v6

    move-object/from16 v24, v7

    move v6, v8

    move-object/from16 v19, v9

    move-object v2, v13

    const/4 v7, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x2

    .line 944
    sget v8, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->J:I

    if-ne v3, v8, :cond_1b

    move v8, v6

    goto :goto_b

    .line 945
    :cond_1b
    invoke-static {v0, v6, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I

    move-result v8

    :goto_b
    if-eq v8, v4, :cond_1c

    .line 948
    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->d(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v3

    .line 949
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 950
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v3

    check-cast v18, [B

    const-string v3, "audio/mp4a-latm"

    .line 951
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 955
    invoke-static/range {v18 .. v18}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->a([B)Landroid/util/Pair;

    move-result-object v3

    .line 956
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 957
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto :goto_c

    :cond_1c
    move-object/from16 v4, v24

    :cond_1d
    :goto_c
    move-object/from16 v24, v4

    :goto_d
    add-int v8, v6, v5

    move-object v13, v2

    move-object/from16 v9, v19

    move-object/from16 v7, v24

    move/from16 v2, p3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v24, v7

    move-object/from16 v19, v9

    move-object v2, v13

    const/16 v21, 0x2

    .line 980
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_21

    move-object/from16 v3, v24

    if-eqz v3, :cond_21

    const-string v0, "audio/raw"

    .line 983
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v7, 0x2

    goto :goto_e

    :cond_1f
    const/4 v7, -0x1

    .line 984
    :goto_e
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    if-nez v18, :cond_20

    move-object v8, v15

    goto :goto_f

    .line 986
    :cond_20
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    :goto_f
    const/4 v10, 0x0

    move-object v1, v3

    move-object v12, v2

    move-object v2, v4

    move v3, v5

    move v4, v6

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v9, v19

    move-object/from16 v11, p5

    .line 984
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->b:Lcom/google/android/exoplayer2/Format;

    :cond_21
    return-void
.end method

.method private static a([JJJJ)Z
    .locals 7

    .line 1188
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1189
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->a(III)I

    move-result v4

    .line 1190
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1191
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->a(III)I

    move-result v0

    .line 1192
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long p3, p3, v4

    if-gez p3, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static b(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I
    .locals 4

    .line 996
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 998
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 999
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 1000
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 1001
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 1002
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->J:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 11

    const/16 v0, 0x8

    .line 521
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 522
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 523
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    .line 525
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 526
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v3

    const/4 v4, 0x4

    .line 528
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 530
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v5

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 533
    iget-object v8, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    .line 540
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    .line 543
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    .line 551
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 552
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 553
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 554
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 555
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 556
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    .line 571
    :cond_9
    :goto_5
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    const/16 v0, 0x8

    .line 490
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 493
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    .line 852
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 853
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p1

    .line 854
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 1

    const/16 v0, 0x10

    .line 581
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 582
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p0

    .line 583
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->b:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 585
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 587
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->c:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->d:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->e:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->f:I

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 590
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->g:I

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1061
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1063
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 1065
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 1067
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->V:I

    if-ne v2, v3, :cond_1

    .line 1068
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 605
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 606
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 607
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 608
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 609
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 610
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 611
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result p0

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 615
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1014
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    const/4 p1, 0x1

    .line 1016
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1017
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->e(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 1018
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 1022
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 1028
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1032
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1033
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->e(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1036
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v0

    .line 1037
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 1038
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 1039
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 1040
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 1044
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1047
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1048
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->e(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 1049
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 1050
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 1051
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 1041
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1161
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 1163
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 1164
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aJ:I

    if-ne v2, v3, :cond_0

    .line 1165
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 1176
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
