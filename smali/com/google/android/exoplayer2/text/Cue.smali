.class public Lcom/google/android/exoplayer2/text/Cue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:Landroid/graphics/Bitmap;

.field public final d:F

.field public final e:I

.field public final f:I

.field public final g:F

.field public final h:I

.field public final i:F

.field public final j:F

.field public final k:Z

.field public final l:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FIFIFF)V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/high16 v12, -0x1000000

    move-object v0, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v6, p5

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p6

    move/from16 v10, p7

    .line 206
    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 217
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 234
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 13

    const/4 v3, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 255
    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFFZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFFZI)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue;->a:Ljava/lang/CharSequence;

    .line 264
    iput-object p2, p0, Lcom/google/android/exoplayer2/text/Cue;->b:Landroid/text/Layout$Alignment;

    .line 265
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/Cue;->c:Landroid/graphics/Bitmap;

    .line 266
    iput p4, p0, Lcom/google/android/exoplayer2/text/Cue;->d:F

    .line 267
    iput p5, p0, Lcom/google/android/exoplayer2/text/Cue;->e:I

    .line 268
    iput p6, p0, Lcom/google/android/exoplayer2/text/Cue;->f:I

    .line 269
    iput p7, p0, Lcom/google/android/exoplayer2/text/Cue;->g:F

    .line 270
    iput p8, p0, Lcom/google/android/exoplayer2/text/Cue;->h:I

    .line 271
    iput p9, p0, Lcom/google/android/exoplayer2/text/Cue;->i:F

    .line 272
    iput p10, p0, Lcom/google/android/exoplayer2/text/Cue;->j:F

    .line 273
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/text/Cue;->k:Z

    .line 274
    iput p12, p0, Lcom/google/android/exoplayer2/text/Cue;->l:I

    return-void
.end method
