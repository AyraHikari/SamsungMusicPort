.class public Landroid/support/v7/app/OverlayListView$OverlayObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/OverlayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mCurrentAlpha:F

.field private mCurrentBounds:Landroid/graphics/Rect;

.field private mDeltaY:I

.field private mDuration:J

.field private mEndAlpha:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAnimationEnded:Z

.field private mIsAnimationStarted:Z

.field private mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

.field private mStartAlpha:F

.field private mStartRect:Landroid/graphics/Rect;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 102
    iput v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    .line 108
    iput v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartAlpha:F

    .line 109
    iput v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mEndAlpha:F

    .line 116
    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 117
    iput-object p2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    .line 118
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    .line 119
    iget-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget p2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 121
    iget-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public isAnimationStarted()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    return v0
.end method

.method public setAlphaAnimation(FF)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    .line 152
    iput p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartAlpha:F

    .line 153
    iput p2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mEndAlpha:F

    return-object p0
.end method

.method public setAnimationEndListener(Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    .line 197
    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    return-object p0
.end method

.method public setDuration(J)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    .line 175
    iput-wide p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    .line 186
    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setTranslateYAnimation(I)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    .line 164
    iput p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mDeltaY:I

    return-object p0
.end method

.method public startAnimation(J)V
    .locals 0

    .line 207
    iput-wide p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartTime:J

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    .line 216
    iput-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    .line 217
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    invoke-interface {v0}, Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public update(J)Z
    .locals 4

    .line 228
    iget-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 231
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartTime:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget-wide v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mDuration:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 232
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 233
    iget-boolean v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 236
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 237
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 238
    :goto_0
    iget v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mDeltaY:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 239
    iget-object v2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 240
    iget-object v2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 241
    iget v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartAlpha:F

    iget v2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mEndAlpha:F

    iget v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartAlpha:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    .line 242
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 244
    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 247
    iput-boolean v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    .line 248
    iget-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    if-eqz p1, :cond_4

    .line 249
    iget-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    invoke-interface {p1}, Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;->onAnimationEnd()V

    .line 252
    :cond_4
    iget-boolean p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    xor-int/2addr p1, v1

    return p1
.end method
