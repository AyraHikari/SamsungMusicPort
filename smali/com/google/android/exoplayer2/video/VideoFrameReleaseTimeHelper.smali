.class public final Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;,
        Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/WindowManager;

.field private final b:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

.field private final c:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "window"

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a:Landroid/view/WindowManager;

    .line 77
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    .line 78
    sget v1, Lcom/google/android/exoplayer2/util/Util;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->c:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    .line 79
    invoke-static {}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->a()Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    goto :goto_1

    .line 81
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->c:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    .line 82
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 84
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->d:J

    .line 85
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->e:J

    return-void
.end method

.method private static a(JJJ)J
    .locals 4

    sub-long v0, p0, p2

    .line 210
    div-long/2addr v0, p4

    mul-long v0, v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    sub-long p4, p2, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    add-long/2addr p4, p2

    move-wide v2, p2

    move-wide p2, p4

    move-wide p4, v2

    :goto_0
    const/4 v0, 0x0

    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide p2, p4

    :goto_1
    return-wide p2
.end method

.method private a(Landroid/content/Context;)Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const-string v0, "display"

    .line 189
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;-><init>(Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;Landroid/hardware/display/DisplayManager;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->c()V

    return-void
.end method

.method private b(JJ)Z
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->k:J

    sub-long/2addr p1, v0

    .line 205
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->j:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    .line 206
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    .line 198
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->d:J

    .line 199
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->d:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->e:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v1

    .line 130
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->i:Z

    if-eqz v7, :cond_3

    .line 132
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->f:J

    cmp-long v7, v1, v7

    if-eqz v7, :cond_0

    .line 133
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->l:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->l:J

    .line 134
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->h:J

    iput-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->g:J

    .line 136
    :cond_0
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->l:J

    const-wide/16 v9, 0x6

    const/4 v11, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    .line 141
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->k:J

    sub-long v7, v5, v7

    iget-wide v9, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->l:J

    div-long/2addr v7, v9

    .line 144
    iget-wide v9, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->g:J

    add-long/2addr v9, v7

    .line 146
    invoke-direct {v0, v9, v10, v3, v4}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b(JJ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->i:Z

    move-wide v7, v3

    move-wide v9, v5

    goto :goto_0

    .line 150
    :cond_1
    iget-wide v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->j:J

    add-long/2addr v7, v9

    iget-wide v11, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->k:J

    sub-long/2addr v7, v11

    :goto_0
    move-wide v11, v7

    goto :goto_1

    .line 156
    :cond_2
    invoke-direct {v0, v5, v6, v3, v4}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 157
    iput-boolean v11, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->i:Z

    :cond_3
    move-wide v11, v3

    move-wide v9, v5

    .line 163
    :goto_1
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->i:Z

    if-nez v7, :cond_4

    .line 164
    iput-wide v5, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->k:J

    .line 165
    iput-wide v3, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->j:J

    const-wide/16 v3, 0x0

    .line 166
    iput-wide v3, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->l:J

    const/4 v3, 0x1

    .line 167
    iput-boolean v3, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->i:Z

    .line 170
    :cond_4
    iput-wide v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->f:J

    .line 171
    iput-wide v9, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->h:J

    .line 173
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz v1, :cond_7

    iget-wide v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    goto :goto_2

    .line 176
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v13, v1, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->a:J

    cmp-long v1, v13, v3

    if-nez v1, :cond_6

    return-wide v11

    .line 182
    :cond_6
    iget-wide v1, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->d:J

    move-wide v15, v1

    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a(JJJ)J

    move-result-wide v1

    .line 184
    iget-wide v3, v0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->e:J

    sub-long/2addr v1, v3

    return-wide v1

    :cond_7
    :goto_2
    return-wide v11
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->i:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->b()V

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->c:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->c:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->a()V

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->c()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->c:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->c:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$DefaultDisplayListener;->b()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper;->b:Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->c()V

    :cond_1
    return-void
.end method
