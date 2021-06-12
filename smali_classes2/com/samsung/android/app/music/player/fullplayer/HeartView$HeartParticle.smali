.class final Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/HeartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartParticle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle$Companion;

.field private static n:Landroid/graphics/Bitmap;

.field private static final o:Landroid/view/animation/Interpolator;


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private c:J

.field private d:J

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/RectF;

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:J

.field private final k:F

.field private final l:F

.field private final m:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle$Companion;

    .line 198
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d8f5c29    # 0.07f

    const v2, 0x3ed70a3d    # 0.42f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v0, Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->o:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFJFFF)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->g:F

    iput p3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->h:F

    iput p4, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->i:F

    iput-wide p5, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->j:J

    iput p7, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->k:F

    iput p8, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->l:F

    iput p9, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->m:F

    .line 129
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->b:Landroid/graphics/Paint;

    .line 132
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->e:Landroid/graphics/Rect;

    .line 133
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->f:Landroid/graphics/RectF;

    .line 143
    sget-object p2, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->n:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f020153

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->n:Landroid/graphics/Bitmap;

    .line 146
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->n:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 147
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p4, p3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->f:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->c:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->d:J

    .line 158
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->d:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->j:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 159
    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->o:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 160
    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->i:F

    mul-float v1, v1, v0

    .line 162
    iget v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->m:F

    .line 163
    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->m:F

    const/16 v4, -0x5a

    int-to-float v4, v4

    const/high16 v5, 0x41a00000    # 20.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    sub-float/2addr v2, v5

    goto :goto_0

    .line 165
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->m:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    add-float/2addr v2, v5

    .line 169
    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->m:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->m:F

    add-float/2addr v2, v3

    .line 170
    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->l:F

    iget v4, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->k:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    iget v4, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->k:F

    add-float/2addr v3, v4

    .line 172
    iget v4, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->g:F

    float-to-double v5, v2

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v7

    const/16 v2, 0xb4

    int-to-double v7, v2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v1, v1

    mul-double v7, v7, v1

    double-to-float v7, v7

    add-float/2addr v4, v7

    .line 173
    iget v7, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->h:F

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v1

    double-to-float v1, v5

    add-float/2addr v7, v1

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v5, v0, v2

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v8, v0, v2

    if-ltz v8, :cond_3

    cmpg-float v8, v0, v6

    if-gez v8, :cond_3

    sub-float/2addr v0, v2

    mul-float v0, v0, v5

    div-float v1, v0, v2

    goto :goto_1

    :cond_3
    cmpl-float v2, v0, v6

    if-ltz v2, :cond_4

    const v1, -0x40e66666    # -0.6f

    sub-float/2addr v0, v6

    mul-float v0, v0, v1

    div-float/2addr v0, v5

    add-float v1, v0, v5

    .line 187
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->a(F)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    iget-object v5, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->e:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-float v5, v7, v5

    .line 189
    iget-object v6, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->e:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    div-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 188
    invoke-virtual {v0, v1, v5, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 190
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 191
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public final a()Z
    .locals 4

    .line 135
    iget-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->d:J

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 2

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->c:J

    return-void
.end method
