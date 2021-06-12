.class public abstract Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    }
.end annotation


# static fields
.field private static final b:[B


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:Ljava/nio/ByteBuffer;

.field private E:Z

.field private F:Z

.field private G:I

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field protected a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private final c:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

.field private final d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final g:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final h:Lcom/google/android/exoplayer2/FormatHolder;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/media/MediaCodec$BufferInfo;

.field private k:Lcom/google/android/exoplayer2/Format;

.field private l:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DrmSession<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/media/MediaCodec;

.field private o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:[Ljava/nio/ByteBuffer;

.field private z:[Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 215
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->i(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V
    .locals 2
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 279
    sget p1, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 280
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    .line 281
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 282
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Z

    .line 283
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 284
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 285
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Lcom/google/android/exoplayer2/FormatHolder;

    .line 286
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Ljava/util/List;

    .line 287
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 288
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    .line 289
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    return-void
.end method

.method private E()V
    .locals 2

    .line 777
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private F()V
    .locals 2

    .line 784
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 785
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;

    .line 786
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private G()Z
    .locals 1

    .line 807
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private H()V
    .locals 2

    const/4 v0, -0x1

    .line 811
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private I()V
    .locals 1

    const/4 v0, -0x1

    .line 816
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:I

    const/4 v0, 0x0

    .line 817
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private J()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 1117
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "width"

    .line 1118
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const-string v1, "height"

    .line 1119
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1121
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Z

    return-void

    .line 1124
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Z

    if-eqz v1, :cond_1

    const-string v1, "channel-count"

    .line 1125
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1127
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private K()V
    .locals 2

    .line 1134
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1189
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1191
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 1192
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1194
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x()V

    :goto_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 3

    .line 822
    iget-object p0, p0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 829
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 830
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 832
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method private a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .line 1224
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    .line 1226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    .line 1227
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    .line 1228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 1270
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1271
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    .line 1245
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    const-string v1, "SM-T585"

    .line 1246
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    const-string v1, "SM-A510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    const-string v1, "SM-A520"

    .line 1247
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    const-string v1, "SM-J700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x2

    return p1

    .line 1249
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 1250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const-string p1, "flounder"

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1251
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "flounder_lte"

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "grouper"

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1252
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "tilapia"

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private b(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 791
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private b(JJ)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object v12, p0

    .line 1008
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G()Z

    move-result v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_a

    .line 1010
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    if-eqz v0, :cond_1

    .line 1012
    :try_start_0
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget-object v1, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1015
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L()V

    .line 1016
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    :cond_0
    return v14

    .line 1023
    :cond_1
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget-object v1, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 1024
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_5

    .line 1029
    iget-boolean v1, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Z

    if-eqz v1, :cond_2

    .line 1030
    iput-boolean v14, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Z

    .line 1031
    iget-object v1, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v13

    .line 1033
    :cond_2
    iget-object v1, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_3

    iget-object v1, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 1036
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L()V

    return v14

    .line 1039
    :cond_3
    iput v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:I

    .line 1040
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Ljava/nio/ByteBuffer;

    .line 1043
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 1044
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Ljava/nio/ByteBuffer;

    iget-object v1, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1045
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Ljava/nio/ByteBuffer;

    iget-object v1, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1047
    :cond_4
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d(J)Z

    move-result v0

    iput-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Z

    goto :goto_1

    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    .line 1050
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J()V

    return v13

    :cond_6
    const/4 v1, -0x3

    if-ne v0, v1, :cond_7

    .line 1053
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K()V

    return v13

    .line 1056
    :cond_7
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Z

    if-eqz v0, :cond_9

    iget-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    if-nez v0, :cond_8

    iget v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 1059
    :cond_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L()V

    :cond_9
    return v14

    .line 1066
    :cond_a
    :goto_1
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    if-eqz v0, :cond_c

    .line 1068
    :try_start_1
    iget-object v5, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget-object v6, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:I

    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Z

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1069
    invoke-virtual/range {v0 .. v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 1079
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L()V

    .line 1080
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    if-eqz v0, :cond_b

    .line 1082
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    :cond_b
    return v14

    .line 1087
    :cond_c
    iget-object v5, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget-object v6, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->D:Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C:I

    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Z

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1088
    invoke-virtual/range {v0 .. v11}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_f

    .line 1100
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(J)V

    .line 1101
    iget-object v0, v12, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    .line 1102
    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I()V

    if-nez v0, :cond_e

    return v13

    .line 1106
    :cond_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L()V

    :cond_f
    return v14
.end method

.method private static b(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    .line 1340
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->r:I

    if-ne p1, v1, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 1341
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private b(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 840
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 842
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->f()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return v1
.end method

.method private c(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 799
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 800
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    .line 1287
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.allwinner.video.decoder.avc"

    .line 1288
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(J)Z
    .locals 5

    .line 1202
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1204
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1205
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    .line 1305
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2

    const-string v0, "hb2000"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 1307
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 1308
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    .line 1323
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private w()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 636
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    if-gez v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    .line 638
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    if-gez v0, :cond_1

    return v1

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Ljava/nio/ByteBuffer;

    .line 642
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 645
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 648
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 651
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    .line 652
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    .line 655
    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    return v1

    .line 659
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    if-eqz v0, :cond_5

    .line 660
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    .line 661
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 662
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    const/4 v6, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b:[B

    array-length v7, v0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 663
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    .line 664
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    return v3

    .line 670
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x4

    const/4 v4, 0x0

    goto :goto_2

    .line 676
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    if-ne v0, v3, :cond_8

    const/4 v0, 0x0

    .line 677
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 678
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 679
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 681
    :cond_7
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    .line 683
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 684
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v4

    move v12, v4

    move v4, v0

    move v0, v12

    :goto_2
    const/4 v5, -0x3

    if-ne v0, v5, :cond_9

    return v1

    :cond_9
    const/4 v5, -0x5

    if-ne v0, v5, :cond_b

    .line 691
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    if-ne v0, v2, :cond_a

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 695
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    .line 697
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)V

    return v3

    .line 702
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 703
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    if-ne v0, v2, :cond_c

    .line 707
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 708
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    .line 710
    :cond_c
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    .line 711
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    if-nez v0, :cond_d

    .line 712
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L()V

    return v1

    .line 716
    :cond_d
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Z

    if-eqz v0, :cond_e

    goto :goto_3

    .line 719
    :cond_e
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    .line 720
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 721
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v1

    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 728
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d()Z

    move-result v0

    if-nez v0, :cond_11

    .line 729
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 730
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    if-ne v0, v2, :cond_10

    .line 733
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    :cond_10
    return v3

    .line 737
    :cond_11
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    .line 738
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->g()Z

    move-result v0

    .line 739
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    .line 740
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    if-eqz v2, :cond_12

    return v1

    .line 743
    :cond_12
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:Z

    if-eqz v2, :cond_14

    if-nez v0, :cond_14

    .line 744
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->a(Ljava/nio/ByteBuffer;)V

    .line 745
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_13

    return v3

    .line 748
    :cond_13
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:Z

    .line 751
    :cond_14
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v9, v2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:J

    .line 752
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d_()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 753
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Ljava/util/List;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_15
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->h()V

    .line 757
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    if-eqz v0, :cond_16

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v8

    .line 762
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_4

    .line 764
    :cond_16
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B:I

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 766
    :goto_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    .line 767
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    .line 768
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception v0

    .line 771
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_17
    :goto_5
    return v1
.end method


# virtual methods
.method protected final A()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method protected B()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 494
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:J

    .line 495
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I()V

    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    .line 498
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Z

    .line 499
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V

    const/4 v1, 0x0

    .line 501
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 502
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Z

    .line 503
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    .line 504
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:Z

    .line 505
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Z

    .line 506
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:I

    .line 507
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Z

    .line 508
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Z

    .line 509
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Z

    .line 510
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    .line 511
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Z

    .line 512
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    .line 513
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    .line 514
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->b:I

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 521
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 523
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v2, :cond_3

    .line 526
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    goto :goto_3

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    :catchall_1
    move-exception v0

    .line 523
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    .line 524
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_0

    .line 526
    :try_start_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 528
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    goto :goto_0

    :catchall_2
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    :cond_0
    :goto_0
    throw v0

    :catchall_3
    move-exception v0

    .line 521
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 523
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    .line 524
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_1

    .line 526
    :try_start_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 528
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    goto :goto_1

    :catchall_4
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    :cond_1
    :goto_1
    throw v0

    :catchall_5
    move-exception v0

    .line 523
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    .line 524
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_2

    .line 526
    :try_start_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 528
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    goto :goto_2

    :catchall_6
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v0

    :cond_2
    :goto_2
    throw v0

    :cond_3
    :goto_3
    return-void
.end method

.method protected C()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 596
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:J

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    .line 598
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I()V

    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    const/4 v1, 0x0

    .line 600
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    .line 601
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E:Z

    .line 602
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 603
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    .line 604
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x:Z

    .line 605
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    if-eqz v2, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 612
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    goto :goto_1

    .line 615
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    .line 616
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    goto :goto_1

    .line 606
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 607
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    .line 618
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    if-eqz v1, :cond_3

    .line 621
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    :cond_3
    return-void
.end method

.method protected D()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected a(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 302
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 332
    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 548
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->x()V

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v4, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/FormatHolder;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 560
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 561
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    .line 562
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L()V

    return-void

    :cond_2
    return-void

    .line 570
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const-string v0, "drainAndFeed"

    .line 572
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 573
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 574
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 575
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    goto :goto_3

    .line 577
    :cond_6
    iget-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p4, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->d:I

    .line 582
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 583
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 585
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->a:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_3

    :cond_7
    if-ne p1, v1, :cond_8

    .line 587
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->g:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 588
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    .line 589
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L()V

    .line 592
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->a()V

    return-void
.end method

.method protected a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 463
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K:Z

    .line 464
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    .line 465
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C()V

    :cond_0
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method protected a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 458
    new-instance p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Lcom/google/android/exoplayer2/Format;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    .line 870
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    .line 872
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 873
    :goto_0
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 875
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_2

    .line 876
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz p1, :cond_1

    .line 880
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-interface {p1, v1, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 881
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-ne p1, v1, :cond_3

    .line 882
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    goto :goto_1

    .line 877
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()I

    move-result v0

    .line 877
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 885
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 890
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    if-eqz p1, :cond_7

    .line 891
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 909
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_2
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_3

    .line 900
    :cond_4
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F:Z

    .line 901
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G:I

    .line 902
    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:I

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->j:I

    iget v1, v0, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->k:I

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne p1, v0, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->w:Z

    goto :goto_2

    :cond_7
    :goto_3
    :pswitch_1
    if-nez v3, :cond_9

    .line 914
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I:Z

    if-eqz p1, :cond_8

    .line 916
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H:I

    goto :goto_4

    .line 919
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V

    .line 920
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()V

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected c(J)V
    .locals 0

    return-void
.end method

.method public final m()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method protected p()V
    .locals 4

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 477
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 482
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 483
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void

    :catchall_0
    move-exception v1

    .line 486
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_1
    move-exception v1

    .line 482
    :try_start_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_2

    .line 483
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 486
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_2
    move-exception v1

    .line 486
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_3
    move-exception v1

    .line 477
    :try_start_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_3

    .line 478
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 482
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_4

    .line 483
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 486
    :cond_4
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_4
    move-exception v1

    .line 486
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_5
    move-exception v1

    .line 482
    :try_start_6
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_5

    .line 483
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 486
    :cond_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v1

    :catchall_6
    move-exception v1

    .line 486
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 487
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    throw v1
.end method

.method public u()Z
    .locals 4

    .line 985
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->M:Z

    if-nez v0, :cond_1

    .line 987
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 1

    .line 980
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->L:Z

    return v0
.end method

.method protected x()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected final y()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->m:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 354
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->g()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;

    if-nez v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->l:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->f()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 369
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->a()Landroid/media/MediaCrypto;

    move-result-object v4

    .line 370
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->a(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move-object v4, v3

    const/4 v1, 0x0

    .line 374
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    if-nez v5, :cond_5

    .line 376
    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v5, v6, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 377
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    .line 382
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v5, v6, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 383
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    if-eqz v2, :cond_4

    const-string v2, "MediaCodecRenderer"

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drm session requires secure decoder for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 389
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    const v6, -0xc34e

    invoke-direct {v2, v5, v0, v1, v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 393
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    if-nez v0, :cond_5

    .line 394
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    const v5, -0xc34f

    invoke-direct {v0, v2, v3, v1, v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 400
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 404
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 405
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p:I

    .line 406
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q:Z

    .line 407
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r:Z

    .line 408
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s:Z

    .line 409
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->d(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->t:Z

    .line 410
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->e(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u:Z

    .line 411
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->v:Z

    .line 413
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCodec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 415
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    .line 416
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    const-string v5, "configureCodec"

    .line 417
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 418
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    .line 419
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    const-string v4, "startCodec"

    .line 420
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 421
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 422
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v4, 0x0

    sub-long v9, v7, v2

    move-object v5, p0

    move-object v6, v0

    .line 424
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Ljava/lang/String;JJ)V

    .line 426
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->E()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 428
    new-instance v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    .line 431
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_4

    :cond_7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A:J

    .line 433
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H()V

    .line 434
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I()V

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->N:Z

    .line 436
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->a:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->a:I

    return-void

    :cond_8
    :goto_5
    return-void
.end method

.method protected final z()Landroid/media/MediaCodec;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n:Landroid/media/MediaCodec;

    return-object v0
.end method
