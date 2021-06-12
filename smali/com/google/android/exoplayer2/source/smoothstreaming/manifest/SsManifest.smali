.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

.field public final f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

.field public final g:J

.field public final h:J


# direct methods
.method private constructor <init>(IIJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->a:I

    .line 114
    iput p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->b:I

    .line 115
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->g:J

    .line 116
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->h:J

    .line 117
    iput p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->c:I

    .line 118
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->d:Z

    .line 119
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    .line 120
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    return-void
.end method

.method public constructor <init>(IIJJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V
    .locals 15

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    cmp-long v6, p5, v2

    if-nez v6, :cond_0

    move-wide v12, v0

    goto :goto_0

    :cond_0
    const-wide/32 v6, 0xf4240

    move-wide/from16 v4, p5

    move-wide/from16 v8, p3

    .line 104
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v4

    move-wide v12, v4

    :goto_0
    cmp-long v2, p7, v2

    if-nez v2, :cond_1

    :goto_1
    move-wide v9, v0

    goto :goto_2

    :cond_1
    const-wide/32 v8, 0xf4240

    move-wide/from16 v6, p7

    move-wide/from16 v10, p3

    .line 106
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->d(JJJ)J

    move-result-wide v0

    goto :goto_1

    :goto_2
    move-object v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-wide v7, v12

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 102
    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;-><init>(IIJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V

    return-void
.end method
