.class public final Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final b:I

.field private static final c:[B

.field private static final d:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private J:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private K:Z

.field private final e:I

.field private final f:Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/drm/DrmInitData;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final k:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final m:Lcom/google/android/exoplayer2/util/TimestampAdjuster;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final o:[B

.field private final p:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private s:I

.field private t:I

.field private u:J

.field private v:I

.field private w:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private x:J

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    const-string v0, "seig"

    .line 109
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b:I

    const/16 v0, 0x10

    .line 110
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->c:[B

    const-string v0, "application/x-emsg"

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    .line 113
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->d:Lcom/google/android/exoplayer2/Format;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 205
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V
    .locals 7
    .param p2    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 225
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/util/TimestampAdjuster;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/extractor/mp4/Track;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/extractor/TrackOutput;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    .line 249
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->e:I

    .line 250
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->m:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 251
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 252
    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 253
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->g:Ljava/util/List;

    .line 254
    iput-object p6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->r:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 255
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 256
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object p3, Lcom/google/android/exoplayer2/util/NalUnitUtil;->a:[B

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->j:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 257
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->k:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 258
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 259
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->o:[B

    .line 260
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    .line 261
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->q:Ljava/util/ArrayDeque;

    .line 262
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 263
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->A:J

    .line 264
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->z:J

    .line 265
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->B:J

    .line 266
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a()V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .locals 35

    move-object/from16 v0, p0

    const/16 v2, 0x8

    move-object/from16 v3, p5

    .line 854
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 855
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 856
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->b(I)I

    move-result v2

    .line 858
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 859
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 860
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 862
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->h:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v7

    aput v7, v6, p1

    .line 863
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->g:[J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->c:J

    aput-wide v7, v6, p1

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    .line 865
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->g:[J

    aget-wide v7, v6, p1

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_0
    and-int/lit8 v6, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 869
    :goto_0
    iget v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->d:I

    if-eqz v6, :cond_2

    .line 871
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v2, 0x100

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    and-int/lit16 v11, v2, 0x200

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    and-int/lit16 v12, v2, 0x400

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 886
    :goto_4
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_7

    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    array-length v13, v13

    if-ne v13, v8, :cond_7

    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->h:[J

    aget-wide v16, v13, v7

    cmp-long v13, v16, v14

    if-nez v13, :cond_7

    .line 888
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->i:[J

    aget-wide v14, v13, v7

    const-wide/16 v16, 0x3e8

    iget-wide v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    move-wide/from16 v18, v7

    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v14

    .line 891
    :cond_7
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->i:[I

    .line 892
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->j:[I

    .line 893
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->k:[J

    .line 894
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->l:[Z

    move/from16 v20, v9

    .line 896
    iget v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->b:I

    move-object/from16 v21, v3

    const/4 v3, 0x2

    if-ne v9, v3, :cond_8

    const/4 v9, 0x1

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 899
    :goto_5
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->h:[I

    aget v9, v9, p1

    add-int v9, p6, v9

    move/from16 v28, v3

    .line 900
    iget-wide v3, v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;->c:J

    if-lez p1, :cond_9

    move-object/from16 v31, v13

    move-wide/from16 v29, v14

    .line 901
    iget-wide v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->s:J

    goto :goto_6

    :cond_9
    move-object/from16 v31, v13

    move-wide/from16 v29, v14

    move-wide/from16 v13, p2

    :goto_6
    move/from16 v1, p6

    :goto_7
    if-ge v1, v9, :cond_11

    if-eqz v10, :cond_a

    .line 904
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v15

    goto :goto_8

    :cond_a
    iget v15, v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->b:I

    :goto_8
    if-eqz v11, :cond_b

    .line 906
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v16

    move/from16 v32, v10

    move/from16 v10, v16

    goto :goto_9

    :cond_b
    move/from16 v32, v10

    iget v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->c:I

    :goto_9
    if-nez v1, :cond_c

    if-eqz v6, :cond_c

    move/from16 v33, v6

    move/from16 v16, v20

    goto :goto_a

    :cond_c
    if-eqz v12, :cond_d

    .line 908
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v16

    move/from16 v33, v6

    goto :goto_a

    :cond_d
    move/from16 v33, v6

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->d:I

    move/from16 v16, v6

    :goto_a
    if-eqz v2, :cond_e

    .line 915
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v6

    move-object/from16 v34, v5

    int-to-long v5, v6

    const-wide/16 v17, 0x3e8

    mul-long v5, v5, v17

    .line 916
    div-long/2addr v5, v3

    long-to-int v5, v5

    aput v5, v8, v1

    const/4 v5, 0x0

    goto :goto_b

    :cond_e
    move-object/from16 v34, v5

    const/4 v5, 0x0

    .line 918
    aput v5, v8, v1

    :goto_b
    const-wide/16 v24, 0x3e8

    move-wide/from16 v22, v13

    move-wide/from16 v26, v3

    .line 921
    invoke-static/range {v22 .. v27}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v17

    sub-long v17, v17, v29

    aput-wide v17, v31, v1

    .line 922
    aput v10, v7, v1

    shr-int/lit8 v6, v16, 0x10

    const/4 v10, 0x1

    and-int/2addr v6, v10

    if-nez v6, :cond_10

    if-eqz v28, :cond_f

    if-nez v1, :cond_10

    :cond_f
    const/4 v6, 0x1

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    .line 923
    :goto_c
    aput-boolean v6, v21, v1

    int-to-long v5, v15

    add-long/2addr v13, v5

    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v32

    move/from16 v6, v33

    move-object/from16 v5, v34

    goto :goto_7

    .line 927
    :cond_11
    iput-wide v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->s:J

    return v9
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Landroid/util/Pair;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v3, 0x8

    .line 1038
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1039
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v3

    .line 1040
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v3

    const/4 v4, 0x4

    .line 1042
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v11

    if-nez v3, :cond_0

    .line 1047
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v5

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v7

    add-long v1, p1, v7

    :goto_0
    move-wide v13, v1

    move-wide v1, v5

    goto :goto_1

    .line 1050
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v5

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v7

    add-long v1, p1, v7

    goto :goto_0

    :goto_1
    const-wide/32 v7, 0xf4240

    move-wide v5, v1

    move-wide v9, v11

    .line 1053
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v15

    const/4 v3, 0x2

    .line 1056
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->h()I

    move-result v3

    .line 1059
    new-array v9, v3, [I

    .line 1060
    new-array v10, v3, [J

    .line 1061
    new-array v7, v3, [J

    .line 1062
    new-array v8, v3, [J

    const/4 v5, 0x0

    move-wide/from16 v17, v1

    move-wide v5, v15

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    const/high16 v19, -0x80000000

    and-int v19, v2, v19

    if-nez v19, :cond_1

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v2, v2, v21

    .line 1075
    aput v2, v9, v1

    .line 1076
    aput-wide v13, v10, v1

    .line 1080
    aput-wide v5, v8, v1

    add-long v17, v17, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v5, v17

    move-object v2, v7

    move-object v4, v8

    move-wide/from16 v7, v19

    move/from16 v22, v3

    move-object v3, v9

    move-object/from16 v23, v10

    move-wide v9, v11

    .line 1082
    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v5

    .line 1083
    aget-wide v7, v4, v1

    sub-long v7, v5, v7

    aput-wide v7, v2, v1

    const/4 v7, 0x4

    .line 1085
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1086
    aget v8, v3, v1

    int-to-long v8, v8

    add-long/2addr v13, v8

    add-int/lit8 v1, v1, 0x1

    move-object v7, v2

    move-object v9, v3

    move-object v8, v4

    move/from16 v3, v22

    move-object/from16 v10, v23

    const/4 v4, 0x4

    goto :goto_2

    .line 1071
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v2, v7

    move-object v4, v8

    move-object v3, v9

    move-object/from16 v23, v10

    .line 1089
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    move-object/from16 v5, v23

    invoke-direct {v1, v3, v5, v2, v4}, Lcom/google/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1314
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1316
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 1317
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aP:I

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->U:I

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 1319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    :cond_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    .line 1322
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->a([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 1324
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1326
    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 1330
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1295
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1297
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1298
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->e:I

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 1301
    :cond_0
    iget-object v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->g:[J

    iget v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    aget-wide v7, v6, v7

    cmp-long v6, v7, v2

    if-gez v6, :cond_1

    move-object v1, v5

    move-wide v2, v7

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 799
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 800
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 801
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->b(I)I

    move-result v1

    .line 802
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    and-int/2addr p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 803
    :goto_0
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v1, 0x1

    if-eqz p2, :cond_2

    .line 808
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v2

    .line 809
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->c:J

    .line 810
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->d:J

    .line 813
    :cond_2
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_3

    .line 816
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->a:I

    :goto_1
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_4

    .line 818
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v2

    goto :goto_2

    :cond_4
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->b:I

    :goto_2
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    .line 820
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v3

    goto :goto_3

    :cond_5
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->c:I

    :goto_3
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 822
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result p0

    goto :goto_4

    :cond_6
    iget p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->d:I

    .line 823
    :goto_4
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    .line 330
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    return-void
.end method

.method private a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aQ:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 453
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aP:I

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->B:I

    if-ne v0, v1, :cond_0

    .line 454
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 455
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aP:I

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->K:I

    if-ne v0, v1, :cond_1

    .line 456
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->c(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 632
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 634
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aP:I

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->L:I

    if-ne v3, v4, :cond_0

    .line 635
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V
    .locals 10

    .line 700
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aR:Ljava/util/List;

    .line 701
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 703
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 704
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aP:I

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->z:I

    if-ne v6, v7, :cond_0

    .line 705
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v6, 0xc

    .line 706
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 707
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    :cond_1
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    .line 715
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    .line 716
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    .line 717
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a(II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 722
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 723
    iget v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aP:I

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->z:I

    if-ne v4, v5, :cond_2

    add-int/lit8 v9, v3, 0x1

    .line 724
    iget-object v7, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v2

    move v8, v2

    move v3, v9

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 442
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aP:I

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->A:I

    if-ne v0, v1, :cond_1

    .line 443
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object p1

    .line 444
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->B:J

    .line 445
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/extractor/SeekMap;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 p1, 0x1

    .line 446
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->K:Z

    goto :goto_0

    .line 447
    :cond_1
    iget p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aP:I

    sget p3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aG:I

    if-ne p2, p3, :cond_2

    .line 448
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 732
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->d:I

    const/16 v0, 0x8

    .line 733
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 734
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 735
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 737
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 739
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v0

    .line 741
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v1

    .line 742
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->f:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 748
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->n:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 750
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 752
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 757
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 759
    :cond_4
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a(I)V

    return-void

    .line 743
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length mismatch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 12

    .line 570
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0xc

    .line 574
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 575
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v8

    .line 576
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->y()Ljava/lang/String;

    .line 577
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->y()Ljava/lang/String;

    .line 578
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v5

    .line 580
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v9

    .line 583
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 584
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 585
    invoke-interface {v5, p1, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 589
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->B:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    .line 590
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v0, p1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_3

    aget-object v1, p1, v11

    .line 591
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->B:J

    add-long/2addr v2, v9

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v8

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 597
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->q:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v0, v9, v10, v8}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 599
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->y:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->y:I

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 953
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 954
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p1

    .line 955
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 963
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v1

    .line 964
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->f:I

    if-ne v1, v2, :cond_1

    .line 968
    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 969
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a(I)V

    .line 970
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    return-void

    .line 965
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length mismatch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 959
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 769
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 770
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 771
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 773
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 782
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v0

    .line 783
    iget-wide v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->d:J

    if-nez v0, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v3

    :goto_0
    const/4 p0, 0x0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->d:J

    return-void

    .line 779
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 933
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 934
    invoke-virtual {p0, p2, v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 937
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->c:[B

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 944
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 975
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 976
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v1

    .line 977
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b:I

    if-eq v2, v3, :cond_0

    return-void

    .line 981
    :cond_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 982
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 984
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p0

    if-ne p0, v3, :cond_a

    .line 988
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 989
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p0

    .line 990
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b:I

    if-eq v0, v1, :cond_2

    return-void

    .line 994
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result p0

    if-ne p0, v3, :cond_4

    .line 996
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-eqz p0, :cond_3

    goto :goto_0

    .line 997
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    .line 1000
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1002
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long p0, v0, v4

    if-nez p0, :cond_9

    .line 1006
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 1007
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p0

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v10, p0, 0xf

    .line 1010
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p0

    const/4 v0, 0x0

    if-ne p0, v3, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_7

    return-void

    .line 1014
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result v7

    const/16 p0, 0x10

    .line 1015
    new-array v8, p0, [B

    .line 1016
    array-length p0, v8

    invoke-virtual {p1, v8, v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    const/4 p0, 0x0

    if-eqz v5, :cond_8

    if-nez v7, :cond_8

    .line 1019
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->g()I

    move-result p0

    .line 1020
    new-array v1, p0, [B

    .line 1021
    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    move-object v11, v1

    goto :goto_2

    :cond_8
    move-object v11, p0

    .line 1023
    :goto_2
    iput-boolean v3, p3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->m:Z

    .line 1024
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object p0, p3, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->o:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    return-void

    .line 1003
    :cond_9
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 985
    :cond_a
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(I)Z
    .locals 1

    .line 1335
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->S:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->R:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->A:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->w:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->x:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->O:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->y:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->z:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->U:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ac:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ad:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ah:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ag:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ae:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->af:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->Q:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->N:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->aG:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 607
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 608
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 609
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 610
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v2

    .line 611
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v3

    .line 612
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result p0

    .line 614
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 8

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 541
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->r:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->r:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    aput-object v3, v0, v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 546
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->e:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    .line 548
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v5

    .line 550
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 553
    sget-object v6, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->d:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->J:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    if-nez v0, :cond_3

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->J:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 558
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->J:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 559
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 560
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 561
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->J:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private b(J)V
    .locals 11

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1278
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->y:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->y:I

    .line 1279
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->I:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1280
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->a:J

    add-long/2addr v5, p1

    const/4 v7, 0x1

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->b:I

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->y:I

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 463
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 465
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aR:Ljava/util/List;

    .line 466
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v2

    .line 469
    :goto_1
    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->M:I

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    .line 470
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 472
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aR:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    .line 474
    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aR:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 475
    iget v9, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aP:I

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->y:I

    if-ne v9, v10, :cond_2

    .line 476
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v7

    .line 477
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 478
    :cond_2
    iget v9, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aP:I

    sget v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->N:I

    if-ne v9, v10, :cond_3

    .line 479
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v13

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 484
    :cond_4
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 485
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aS:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_8

    .line 487
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aS:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 488
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aP:I

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->D:I

    if-ne v6, v7, :cond_6

    .line 489
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->C:I

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->e:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 492
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a:I

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    move/from16 v18, v10

    move/from16 v16, v11

    :cond_7
    :goto_6
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_4

    .line 497
    :cond_8
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 498
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    if-ge v3, v1, :cond_9

    .line 501
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 502
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->b:I

    invoke-interface {v5, v3, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 503
    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a:I

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 504
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 505
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->A:J

    iget-wide v6, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->e:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->A:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 507
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b()V

    .line 508
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a()V

    goto :goto_a

    .line 510
    :cond_a
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    :goto_9
    if-ge v3, v1, :cond_c

    .line 512
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 513
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a:I

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 645
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->x:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 646
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 651
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 652
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->s:J

    .line 653
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a()V

    .line 655
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->w:I

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    .line 657
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->w:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v1

    .line 660
    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V

    .line 662
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget-object p2, v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->a:I

    .line 663
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p1

    .line 665
    sget p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ac:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 667
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 670
    :cond_2
    sget p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ad:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 672
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 675
    :cond_3
    sget p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ah:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 677
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 680
    :cond_4
    sget p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ae:I

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    .line 681
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->af:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 683
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 687
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aR:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    .line 689
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aR:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 690
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aP:I

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->ag:I

    if-ne v2, v3, :cond_7

    .line 691
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->aQ:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1, v0, p3}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;[B)V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 948
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILcom/google/android/exoplayer2/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    .line 1346
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->F:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->G:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->K:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->L:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->M:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->P:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 334
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 339
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->t:I

    .line 345
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BII)V

    .line 349
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    .line 350
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    goto :goto_0

    .line 351
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 354
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aQ:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 359
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    .line 363
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e

    .line 367
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 368
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->t:I

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->K:I

    if-ne v0, v6, :cond_5

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    .line 372
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 373
    iput-wide v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->b:J

    .line 374
    iput-wide v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->d:J

    .line 375
    iput-wide v4, v7, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->c:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 379
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->t:I

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->h:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_7

    .line 380
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 381
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->x:J

    .line 382
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->K:Z

    if-nez p1, :cond_6

    .line 384
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->A:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 385
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->K:Z

    :cond_6
    const/4 p1, 0x2

    .line 387
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    return v3

    .line 391
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->t:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 392
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 393
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->t:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 394
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_8

    .line 395
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(J)V

    goto :goto_2

    .line 398
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a()V

    goto :goto_2

    .line 400
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->t:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_c

    .line 401
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    if-ne p1, v1, :cond_b

    .line 404
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_a

    .line 407
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->w:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 408
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->w:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    goto :goto_2

    .line 405
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :cond_c
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_d

    .line 414
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->w:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 415
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    :goto_2
    return v3

    .line 412
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 622
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 623
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 624
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 422
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->u:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->v:I

    sub-int/2addr v0, v1

    .line 423
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->w:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->w:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BII)V

    .line 425
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->t:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->w:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer2/util/ParsableByteArray;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 429
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(J)V

    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->e:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->o:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->h:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->aR:Ljava/util/List;

    .line 522
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 526
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 530
    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    .line 531
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->z:J

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 535
    :cond_2
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->z:J

    :cond_3
    return-void
.end method

.method private static d(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 835
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 836
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v0

    .line 837
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->w()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->m()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1098
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1099
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->r:Z

    if-eqz v6, :cond_0

    iget-wide v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->d:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_0

    .line 1101
    iget-wide v1, v5, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->d:J

    .line 1102
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v8, v1

    move-object v1, v3

    move-wide v2, v8

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    .line 1106
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    return-void

    .line 1109
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    .line 1113
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 1114
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return-void

    .line 1111
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1134
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_7

    .line 1135
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v2, :cond_3

    .line 1136
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1140
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->x:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_0

    .line 1144
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 1145
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a()V

    return v7

    .line 1142
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1149
    :cond_1
    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->g:[J

    iget v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    aget-wide v9, v8, v9

    .line 1152
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->c()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v8, v9

    if-gez v8, :cond_2

    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    .line 1155
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .line 1158
    :cond_2
    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 1159
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1162
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->i:[I

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    aget v2, v2, v8

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 1165
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    if-ge v2, v8, :cond_5

    .line 1166
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 1167
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a(Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)V

    .line 1168
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1169
    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1171
    :cond_4
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    return v6

    .line 1175
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Track;->g:I

    if-ne v2, v6, :cond_6

    .line 1176
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    const/16 v8, 0x8

    sub-int/2addr v2, v8

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 1177
    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b(I)V

    .line 1179
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c()I

    move-result v2

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    .line 1180
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    .line 1181
    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    .line 1182
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    .line 1185
    :cond_7
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;

    .line 1186
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 1187
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v10, v9, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1188
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:I

    .line 1189
    iget v11, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->j:I

    const-wide/16 v12, 0x3e8

    if-eqz v11, :cond_b

    .line 1192
    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->k:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v11, v11, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    .line 1193
    aput-byte v7, v11, v7

    .line 1194
    aput-byte v7, v11, v6

    const/4 v14, 0x2

    .line 1195
    aput-byte v7, v11, v14

    .line 1196
    iget v14, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->j:I

    add-int/2addr v14, v6

    .line 1197
    iget v15, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->j:I

    rsub-int/lit8 v15, v15, 0x4

    .line 1201
    :goto_0
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    if-ge v4, v3, :cond_c

    .line 1202
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    if-nez v3, :cond_9

    .line 1204
    invoke-interface {v1, v11, v15, v14}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BII)V

    .line 1205
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->k:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1206
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->k:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v3

    sub-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    .line 1208
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->j:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1209
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->j:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v10, v3, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1211
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->k:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v10, v3, v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1212
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->J:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    array-length v3, v3

    if-lez v3, :cond_8

    iget-object v3, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    aget-byte v4, v11, v5

    .line 1213
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->a(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->G:Z

    .line 1214
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    .line 1215
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    add-int/2addr v3, v15

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    const/4 v3, 0x0

    goto :goto_0

    .line 1218
    :cond_9
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->G:Z

    if-eqz v3, :cond_a

    .line 1220
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a(I)V

    .line 1221
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    invoke-interface {v1, v3, v7, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->b([BII)V

    .line 1222
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    invoke-interface {v10, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1223
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    .line 1225
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a:[B

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->a([BI)I

    move-result v4

    .line 1227
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const-string v6, "video/hevc"

    iget-object v7, v8, Lcom/google/android/exoplayer2/extractor/mp4/Track;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 1228
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b(I)V

    .line 1229
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->b(I)J

    move-result-wide v4

    mul-long v4, v4, v12

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->l:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->J:[Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->a(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    goto :goto_2

    .line 1233
    :cond_a
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    const/4 v4, 0x0

    invoke-interface {v10, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v3

    .line 1235
    :goto_2
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    .line 1236
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->F:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1240
    :cond_b
    :goto_3
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    if-ge v3, v4, :cond_c

    .line 1241
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-interface {v10, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v3

    .line 1242
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->E:I

    goto :goto_3

    .line 1246
    :cond_c
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->b(I)J

    move-result-wide v3

    mul-long v3, v3, v12

    .line 1247
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->m:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    if-eqz v1, :cond_d

    .line 1248
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->m:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->c(J)J

    move-result-wide v3

    .line 1251
    :cond_d
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->l:[Z

    aget-boolean v1, v1, v9

    .line 1256
    iget-boolean v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->m:Z

    if-eqz v5, :cond_f

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v1, v5

    .line 1258
    iget-object v5, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->o:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v5, :cond_e

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->o:Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_4

    :cond_e
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackFragment;->a:Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;->a:I

    .line 1260
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Track;->a(I)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v2

    .line 1261
    :goto_4
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->c:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    move v13, v1

    move-object/from16 v16, v2

    goto :goto_5

    :cond_f
    move v13, v1

    const/16 v16, 0x0

    .line 1264
    :goto_5
    iget v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->D:I

    const/4 v15, 0x0

    move-wide v11, v3

    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->a(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1267
    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b(J)V

    .line 1268
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 1269
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->C:Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_10
    const/4 v1, 0x3

    .line 1271
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 308
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->s:I

    packed-switch p2, :pswitch_data_0

    .line 321
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->e(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 318
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->d(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->c(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    goto :goto_0

    .line 310
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(JJ)V
    .locals 2

    .line 288
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->q:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 293
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->y:I

    .line 294
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->z:J

    .line 295
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->p:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->a()V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3

    .line 276
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->b:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 279
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer2/extractor/mp4/Track;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 280
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->i:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->b()V

    .line 282
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->H:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 271
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->a(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
