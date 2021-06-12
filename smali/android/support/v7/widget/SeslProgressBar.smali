.class public Landroid/support/v7/widget/SeslProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;,
        Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;,
        Landroid/support/v7/widget/SeslProgressBar$SavedState;,
        Landroid/support/v7/widget/SeslProgressBar$RefreshData;,
        Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;,
        Landroid/support/v7/widget/SeslProgressBar$SeekBarMode;
    }
.end annotation


# static fields
.field private static final IS_BASE_SDK_VERSION:Z

.field private static final MAX_LEVEL:I = 0x2710

.field public static final MODE_DUAL_COLOR:I = 0x2

.field public static final MODE_SPLIT:I = 0x4

.field public static final MODE_STANDARD:I = 0x0

.field public static final MODE_VERTICAL:I = 0x3

.field public static final MODE_WARNING:I = 0x1

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/support/v7/widget/SeslProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

.field private mAggregatedIsVisible:Z

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCurrentMode:I

.field protected mDensity:F

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field private mMaxInitialized:Z

.field mMaxWidth:I

.field private mMin:I

.field mMinHeight:I

.field private mMinInitialized:Z

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/SeslProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

.field mSampleWidth:I

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J

.field private mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    .line 174
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010077

    .line 279
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 287
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSampleWidth:I

    .line 219
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 263
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentMode:I

    .line 2286
    new-instance v1, Landroid/support/v7/widget/SeslProgressBar$1;

    const-string v2, "visual_progress"

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/SeslProgressBar$1;-><init>(Landroid/support/v7/widget/SeslProgressBar;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mUiThreadId:J

    .line 290
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->initProgressBar()V

    .line 292
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 295
    iput-boolean p3, p0, Landroid/support/v7/widget/SeslProgressBar;->mNoInvalidate:Z

    .line 297
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressDrawable:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 303
    invoke-static {p4}, Landroid/support/v7/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_1
    :goto_0
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateDuration:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mDuration:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mDuration:I

    .line 312
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_minWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinWidth:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinWidth:I

    .line 313
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_maxWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    .line 314
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_minHeight:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinHeight:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinHeight:I

    .line 315
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_maxHeight:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    .line 317
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateBehavior:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iput p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mBehavior:I

    .line 319
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_interpolator:I

    const v1, 0x10a000b

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    if-lez p4, :cond_2

    .line 323
    invoke-virtual {p0, p1, p4}, Landroid/support/v7/widget/SeslProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 326
    :cond_2
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_min:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setMin(I)V

    .line 327
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_max:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    .line 329
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    .line 331
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgress:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V

    .line 334
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateDrawable:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 337
    invoke-static {p4}, Landroid/support/v7/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 340
    :cond_3
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :cond_4
    :goto_1
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateOnly:I

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    .line 347
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mNoInvalidate:Z

    .line 349
    iget-boolean p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-nez p4, :cond_5

    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminate:I

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminate(Z)V

    .line 352
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_mirrorForRtl:I

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    .line 354
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_8

    .line 355
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p4, :cond_7

    .line 356
    new-instance p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 358
    :cond_7
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressTintMode:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 360
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean p3, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 363
    :cond_8
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 364
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p4, :cond_9

    .line 365
    new-instance p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 367
    :cond_9
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 369
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean p3, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 372
    :cond_a
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 373
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p4, :cond_b

    .line 374
    new-instance p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 376
    :cond_b
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressBackgroundTintMode:I

    .line 377
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 376
    invoke-static {v2, v1}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 378
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean p3, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 381
    :cond_c
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressBackgroundTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 382
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p4, :cond_d

    .line 383
    new-instance p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 385
    :cond_d
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_progressBackgroundTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 387
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean p3, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 390
    :cond_e
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 391
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p4, :cond_f

    .line 392
    new-instance p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 394
    :cond_f
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgressTintMode:I

    .line 395
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 394
    invoke-static {v2, v1}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 396
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean p3, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 399
    :cond_10
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgressTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_12

    .line 400
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p4, :cond_11

    .line 401
    new-instance p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 403
    :cond_11
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_secondaryProgressTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 405
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean p3, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 408
    :cond_12
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateTintMode:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 409
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p4, :cond_13

    .line 410
    new-instance p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 412
    :cond_13
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateTintMode:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0, v1}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 414
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean p3, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 417
    :cond_14
    sget p4, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateTint:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_16

    .line 418
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez p4, :cond_15

    .line 419
    new-instance p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {p4, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 421
    :cond_15
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    sget v0, Landroid/support/v7/appcompat/R$styleable;->ProgressBar_android_indeterminateTint:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 423
    iget-object p4, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean p3, p4, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 426
    :cond_16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressTints()V

    .line 429
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 432
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_17

    .line 433
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/SeslProgressBar;->setImportantForAccessibility(I)V

    .line 436
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mDensity:F

    return-void
.end method

.method private static StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1

    .line 2261
    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2262
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2268
    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2269
    invoke-static {p0, p1}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private StateListDrawable_getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1

    .line 2275
    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2276
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslProgressBar;)Ljava/util/ArrayList;
    .locals 0

    .line 165
    iget-object p0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/SeslProgressBar;IIZZZ)V
    .locals 0

    .line 165
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static synthetic access$302(Landroid/support/v7/widget/SeslProgressBar;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method static synthetic access$700(Landroid/support/v7/widget/SeslProgressBar;IF)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->setVisualProgress(IF)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/SeslProgressBar;)F
    .locals 0

    .line 165
    iget p0, p0, Landroid/support/v7/widget/SeslProgressBar;->mVisualProgress:F

    return p0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/SeslProgressBar;F)F
    .locals 0

    .line 165
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mVisualProgress:F

    return p1
