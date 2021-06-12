.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field public final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final b:I

.field public final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/android/exoplayer2/drm/DrmInitData;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:I

.field public final n:F

.field public final o:I

.field public final p:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final q:Lcom/google/android/exoplayer2/video/ColorInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:J

.field public final x:I

.field public final y:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 832
    new-instance v0, Lcom/google/android/exoplayer2/Format$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->b:I

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->k:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->l:F

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->m:I

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->n:F

    .line 555
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->a(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->o:I

    .line 558
    const-class v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->r:I

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->s:I

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->t:I

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->u:I

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->v:I

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->x:I

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->z:I

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format;->w:J

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 571
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_1
    const-class v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 574
    const-class v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/google/android/exoplayer2/video/ColorInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p26    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p27    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 512
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    move-object v1, p2

    .line 513
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    move-object v1, p3

    .line 514
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object v1, p4

    .line 515
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    move v1, p5

    .line 516
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->b:I

    move v1, p6

    .line 517
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->g:I

    move v1, p7

    .line 518
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->j:I

    move v1, p8

    .line 519
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->k:I

    move v1, p9

    .line 520
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->l:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, p10

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    .line 521
    :cond_0
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->m:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p11, v3

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move/from16 v4, p11

    .line 522
    :goto_0
    iput v4, v0, Lcom/google/android/exoplayer2/Format;->n:F

    move-object/from16 v3, p12

    .line 524
    iput-object v3, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    move/from16 v3, p13

    .line 525
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->o:I

    move-object/from16 v3, p14

    .line 526
    iput-object v3, v0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    move/from16 v3, p15

    .line 527
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v3, p16

    .line 528
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v3, p17

    .line 529
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v3, p18

    if-ne v3, v2, :cond_2

    const/4 v3, 0x0

    .line 530
    :cond_2
    iput v3, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v3, p19

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    .line 531
    :goto_1
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v1, p20

    .line 532
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->x:I

    move-object/from16 v1, p21

    .line 533
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    move/from16 v1, p22

    .line 534
    iput v1, v0, Lcom/google/android/exoplayer2/Format;->z:I

    move-wide/from16 v1, p23

    .line 535
    iput-wide v1, v0, Lcom/google/android/exoplayer2/Format;->w:J

    if-nez p25, :cond_4

    .line 536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object/from16 v1, p25

    :goto_2
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v1, p26

    .line 538
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v1, p27

    .line 539
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 355
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 364
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v23, p2

    .line 469
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    .line 219
    invoke-static/range {v0 .. v14}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/google/android/exoplayer2/video/ColorInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v25, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v26, p14

    .line 240
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    .line 202
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move-object/from16 v25, p10

    move-object/from16 v26, p11

    move/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v27, p14

    .line 315
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 15
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 294
    invoke-static/range {v0 .. v14}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 277
    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 377
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v20, p4

    move-object/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v26, p7

    move-wide/from16 v23, p8

    move-object/from16 v25, p10

    .line 405
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;J)Lcom/google/android/exoplayer2/Format;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    .line 390
    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v20, p4

    move-object/from16 v25, p5

    move-object/from16 v21, p6

    move-object/from16 v26, p7

    .line 422
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v26, p4

    .line 480
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;I)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v25, p8

    move/from16 v20, p9

    .line 185
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v25, p7

    move/from16 v20, p8

    move-object/from16 v21, p9

    .line 259
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 331
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    move/from16 v22, p7

    .line 344
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 29
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    .line 461
    new-instance v28, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v28
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 667
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    mul-int v1, v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public a(I)Lcom/google/android/exoplayer2/Format;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 578
    new-instance v29, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->n:F

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->o:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->x:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->z:I

    move/from16 v23, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/Format;->w:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public a(II)Lcom/google/android/exoplayer2/Format;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v19, p1

    move/from16 v20, p2

    .line 631
    new-instance v29, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->g:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->n:F

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->o:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->x:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->z:I

    move/from16 v23, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/Format;->w:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public a(J)Lcom/google/android/exoplayer2/Format;
    .locals 31

    move-object/from16 v0, p0

    move-wide/from16 v24, p1

    .line 586
    new-instance v29, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->g:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->n:F

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->o:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->x:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->z:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    .line 615
    :cond_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    .line 616
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    :goto_0
    move-object v5, v3

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    goto :goto_0

    .line 617
    :goto_1
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->b:I

    :goto_2
    move v6, v3

    goto :goto_3

    :cond_2
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->b:I

    goto :goto_2

    .line 618
    :goto_3
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->l:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->l:F

    :goto_4
    move v10, v3

    goto :goto_5

    :cond_3
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->l:F

    goto :goto_4

    .line 619
    :goto_5
    iget v3, v0, Lcom/google/android/exoplayer2/Format;->x:I

    iget v4, v1, Lcom/google/android/exoplayer2/Format;->x:I

    or-int v21, v3, v4

    .line 620
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    :goto_6
    move-object/from16 v22, v3

    goto :goto_7

    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    goto :goto_6

    .line 621
    :goto_7
    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 622
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v27

    .line 623
    new-instance v29, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->g:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->n:F

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->o:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->z:I

    move/from16 v23, v1

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    iget-wide v3, v0, Lcom/google/android/exoplayer2/Format;->w:J

    move-wide/from16 v24, v3

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 32
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v27, p1

    .line 639
    new-instance v29, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->g:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->n:F

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->o:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->x:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->z:I

    move/from16 v23, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/Format;->w:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 32
    .param p1    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v28, p1

    .line 647
    new-instance v29, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->g:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v9, v0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->n:F

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->o:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->x:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->z:I

    move/from16 v23, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/Format;->w:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 32
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v21, p7

    move-object/from16 v22, p8

    .line 602
    new-instance v29, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v1, v29

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->g:I

    iget v10, v0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v11, v0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v12, v0, Lcom/google/android/exoplayer2/Format;->n:F

    iget-object v13, v0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget v14, v0, Lcom/google/android/exoplayer2/Format;->o:I

    iget-object v15, v0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v30, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->r:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->t:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->u:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->z:I

    move/from16 v23, v1

    move-object/from16 v31, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/Format;->w:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v28, v1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v29
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)Z
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 748
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 749
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 704
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 707
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 708
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->g:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->k:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->l:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->l:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->m:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->m:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->n:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->n:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->o:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->o:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->r:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->r:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->s:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->s:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->t:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->t:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->u:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->u:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->v:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->v:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->w:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Format;->w:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->x:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->x:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    .line 723
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    .line 724
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->z:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->z:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    .line 726
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 727
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    .line 728
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 729
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 730
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 731
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->p:[B

    .line 732
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 733
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->b(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 679
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->A:I

    if-nez v0, :cond_7

    const/16 v0, 0x20f

    .line 681
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 682
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 683
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 684
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 685
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 686
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 687
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 688
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 689
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 690
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 691
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->z:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 692
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 693
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    .line 694
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->A:I

    .line 696
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->A:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 801
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 806
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->n:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->a(Landroid/os/Parcel;Z)V

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->p:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 812
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 814
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-object p2, p0, Lcom/google/android/exoplayer2/Format;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 821
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->w:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 823
    iget-object p2, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 824
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 826
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 829
    iget-object p2, p0, Lcom/google/android/exoplayer2/Format;->d:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
