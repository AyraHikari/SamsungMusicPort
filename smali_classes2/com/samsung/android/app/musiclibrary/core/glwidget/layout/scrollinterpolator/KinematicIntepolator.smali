.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-KinematicIntepolator"


# instance fields
.field private mDeceleration:F

.field private mDelta:F

.field private mDistance:F

.field private mDistanceIndex:I

.field private mFinished:Z

.field private mLastTime:J

.field private mNegative:Z

.field private mTargetDistance:F

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mFinished:Z

    return v0
.end method

.method public getDx()F
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mNegative:Z

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    neg-float v0, v0

    goto :goto_0

    .line 113
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    :goto_0
    return v0
.end method

.method public getDy()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGotoIndex()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDistanceIndex:I

    return v0
.end method

.method public setGotoIndex(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDistanceIndex:I

    return-void
.end method

.method public setParamsDistance(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDistance:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mNegative:Z

    .line 133
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    const/high16 p1, -0x40000000    # -2.0f

    .line 135
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    mul-float v0, v0, p1

    mul-float p1, p2, p2

    div-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDeceleration:F

    .line 136
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDeceleration:F

    neg-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    const/4 p1, -0x1

    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setGotoIndex(I)V

    return-void
.end method

.method public setParamsVelocity(FF)V
    .locals 0

    .line 124
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mNegative:Z

    .line 126
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    const/4 p1, -0x1

    .line 127
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->setGotoIndex(I)V

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDistance:F

    .line 61
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    const/high16 v1, -0x41000000    # -0.5f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDeceleration:F

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mLastTime:J

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mFinished:Z

    .line 67
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-KinematicIntepolator"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start mVelocity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mTargetDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mDecelaration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDeceleration:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mFinished:Z

    return-void
.end method

.method public update()Z
    .locals 10

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 83
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 84
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDistance:F

    .line 85
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    .line 86
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDeceleration:F

    mul-float v6, v4, v2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v7, v7, v5

    mul-float v7, v7, v2

    mul-float v7, v7, v2

    add-float/2addr v6, v7

    .line 87
    iput v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    .line 88
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_2

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    add-float/2addr v6, v3

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    cmpl-float v6, v6, v9

    if-gez v6, :cond_2

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "SMUSIC-KinematicIntepolator"

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update mVelocity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " mDelta: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " mTargetDistance: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " distance: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    add-float/2addr v3, v6

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDistance:F

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    .line 101
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    .line 102
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mLastTime:J

    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    .line 90
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mTargetDistance:F

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDistance:F

    .line 91
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SMUSIC-KinematicIntepolator"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update finished mDelta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mDelta:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mVelocity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mVelocity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_3
    iput-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mFinished:Z

    .line 104
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->mFinished:Z

    xor-int/2addr v0, v7

    return v0
.end method