.end method

.method private applyIndeterminateTint()V
    .locals 3

    .line 766
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_3

    .line 767
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 768
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    .line 769
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 771
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 775
    :cond_1
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 776
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 781
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 2

    .line 900
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v0, :cond_3

    .line 902
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->progress:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 904
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    .line 905
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 907
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 908
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 913
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 914
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 2

    .line 925
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v0, :cond_3

    .line 927
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->background:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 929
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 932
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 933
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 938
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 939
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .line 888
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 889
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    .line 890
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    .line 891
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applySecondaryProgressTint()V

    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 2

    .line 950
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v0, :cond_3

    .line 952
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 954
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    .line 955
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 957
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 958
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 963
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 14

    move-object v1, p0

    move v0, p1

    move/from16 v2, p2

    monitor-enter p0

    .line 1348
    :try_start_0
    iget v3, v1, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    iget v4, v1, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 1349
    iget v4, v1, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1350
    :goto_0
    sget v3, Landroid/support/v7/appcompat/R$id;->progress:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const v7, 0x461c4000    # 10000.0f

    mul-float v7, v7, v4

    float-to-int v7, v7

    .line 1354
    iget-object v8, v1, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    .line 1358
    instance-of v9, v8, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v9, :cond_4

    .line 1359
    move-object v9, v8

    check-cast v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1360
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1361
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_2
    if-eqz v9, :cond_3

    move-object v8, v9

    .line 1363
    :cond_3
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_5

    .line 1364
    :cond_4
    instance-of v9, v8, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v9, :cond_9

    .line 1365
    move-object v9, v8

    check-cast v9, Landroid/graphics/drawable/StateListDrawable;

    .line 1366
    invoke-static {v9}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_b

    .line 1369
    move-object v11, v8

    check-cast v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {v11, v10}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x0

    if-nez v11, :cond_5

    .line 1374
    monitor-exit p0

    return-void

    .line 1377
    :cond_5
    :try_start_1
    instance-of v13, v11, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v13, :cond_6

    .line 1378
    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    .line 1379
    invoke-virtual {v11, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 1380
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1382
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v12

    .line 1381
    invoke-static {v11, v12}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    goto :goto_3

    :cond_6
    move-object v11, v12

    :cond_7
    :goto_3
    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    move-object v11, v8

    .line 1385
    :goto_4
    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1388
    :cond_9
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_5

    .line 1392
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    if-eqz p5, :cond_c

    .line 1397
    iget-object v0, v1, Landroid/support/v7/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    new-array v7, v6, [F

    aput v4, v7, v5

    invoke-static {p0, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1398
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v5, 0x50

    .line 1399
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1400
    sget-object v5, Landroid/support/v7/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1401
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    .line 1403
    :cond_c
    invoke-direct {p0, p1, v4}, Landroid/support/v7/widget/SeslProgressBar;->setVisualProgress(IF)V

    :goto_6
    if-eqz v3, :cond_d

    if-eqz p4, :cond_d

    move/from16 v0, p3

    .line 1407
    invoke-virtual {p0, v4, v0, v2}, Landroid/support/v7/widget/SeslProgressBar;->onProgressRefresh(FZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1409
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1347
    monitor-exit p0

    throw v0
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1224
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1226
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1228
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 1229
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_1

    :cond_1
    move-object p1, v1

    :cond_2
    :goto_1
    return-object p1
.end method

.method private initProgressBar()V
    .locals 2

    const/4 v0, 0x0

    .line 587
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    const/16 v1, 0x64

    .line 588
    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    .line 589
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    .line 590
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    .line 591
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    .line 592
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    .line 593
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mDuration:I

    const/4 v0, 0x1

    .line 594
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mBehavior:I

    const/16 v0, 0x18

    .line 595
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinWidth:I

    const/16 v1, 0x30

    .line 596
    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    .line 597
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinHeight:I

    .line 598
    iput v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .line 447
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 448
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 449
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 451
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 458
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_5

    .line 459
    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    .line 460
    invoke-static {p0}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 462
    invoke-static {p0, v3}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 463
    invoke-static {v4}, Landroid/support/v7/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v2

    .line 472
    :cond_5
    instance-of p0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method private declared-synchronized refreshProgress(IIZZ)V
    .locals 7

    monitor-enter p0

    .line 1468
    :try_start_0
    iget-wide v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 1469
    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    goto :goto_0

    .line 1471
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_1

    .line 1472
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;-><init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    .line 1475
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->obtain(IIZZ)Landroid/support/v7/widget/SeslProgressBar$RefreshData;

    move-result-object p1

    .line 1476
    iget-object p2, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mAttached:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshIsPosted:Z

    if-nez p1, :cond_2

    .line 1478
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 1479
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshIsPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1467
    monitor-exit p0

    throw p1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .line 2153
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 2154
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;-><init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    goto :goto_0

    .line 2156
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2158
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/SeslProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setVisualProgress(IF)V
    .locals 2

    .line 1431
    iput p2, p0, Landroid/support/v7/widget/SeslProgressBar;->mVisualProgress:F

    .line 1433
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1435
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    .line 1436
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1442
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x461c4000    # 10000.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 1448
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 1450
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    .line 1453
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->onVisualProgressChanged(IF)V

    return-void
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 637
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 638
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 640
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 644
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 487
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 488
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 489
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    .line 490
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_2

    .line 493
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 494
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$id;->progress:I

    if-eq v4, v6, :cond_1

    sget v6, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-direct {p0, v5, v4}, Landroid/support/v7/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    :cond_2
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_3
    if-ge v1, p2, :cond_4

    .line 500
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    .line 502
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 503
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 504
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 505
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 506
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 507
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 508
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 509
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 510
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v2

    .line 517
    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_8

    .line 518
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 519
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 520
    invoke-static {p1}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_7

    .line 522
    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v3

    .line 523
    invoke-static {p1, v1}, Landroid/support/v7/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 525
    invoke-direct {p0, v4, p2}, Landroid/support/v7/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v0

    .line 532
    :cond_8
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 533
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 534
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 535
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 537
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSampleWidth:I

    if-gtz v0, :cond_9

    .line 538
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSampleWidth:I

    :cond_9
    if-eqz p2, :cond_a

    .line 542
    new-instance p2, Landroid/graphics/drawable/ClipDrawable;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object p2

    :cond_a
    return-object p1

    :cond_b
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 557
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 558
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 559
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 560
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 561
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2710

    if-ge v2, v0, :cond_0

    .line 564
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Landroid/support/v7/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 565
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 566
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v1

    :cond_1
    return-object p1
.end method

.method private updateDrawableState()V
    .locals 4

    .line 1989
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1992
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1993
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1994
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1997
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1998
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1999
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 2003
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1925
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1929
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1931
    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1932
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1933
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    .line 1935
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1938
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 1939
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mHasAnimation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 1940
    iget-object v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1941
    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    const/4 v3, 0x1

    .line 1943
    :try_start_0
    iput-boolean v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mInDrawing:Z

    const v3, 0x461c4000    # 10000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 1944
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mInDrawing:Z

    .line 1948
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidateOnAnimation()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1946
    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mInDrawing:Z

    .line 1947
    throw p1

    .line 1951
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1952
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1954
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz p1, :cond_2

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_2

    .line 1955
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1956
    iput-boolean v5, p0, Landroid/support/v7/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 2009
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 2011
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2012
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2015
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2016
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1984
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1985
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableState()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2122
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1263
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 727
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1787
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1626
    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMin()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1612
    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMirrorForRtl()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 881
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2250
    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2257
    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1581
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1092
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1126
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 817
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1011
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1048
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 1598
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1171
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1209
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1

    monitor-enter p0

    .line 1695
    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1694
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1

    monitor-enter p0

    .line 1706
    :try_start_0
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1705
    monitor-exit p0

    throw p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1844
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mInDrawing:Z

    if-nez v0, :cond_1

    .line 1845
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1847
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 1848
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1850
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/support/v7/widget/SeslProgressBar;->invalidate(IIII)V

    goto :goto_0

    .line 1853
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 2170
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    .line 608
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1274
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1275
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1276
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .line 2084
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2085
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 2086
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    .line 2088
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2089
    monitor-enter p0

    .line 2090
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2092
    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;

    .line 2093
    iget v4, v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->id:I

    iget v5, v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v6, v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->fromUser:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->animate:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 2094
    invoke-virtual {v2}, Landroid/support/v7/widget/SeslProgressBar$RefreshData;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2096
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2097
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 2099
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAttached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2104
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 2105
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V

    .line 2107
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2108
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshProgressRunnable:Landroid/support/v7/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2109
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mRefreshIsPosted:Z

    .line 2111
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 2112
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAccessibilityEventSender:Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2116
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2117
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mAttached:Z

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    .line 1916
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1918
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1915
    monitor-exit p0

    throw p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 2128
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2129
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2130
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 2136
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2138
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2140
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    .line 2139
    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 2141
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    .line 1966
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1968
    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinWidth:I

    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1969
    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinHeight:I

    iget v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1972
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableState()V

    .line 1974
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1975
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 1977
    invoke-static {v2, p1, v1}, Landroid/support/v7/widget/SeslProgressBar;->resolveSizeAndState(III)I

    move-result p1

    .line 1978
    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/SeslProgressBar;->resolveSizeAndState(III)I

    move-result p2

    .line 1979
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1980
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1962
    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 0

    .line 1412
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "accessibility"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 1413
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1414
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->scheduleAccessibilityEventSender()V

    .line 1418
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    iget p3, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    if-le p1, p3, :cond_1

    if-nez p2, :cond_1

    .line 1419
    sget p1, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    iget p2, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    :cond_1
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1284
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1286
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1288
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1289
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1291
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 1292
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2075
    check-cast p1, Landroid/support/v7/widget/SeslProgressBar$SavedState;

    .line 2076
    invoke-virtual {p1}, Landroid/support/v7/widget/SeslProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2078
    iget v0, p1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgress(I)V

    .line 2079
    iget p1, p1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2064
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2065
    new-instance v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2067
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    iput v0, v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->progress:I

    .line 2068
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    iput v0, v1, Landroid/support/v7/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1860
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableBounds(II)V

    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 3

    .line 2235
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2236
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2239
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 2240
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    sget v1, Landroid/support/v7/appcompat/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 2242
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    .line 1822
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1824
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_2

    .line 1825
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    .line 1827
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1830
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    goto :goto_0

    .line 1832
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V

    .line 1836
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1837
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1808
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1810
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 1815
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    goto :goto_1

    .line 1813
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method onVisualProgressChanged(IF)V
    .locals 0

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .line 1298
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1299
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    .line 622
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_2

    .line 623
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz p1, :cond_1

    .line 627
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    goto :goto_0

    .line 630
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 631
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 621
    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 680
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 681
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 682
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 685
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 688
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    .line 689
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 690
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 801
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 804
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 711
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 714
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 715
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 717
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 745
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 746
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 748
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyIndeterminateTint()V

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/InterpolatorRes;
        .end annotation
    .end param

    .line 1768
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1778
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    .line 1668
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_0

    .line 1669
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    if-ge p1, v0, :cond_0

    .line 1670
    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    :cond_0
    const/4 v0, 0x1

    .line 1673
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxInitialized:Z

    .line 1674
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 1675
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    .line 1676
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    .line 1678
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 1679
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    .line 1681
    :cond_1
    sget p1, Landroid/support/v7/appcompat/R$id;->progress:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    goto :goto_0

    .line 1683
    :cond_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1667
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    .line 1639
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_0

    .line 1640
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    if-le p1, v0, :cond_0

    .line 1641
    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    :cond_0
    const/4 v0, 0x1

    .line 1644
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMinInitialized:Z

    .line 1645
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxInitialized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    if-eq p1, v0, :cond_2

    .line 1646
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    .line 1647
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    .line 1649
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    if-ge v0, p1, :cond_1

    .line 1650
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    .line 1652
    :cond_1
    sget p1, Landroid/support/v7/appcompat/R$id;->progress:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    goto :goto_0

    .line 1654
    :cond_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1656
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1638
    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 1

    .line 2211
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentMode:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2222
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_split_seekbar_background_progress:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2225
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2215
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2218
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1500
    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, Landroid/support/v7/widget/SeslProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1499
    monitor-exit p0

    throw p1
.end method

.method public setProgress(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1515
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/SeslProgressBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1072
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 1075
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1076
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1078
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1079
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1107
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1108
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 1110
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1111
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1113
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1114
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 13

    .line 828
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_6

    .line 829
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 831
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 834
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 837
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 838
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 839
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 844
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 845
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 846
    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    if-ge v1, v0, :cond_3

    .line 847
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxWidth:I

    .line 848
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->requestLayout()V

    goto :goto_0

    .line 851
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 852
    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_3

    .line 853
    iput v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMaxHeight:I

    .line 854
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->requestLayout()V

    .line 858
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyProgressTints()V

    .line 861
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_5

    .line 862
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 863
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    .line 866
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableBounds(II)V

    .line 867
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableState()V

    .line 869
    sget v2, Landroid/support/v7/appcompat/R$id;->progress:I

    iget v3, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 871
    sget v8, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    iget v9, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    :cond_6
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1253
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1256
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method declared-synchronized setProgressInternal(IZZ)Z
    .locals 3

    monitor-enter p0

    .line 1519
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1521
    monitor-exit p0

    return v1

    .line 1524
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    iget v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    invoke-static {p1, v0, v2}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result p1

    .line 1526
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    .line 1528
    monitor-exit p0

    return v1

    .line 1531
    :cond_1
    :try_start_2
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    .line 1532
    sget p1, Landroid/support/v7/appcompat/R$id;->progress:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgress:I

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 1533
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1518
    monitor-exit p0

    throw p1
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 991
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 992
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 994
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 995
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 997
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 998
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1026
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1027
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 1029
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1030
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 1032
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1033
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 2

    monitor-enter p0

    .line 1549
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1550
    monitor-exit p0

    return-void

    .line 1553
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    if-ge p1, v0, :cond_1

    .line 1554
    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMin:I

    .line 1557
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    if-le p1, v0, :cond_2

    .line 1558
    iget p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mMax:I

    .line 1561
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_3

    .line 1562
    iput p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    .line 1563
    sget p1, Landroid/support/v7/appcompat/R$id;->secondaryProgress:I

    iget v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/support/v7/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1565
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1548
    monitor-exit p0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1150
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1151
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 1153
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1154
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1156
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1157
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1187
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1188
    new-instance v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;-><init>(Landroid/support/v7/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    .line 1190
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1191
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressTintInfo:Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1193
    iget-object p1, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 1194
    invoke-direct {p0}, Landroid/support/v7/widget/SeslProgressBar;->applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1792
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 1793
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1795
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1800
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->startAnimation()V

    goto :goto_1

    .line 1798
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->stopAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method startAnimation()V
    .locals 3

    .line 1713
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Landroid/support/v7/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1717
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1718
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    const/4 v0, 0x0

    .line 1719
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mHasAnimation:Z

    goto :goto_2

    .line 1721
    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mHasAnimation:Z

    .line 1723
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 1724
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1727
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 1728
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    goto :goto_0

    .line 1730
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 1733
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 1734
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    .line 1736
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 1739
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1740
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1741
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1742
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1743
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 1745
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 1752
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mHasAnimation:Z

    .line 1753
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 1754
    iget-object v1, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1755
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1757
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->postInvalidate()V

    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 9
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1870
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1871
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 1878
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1880
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_1

    .line 1883
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1884
    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v4, v2, v3

    sub-float v5, v0, v4

    .line 1887
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    mul-float v3, v3, v0

    float-to-int v0, v3

    sub-int v2, p1, v0

    .line 1891
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    mul-float v2, v2, v3

    float-to-int v0, v2

    sub-int/2addr p2, v0

    .line 1896
    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    move v3, p2

    move p2, v0

    const/4 v2, 0x0

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 1901
    :goto_1
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    sub-int v0, p1, v0

    sub-int/2addr p1, v2

    goto :goto_2

    :cond_2
    move p1, v0

    move v0, v2

    .line 1906
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1909
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1910
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1268
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    .line 1269
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
