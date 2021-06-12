.class public Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:I

.field private F:I

.field private G:I

.field private H:F

.field private I:Z

.field private J:I

.field private K:J

.field private L:J

.field private M:I

.field b:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

.field private final f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

.field private final g:J

.field private final h:I

.field private final i:Z

.field private final j:[J

.field private final k:[J

.field private l:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private m:Z

.field private n:Landroid/view/Surface;

.field private o:Landroid/view/Surface;

.field private p:I

.field private q:Z

.field private r:J

.field private s:J

.field private t:J

.field private u:I

.field private v:I

.field private w:I

.field private x:J

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 80
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->c:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/google/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V
    .locals 1
    .param p5    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/VideoRendererEventListener;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 204
    invoke-direct {p0, v0, p2, p5, p6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Z)V

    .line 205
    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->g:J

    .line 206
    iput p9, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->h:I

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->d:Landroid/content/Context;

    .line 208
    new-instance p2, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->e:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    .line 209
    new-instance p1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-direct {p1, p7, p8}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    .line 210
    invoke-static {}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->L()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->i:Z

    const/16 p1, 0xa

    .line 211
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->j:[J

    .line 212
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->k:[J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 213
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->L:J

    .line 214
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->K:J

    .line 215
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->s:J

    const/4 p1, -0x1

    .line 216
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    .line 217
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 218
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->D:F

    .line 219
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->z:F

    const/4 p1, 0x1

    .line 220
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->p:I

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->H()V

    return-void
.end method

.method private E()V
    .locals 4

    .line 833
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->g:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->s:J

    return-void
.end method

.method private F()V
    .locals 3

    const/4 v0, 0x0

    .line 838
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->q:Z

    .line 843
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I:Z

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->z()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    new-instance v1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$1;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_0
    return-void
.end method

.method private G()V
    .locals 2

    .line 860
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->q:Z

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 2

    const/4 v0, -0x1

    .line 866
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->E:I

    .line 867
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 868
    iput v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->H:F

    .line 869
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->G:I

    return-void
.end method

.method private I()V
    .locals 5

    .line 873
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->E:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->G:I

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->C:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->H:F

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->D:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->C:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->D:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(IIIF)V

    .line 879
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->E:I

    .line 880
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F:I

    .line 881
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->C:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->G:I

    .line 882
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->D:F

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->H:F

    :cond_2
    return-void
.end method

.method private J()V
    .locals 5

    .line 887
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->E:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F:I

    if-eq v0, v1, :cond_1

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->E:I

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F:I

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->G:I

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->H:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(IIIF)V

    :cond_1
    return-void
.end method

.method private K()V
    .locals 6

    .line 894
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->u:I

    if-lez v0, :cond_0

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 896
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->t:J

    sub-long v2, v0, v2

    .line 897
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->u:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(IJ)V

    const/4 v2, 0x0

    .line 898
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->u:I

    .line 899
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->t:J

    :cond_0
    return-void
.end method

.method private static L()Z
    .locals 2

    .line 1163
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string v0, "foster"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NVIDIA"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    .line 1097
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    mul-int p1, p1, p2

    goto :goto_3

    :pswitch_1
    mul-int p1, p1, p2

    goto :goto_2

    :pswitch_2
    const-string p0, "BRAVIA 4K 2015"

    .line 1104
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/16 p0, 0x10

    .line 1110
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Util;->a(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Util;->a(II)I

    move-result p2

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x10

    mul-int/lit8 p1, p1, 0x10

    goto :goto_2

    :pswitch_3
    mul-int p1, p1, p2

    :goto_2
    const/4 v3, 0x2

    :goto_3
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v3, v3, 0x2

    .line 1128
    div-int/2addr p1, v3

    return p1

    :cond_3
    :goto_4
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1026
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->k:I

    iget v1, p1, Lcom/google/android/exoplayer2/Format;->j:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1027
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->k:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/google/android/exoplayer2/Format;->j:I

    :goto_1
    if-eqz v0, :cond_2

    .line 1028
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->j:I

    goto :goto_2

    :cond_2
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->k:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 1030
    sget-object v5, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->c:[I

    array-length v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v2, v6, :cond_b

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float v9, v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_a

    if-gt v9, v3, :cond_3

    goto :goto_7

    .line 1035
    :cond_3
    sget v7, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v10, 0x15

    if-lt v7, v10, :cond_6

    if-eqz v0, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    .line 1036
    :goto_5
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->a(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1038
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->l:F

    .line 1039
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->a(IID)Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    :cond_6
    const/16 v7, 0x10

    .line 1044
    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/Util;->a(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 1045
    invoke-static {v9, v7}, Lcom/google/android/exoplayer2/util/Util;->a(II)I

    move-result v9

    mul-int/lit8 v7, v9, 0x10

    mul-int v9, v8, v7

    .line 1046
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b()I

    move-result v10

    if-gt v9, v10, :cond_9

    .line 1047
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_7

    move p1, v7

    goto :goto_6

    :cond_7
    move p1, v8

    :goto_6
    if-eqz v0, :cond_8

    move v7, v8

    :cond_8
    invoke-direct {p0, p1, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_7
    return-object v7

    :cond_b
    return-object v7
.end method

.method private static a(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 915
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private static a(Landroid/media/MediaFormat;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 920
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 921
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/view/Surface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 388
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 391
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->d:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->f:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/video/DummySurface;->a(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    .line 393
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    .line 398
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 399
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    .line 400
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a_()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_4

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->z()Landroid/media/MediaCodec;

    move-result-object v1

    .line 403
    sget v3, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->m:Z

    if-nez v3, :cond_3

    .line 405
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    goto :goto_1

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B()V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->y()V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-eq p1, v1, :cond_5

    .line 413
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->J()V

    .line 415
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F()V

    if-ne v0, v2, :cond_7

    .line 417
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->E()V

    goto :goto_2

    .line 421
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->H()V

    .line 422
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F()V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-eq p1, v0, :cond_7

    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->J()V

    .line 428
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->G()V

    :cond_7
    :goto_2
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "deb"

    .line 1181
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "flo"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mido"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "santoni"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "OMX.qcom.video.decoder.avc"

    .line 1185
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    const-string v0, "tcl_eu"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1186
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SVP-DTV15"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BRAVIA_ATV2"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    const-string v1, "panell_"

    .line 1189
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "F3311"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "M5c"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "QM16XE_U"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "A7010a48"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->b:Ljava/lang/String;

    .line 1193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 1194
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    const-string v0, "ALE-L21"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    .line 1195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CAM-L21"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "OMX.k3.video.decoder.avc"

    .line 1197
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    const-string v0, "HUAWEI VNS-L21"

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->d:Ljava/lang/String;

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OMX.IMG.MSVDX.Decoder.AVC"

    .line 1199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 2

    .line 1142
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->m:I

    iget v1, p2, Lcom/google/android/exoplayer2/Format;->m:I

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    iget p0, p1, Lcom/google/android/exoplayer2/Format;->j:I

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->j:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/google/android/exoplayer2/Format;->k:I

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne p0, v0, :cond_1

    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1145
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 2

    .line 826
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->a:Ljava/lang/String;

    .line 828
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->d:Landroid/content/Context;

    .line 829
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/DummySurface;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static c(Lcom/google/android/exoplayer2/Format;)I
    .locals 4

    .line 1063
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1069
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1071
    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->g:I

    add-int/2addr p0, v2

    return p0

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->j:I

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static d(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(J)Z
    .locals 2

    const-wide/32 v0, -0x7a120

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected B()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 474
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w:I

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-ne v0, v2, :cond_0

    .line 479
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 482
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 476
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w:I

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-ne v0, v3, :cond_2

    .line 479
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 482
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    :cond_3
    throw v2
.end method

.method protected C()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 490
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->C()V

    const/4 v0, 0x0

    .line 491
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w:I

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    .line 459
    iget-boolean p1, p2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->d:Z

    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->j:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->l:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget p2, p2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->a:I

    if-gt p1, p2, :cond_1

    iget p1, p4, Lcom/google/android/exoplayer2/Format;->k:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->l:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget p2, p2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->b:I

    if-gt p1, p2, :cond_1

    .line 462
    invoke-static {p4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->l:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget p2, p2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->c:I

    if-gt p1, p2, :cond_1

    .line 463
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/Format;->b(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/Format;)I
    .locals 7
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

    .line 228
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 229
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 233
    :cond_0
    iget-object v1, p3, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 235
    :goto_0
    iget v5, v1, Lcom/google/android/exoplayer2/drm/DrmInitData;->b:I

    if-ge v3, v5, :cond_2

    .line 236
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 239
    :cond_2
    invoke-interface {p1, v0, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    .line 242
    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->a(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 245
    :cond_4
    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-nez p1, :cond_5

    return v5

    .line 248
    :cond_5
    iget-object p1, p3, Lcom/google/android/exoplayer2/Format;->c:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 249
    iget p2, p3, Lcom/google/android/exoplayer2/Format;->j:I

    if-lez p2, :cond_8

    iget p2, p3, Lcom/google/android/exoplayer2/Format;->k:I

    if-lez p2, :cond_8

    .line 250
    sget p1, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_6

    .line 251
    iget p1, p3, Lcom/google/android/exoplayer2/Format;->j:I

    iget p2, p3, Lcom/google/android/exoplayer2/Format;->k:I

    iget p3, p3, Lcom/google/android/exoplayer2/Format;->l:F

    float-to-double v0, p3

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->a(IID)Z

    move-result p1

    goto :goto_3

    .line 254
    :cond_6
    iget p1, p3, Lcom/google/android/exoplayer2/Format;->j:I

    iget p2, p3, Lcom/google/android/exoplayer2/Format;->k:I

    mul-int p1, p1, p2

    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->b()I

    move-result p2

    if-gt p1, p2, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_8

    const-string p2, "MediaCodecVideoRenderer"

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] ["

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/google/android/exoplayer2/util/Util;->e:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_8
    :goto_3
    iget-boolean p2, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->d:Z

    if-eqz p2, :cond_9

    const/16 p2, 0x10

    goto :goto_4

    :cond_9
    const/16 p2, 0x8

    .line 263
    :goto_4
    iget-boolean p3, v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->e:Z

    if-eqz p3, :cond_a

    const/16 v2, 0x20

    :cond_a
    if-eqz p1, :cond_b

    const/4 p1, 0x4

    goto :goto_5

    :cond_b
    const/4 p1, 0x3

    :goto_5
    or-int/2addr p2, v2

    or-int/2addr p1, p2

    return p1
.end method

.method protected a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;ZI)Landroid/media/MediaFormat;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 941
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 943
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "width"

    .line 944
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "height"

    .line 945
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 946
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v1, "frame-rate"

    .line 948
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->l:F

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    const-string v1, "rotation-degrees"

    .line 949
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->m:I

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 950
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->q:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->a(Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/video/ColorInfo;)V

    const-string p1, "max-width"

    .line 952
    iget v1, p2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->a:I

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-height"

    .line 953
    iget v1, p2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-input-size"

    .line 954
    iget p2, p2, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;->c:I

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaFormatUtil;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 957
    sget p1, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/4 p2, 0x0

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    const-string p1, "priority"

    .line 958
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "auto-frc"

    .line 961
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    if-eqz p4, :cond_2

    .line 964
    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaFormat;I)V

    :cond_2
    return-object v0
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 982
    iget v0, p2, Lcom/google/android/exoplayer2/Format;->j:I

    .line 983
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->k:I

    .line 984
    invoke-static {p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    .line 985
    array-length v3, p3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 988
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 991
    :cond_0
    array-length v3, p3

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v8, p3, v0

    .line 992
    iget-boolean v9, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->d:Z

    invoke-static {v9, p2, v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(ZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 993
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->j:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, v8, Lcom/google/android/exoplayer2/Format;->k:I

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    or-int/2addr v1, v9

    .line 995
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->j:I

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 996
    iget v9, v8, Lcom/google/android/exoplayer2/Format;->k:I

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 997
    invoke-static {v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->c(Lcom/google/android/exoplayer2/Format;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const-string p3, "MediaCodecVideoRenderer"

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1004
    iget p3, p1, Landroid/graphics/Point;->x:I

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1005
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1006
    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 1007
    invoke-static {p1, v2, v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Ljava/lang/String;II)I

    move-result p1

    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    const-string p1, "MediaCodecVideoRenderer"

    .line 1008
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Codec max resolution adjusted to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v2, v6, v7}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 372
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 374
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->p:I

    .line 375
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->z()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 377
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->p:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 296
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JZ)V

    .line 297
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 298
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->r:J

    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->v:I

    .line 300
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->K:J

    .line 301
    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->j:[J

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->L:J

    .line 303
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    :cond_0
    if-eqz p3, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->E()V

    goto :goto_0

    .line 308
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->s:J

    :goto_0
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    .line 721
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 722
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 723
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    .line 724
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->f:I

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4

    const-string v0, "crop-right"

    .line 526
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "crop-left"

    .line 527
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-top"

    .line 528
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "crop-right"

    .line 530
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "crop-left"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    const-string v2, "width"

    .line 531
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    if-eqz v0, :cond_2

    const-string v0, "crop-bottom"

    .line 533
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "crop-top"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "height"

    .line 534
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    .line 535
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->z:F

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->D:F

    .line 536
    sget p2, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_4

    .line 540
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->y:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_3

    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->y:I

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_5

    .line 541
    :cond_3
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    .line 542
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    .line 543
    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 544
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->D:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->D:F

    goto :goto_3

    .line 548
    :cond_4
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->y:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->C:I

    .line 551
    :cond_5
    :goto_3
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->p:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 517
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w:I

    .line 518
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->K:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->K:J

    .line 519
    sget p1, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I:Z

    if-eqz p1, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->q()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->l:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 441
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->l:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->i:Z

    iget v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->J:I

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$CodecMaxValues;ZI)Landroid/media/MediaFormat;

    move-result-object p3

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 444
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->d:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->f:Z

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/video/DummySurface;->a(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    .line 448
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    .line 450
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 451
    sget p1, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I:Z

    if-eqz p1, :cond_2

    .line 452
    new-instance p1, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 6

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(Ljava/lang/String;JJ)V

    .line 498
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->m:Z

    return-void
.end method

.method protected a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 270
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->r()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->b:I

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->J:I

    .line 272
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->J:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I:Z

    .line 273
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 274
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->e:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a()V

    return-void
.end method

.method protected a([Lcom/google/android/exoplayer2/Format;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 279
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->L:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 280
    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->L:J

    goto :goto_1

    .line 282
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->j:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const-string v0, "MediaCodecVideoRenderer"

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->j:[J

    iget v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->j:[J

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->k:[J

    iget v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->K:J

    aput-wide v2, v0, v1

    .line 291
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a([Lcom/google/android/exoplayer2/Format;J)V

    return-void
.end method

.method protected a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v5, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p7

    move-wide/from16 v0, p9

    .line 558
    iget-wide v2, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->r:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v12

    if-nez v2, :cond_0

    .line 559
    iput-wide v5, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->r:J

    .line 562
    :cond_0
    iget-wide v2, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->L:J

    sub-long v12, v0, v2

    const/4 v14, 0x1

    if-eqz p11, :cond_1

    .line 565
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;IJ)V

    return v14

    :cond_1
    const/4 v2, 0x0

    sub-long v2, v0, v5

    .line 570
    iget-object v4, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    iget-object v15, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    const/16 v16, 0x0

    if-ne v4, v15, :cond_3

    .line 572
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;IJ)V

    return v14

    :cond_2
    return v16

    .line 579
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a_()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 581
    :goto_0
    iget-boolean v15, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->q:Z

    if-eqz v15, :cond_d

    if-eqz v4, :cond_5

    iget-wide v14, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->x:J

    sub-long v14, v17, v14

    .line 583
    invoke-virtual {v7, v2, v3, v14, v15}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->d(JJ)Z

    move-result v14

    if-eqz v14, :cond_5

    goto/16 :goto_3

    :cond_5
    if-eqz v4, :cond_c

    .line 592
    iget-wide v14, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->r:J

    cmp-long v4, v5, v14

    if-nez v4, :cond_6

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x0

    sub-long v17, v17, v8

    sub-long v2, v2, v17

    .line 602
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    mul-long v2, v2, v19

    add-long/2addr v2, v14

    .line 606
    iget-object v4, v7, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->e:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a(JJ)J

    move-result-wide v17

    sub-long v0, v17, v14

    .line 608
    div-long v14, v0, v19

    .line 610
    invoke-virtual {v7, v14, v15, v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->c(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide/from16 v5, p1

    .line 611
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a(Landroid/media/MediaCodec;IJJ)Z

    move-result v0

    if-eqz v0, :cond_7

    return v16

    .line 613
    :cond_7
    invoke-virtual {v7, v14, v15, v8, v9}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 614
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    .line 618
    :cond_8
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    const-wide/32 v0, 0xc350

    cmp-long v0, v14, v0

    if-gez v0, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    move-wide/from16 v5, v17

    .line 621
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(Landroid/media/MediaCodec;IJJ)V

    const/4 v0, 0x1

    return v0

    :cond_9
    const-wide/16 v0, 0x7530

    cmp-long v0, v14, v0

    if-gez v0, :cond_b

    const-wide/16 v0, 0x2af8

    cmp-long v0, v14, v0

    if-lez v0, :cond_a

    const-wide/16 v0, 0x2710

    sub-long/2addr v14, v0

    .line 632
    :try_start_0
    div-long v14, v14, v19

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 634
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v16

    .line 638
    :cond_a
    :goto_1
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->c(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_b
    return v16

    :cond_c
    :goto_2
    return v16

    .line 584
    :cond_d
    :goto_3
    sget v0, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 585
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v12

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(Landroid/media/MediaCodec;IJJ)V

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    .line 587
    :cond_e
    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->c(Landroid/media/MediaCodec;IJ)V

    goto :goto_4

    :goto_5
    return v0
.end method

.method protected a(Landroid/media/MediaCodec;IJJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 759
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->i:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iput p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->i:I

    .line 762
    iget p2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(I)V

    .line 763
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->C()V

    return p4
.end method

.method protected a(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected b(I)V
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->g:I

    .line 775
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->u:I

    .line 776
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->v:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->v:I

    .line 777
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->v:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->h:I

    .line 779
    iget p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->u:I

    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->h:I

    if-lt p1, v0, :cond_0

    .line 780
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->K()V

    :cond_0
    return-void
.end method

.method protected b(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    .line 735
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 736
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 737
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    const/4 p1, 0x1

    .line 738
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b(I)V

    return-void
.end method

.method protected b(Landroid/media/MediaCodec;IJJ)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 815
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I()V

    const-string p3, "releaseOutputBuffer"

    .line 816
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 818
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->x:J

    .line 820
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->e:I

    const/4 p1, 0x0

    .line 821
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->v:I

    .line 822
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w()V

    return-void
.end method

.method protected b(Lcom/google/android/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 503
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 505
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->n:F

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->z:F

    .line 506
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->m:I

    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->y:I

    return-void
.end method

.method protected b(JJ)Z
    .locals 0

    .line 684
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->d(J)Z

    move-result p1

    return p1
.end method

.method protected c(J)V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 655
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w:I

    .line 656
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->k:[J

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->j:[J

    aget-wide v3, v0, v2

    iput-wide v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->L:J

    .line 659
    iget v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->j:[J

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->j:[J

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->k:[J

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->k:[J

    iget v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(Landroid/media/MediaCodec;IJ)V
    .locals 2

    .line 793
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I()V

    const-string p3, "releaseOutputBuffer"

    .line 794
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 795
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 796
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    .line 797
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->x:J

    .line 798
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->e:I

    const/4 p1, 0x0

    .line 799
    iput p1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->v:I

    .line 800
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->w()V

    return-void
.end method

.method protected c(JJ)Z
    .locals 0

    .line 697
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->e(J)Z

    move-result p1

    return p1
.end method

.method protected d(JJ)Z
    .locals 0

    .line 710
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->d(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected n()V
    .locals 4

    .line 334
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->n()V

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->u:I

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->t:J

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->x:J

    return-void
.end method

.method protected o()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 342
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->s:J

    .line 343
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->K()V

    .line 344
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->o()V

    return-void
.end method

.method protected p()V
    .locals 3

    const/4 v0, -0x1

    .line 349
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->A:I

    .line 350
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->B:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 351
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->D:F

    .line 352
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->z:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 353
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->L:J

    .line 354
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->K:J

    const/4 v0, 0x0

    .line 355
    iput v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->M:I

    .line 356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->H()V

    .line 357
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->F()V

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->e:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b()V

    const/4 v1, 0x0

    .line 359
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->b:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 360
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I:Z

    .line 362
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->a()V

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    .line 364
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->a()V

    .line 365
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    throw v0
.end method

.method public u()Z
    .locals 8

    .line 314
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->u()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->o:Landroid/view/Surface;

    if-eq v0, v4, :cond_1

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->z()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->I:Z

    if-eqz v0, :cond_2

    .line 317
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->s:J

    return v1

    .line 319
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->s:J

    const/4 v0, 0x0

    cmp-long v4, v4, v2

    if-nez v4, :cond_3

    return v0

    .line 322
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->s:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    return v1

    .line 327
    :cond_4
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->s:J

    return v0
.end method

.method w()V
    .locals 2

    .line 853
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 854
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->q:Z

    .line 855
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->f:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;->n:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method
