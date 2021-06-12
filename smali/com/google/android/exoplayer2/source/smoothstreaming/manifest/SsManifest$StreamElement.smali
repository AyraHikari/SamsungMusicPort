.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamElement"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:[Lcom/google/android/exoplayer2/Format;

.field public final k:I

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final o:[J

.field private final p:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lcom/google/android/exoplayer2/Format;Ljava/util/List;J)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    const-wide/32 v0, 0xf4240

    move-object/from16 v15, p14

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-wide/from16 v2, p5

    .line 214
    invoke-static {v15, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/util/List;JJ)[J

    move-result-object v15

    move-wide/from16 p7, p15

    move-wide/from16 p9, v0

    move-wide/from16 p11, p5

    .line 215
    invoke-static/range {p7 .. p12}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v16

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    .line 200
    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lcom/google/android/exoplayer2/Format;Ljava/util/List;[JJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lcom/google/android/exoplayer2/Format;Ljava/util/List;[JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;[JJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 222
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->l:Ljava/lang/String;

    move-object v1, p2

    .line 223
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->m:Ljava/lang/String;

    move v1, p3

    .line 224
    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->a:I

    move-object v1, p4

    .line 225
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->b:Ljava/lang/String;

    move-wide v1, p5

    .line 226
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->c:J

    move-object v1, p7

    .line 227
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->d:Ljava/lang/String;

    move v1, p8

    .line 228
    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->e:I

    move v1, p9

    .line 229
    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->f:I

    move v1, p10

    .line 230
    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->g:I

    move v1, p11

    .line 231
    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->h:I

    move-object/from16 v1, p12

    .line 232
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->i:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 233
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->j:[Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, p14

    .line 234
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->n:Ljava/util/List;

    move-object/from16 v2, p15

    .line 235
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->o:[J

    move-wide/from16 v2, p16

    .line 236
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->p:J

    .line 237
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->k:I

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->o:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/exoplayer2/util/Util;->a([JJZZ)I

    move-result p1

    return p1
.end method

.method public a(I)J
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->o:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public a(II)Landroid/net/Uri;
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->j:[Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->j:[Lcom/google/android/exoplayer2/Format;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->n:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->m:Ljava/lang/String;

    const-string v1, "{bitrate}"

    .line 298
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{Bitrate}"

    .line 299
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{start time}"

    .line 300
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{start_time}"

    .line 301
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 302
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->l:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public b(I)J
    .locals 5

    .line 280
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->k:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->p:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->o:[J

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, v0, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->o:[J

    aget-wide v3, v0, p1

    sub-long v0, v1, v3

    :goto_0
    return-wide v0
.end method
