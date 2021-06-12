.class public abstract Landroid/support/v7/widget/SeslAbsSeekBar;
.super Landroid/support/v7/widget/SeslProgressBar;
.source "SourceFile"


# static fields
.field private static final CURRENT_SEC_ACTIVE_THEMEPACKAGE:Ljava/lang/String; = "current_sec_active_themepackage"

.field private static final HOVER_DETECT_TIME:I = 0xc8

.field private static final HOVER_POPUP_WINDOW_GRAVITY_CENTER_HORIZONTAL_ON_POINT:I = 0x201

.field private static final HOVER_POPUP_WINDOW_GRAVITY_TOP_ABOVE:I = 0x3030

.field private static final IS_BASE_SDK_VERSION:Z

.field private static final MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final MUTE_VIB_DURATION:I = 0x1f4

.field private static final MUTE_VIB_TOTAL:I = 0x4

.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mAllowedSeekBarAnimation:Z

.field private mCurrentProgressLevel:I

.field private mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mDisabledAlpha:F

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsTouchDisabled:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mLargeFont:Z

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

.field private mOverlapBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

.field private mOverlapPoint:I

.field private mOverlapPrimary:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousHoverPopupType:I

.field private mScaledTouchSlop:I

.field private mSplitProgress:Landroid/graphics/drawable/Drawable;

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosXFloat:F

.field private mThumbPosY:I

.field private mThumbPosYFloat:F

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mUseMuteAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 167
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 81
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 83
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 86
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 87
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 88
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 89
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 126
    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    const/4 p1, -0x1

    .line 136
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 147
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 148
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 149
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 150
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 157
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 158
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 161
    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 81
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p2, 0x0

    .line 82
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 83
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 86
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 87
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 88
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 89
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 126
    iput p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    const/4 p1, -0x1

    .line 136
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 147
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 148
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 149
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 150
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 157
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 158
    iput-boolean p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 161
    iput p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 81
    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 83
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 86
    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 87
    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 88
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 89
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    .line 109
    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 126
    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    const/4 v2, -0x1

    .line 136
    iput v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 147
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 148
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    .line 149
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 150
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 157
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    .line 158
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    .line 161
    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    .line 181
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 184
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 185
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 187
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbTintMode:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 188
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbTintMode:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p4, v3}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 190
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 193
    :cond_0
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 194
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 195
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 198
    :cond_1
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 199
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 201
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 202
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p4, v2}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 204
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 207
    :cond_2
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 208
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 209
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 212
    :cond_3
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_splitTrack:I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitTrack:Z

    .line 215
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumbOffset:I

    .line 216
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getThumbOffset()I

    move-result v2

    .line 215
    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    .line 217
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbOffset(I)V

    .line 219
    sget p4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_useDisabledAlpha:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    .line 221
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p4, :cond_4

    .line 224
    sget-object p3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p1, p2, p3, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 226
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_disabledAlpha:I

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    .line 227
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 229
    iput p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    .line 232
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 233
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 235
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 239
    sget p2, Landroid/support/v7/appcompat/R$color;->sesl_seekbar_control_color_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 241
    sget p2, Landroid/support/v7/appcompat/R$color;->sesl_seekbar_control_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 243
    sget p2, Landroid/support/v7/appcompat/R$color;->sesl_seekbar_overlap_color_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    .line 245
    sget p2, Landroid/support/v7/appcompat/R$color;->sesl_seekbar_overlap_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    .line 247
    iget-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 248
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 249
    iget-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_5

    .line 250
    sget p2, Landroid/support/v7/appcompat/R$color;->sesl_thumb_control_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    .line 254
    :cond_5
    sget p2, Landroid/support/v7/appcompat/R$bool;->sesl_seekbar_sliding_animation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    .line 255
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mAllowedSeekBarAnimation:Z

    if-eqz p1, :cond_6

    .line 256
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->initMuteAnimation()V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslAbsSeekBar;)I
    .locals 0

    .line 65
    iget p0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    return p0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/SeslAbsSeekBar;I)I
    .locals 0

    .line 65
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    return p1
.end method

.method private applyThumbTint()V
    .locals 2

    .line 412
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 415
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 419
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 425
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 569
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 573
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 579
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 1305
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1306
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private cancelMuteAnimation()V
    .locals 1

    .line 1782
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private checkInvalidatedDualColorMode()Z
    .locals 2

    .line 1706
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    .line 1735
    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    .line 1736
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getDualOverlapDrawable()V
    .locals 2

    .line 1710
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-nez v0, :cond_0

    .line 1711
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1713
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1715
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1716
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    .line 1718
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method private getScale()F
    .locals 3

    .line 836
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    .line 837
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    .line 839
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initMuteAnimation()V
    .locals 8

    .line 1754
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    .line 1756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x190

    const/4 v2, 0x0

    const/16 v3, 0x190

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_3

    .line 1761
    rem-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 1762
    new-array v6, v6, [I

    aput v1, v6, v1

    aput v3, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    :cond_1
    new-array v6, v6, [I

    aput v3, v6, v1

    aput v1, v6, v5

    .line 1763
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    :goto_2
    const/16 v6, 0x3e

    int-to-long v6, v6

    .line 1764
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1765
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1766
    new-instance v6, Landroid/support/v7/widget/SeslAbsSeekBar$1;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/SeslAbsSeekBar$1;-><init>(Landroid/support/v7/widget/SeslAbsSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1773
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    int-to-double v3, v3

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double v3, v3, v5

    double-to-int v3, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1778
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method private setHotspot(FF)V
    .locals 1

    .line 1216
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1828
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1813
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 1814
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 1816
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9

    .line 853
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 854
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result p1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    return-void

    .line 859
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 860
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 861
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v0

    .line 865
    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float v2, p1

    mul-float p3, p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    const/high16 v2, -0x80000000

    if-ne p4, v2, :cond_1

    .line 871
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 872
    iget v2, p4, Landroid/graphics/Rect;->top:I

    .line 873
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    move v8, v2

    move v2, p4

    move p4, v8

    goto :goto_0

    :cond_1
    add-int v2, p4, v1

    .line 879
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    sub-int p3, p1, p3

    :cond_2
    add-int p1, p3, v0

    .line 882
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 884
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    .line 885
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v5

    add-int v6, p3, v4

    add-int v7, p4, v5

    add-int/2addr v4, p1

    add-int/2addr v5, v2

    .line 886
    invoke-static {v3, v6, v7, v4, v5}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 891
    :cond_3
    invoke-virtual {p2, p3, p4, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 895
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    .line 896
    div-int/lit8 p1, v1, 0x2

    add-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosY:I

    .line 898
    iget p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    int-to-float p1, p1

    int-to-float p2, v0

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    iget p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    int-to-float p1, p4

    int-to-float p2, v1

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 899
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    .line 901
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateSplitProgress()V

    return-void
.end method

.method private setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 8

    .line 909
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    .line 910
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 911
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 915
    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float v2, p1

    mul-float p3, p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    const/high16 v2, -0x80000000

    if-ne p4, v2, :cond_0

    .line 921
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 922
    iget v2, p4, Landroid/graphics/Rect;->left:I

    .line 923
    iget p4, p4, Landroid/graphics/Rect;->right:I

    move v7, v2

    move v2, p4

    move p4, v7

    goto :goto_0

    :cond_0
    add-int v2, p4, v0

    :goto_0
    sub-int/2addr p1, p3

    add-int/2addr v1, p1

    .line 932
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 934
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    .line 935
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    add-int v5, p4, v3

    add-int v6, p1, v4

    add-int/2addr v3, v2

    add-int/2addr v4, v1

    .line 937
    invoke-static {p3, v5, v6, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 942
    :cond_1
    invoke-virtual {p2, p4, p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 945
    div-int/lit8 p2, v0, 0x2

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    .line 946
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosY:I

    int-to-float p1, p4

    int-to-float p2, v0

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    .line 948
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosXFloat:F

    .line 949
    iget p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosY:I

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosYFloat:F

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 1203
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setPressed(Z)V

    .line 1205
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 1210
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 1211
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1212
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startMuteAnimation()V
    .locals 1

    .line 1788
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->cancelMuteAnimation()V

    .line 1790
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private trackHoverEvent(I)V
    .locals 5

    .line 1512
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    .line 1513
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1517
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1519
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1522
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float v3, p1, v0

    .line 1523
    iget p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    move v4, v3

    move v3, p1

    move p1, v4

    .line 1526
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr v3, p1

    float-to-int p1, v3

    .line 1528
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1224
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1225
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEventInVertical(Landroid/view/MotionEvent;)V

    return-void

    .line 1230
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1232
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    .line 1233
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1237
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_3

    .line 1238
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 1240
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_2

    :cond_2
    sub-int v1, v2, v0

    .line 1243
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1244
    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_3

    .line 1247
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    if-ge v0, v3, :cond_4

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    .line 1249
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_5

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 1252
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1253
    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    .line 1257
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v6

    sub-int/2addr v3, v6

    .line 1260
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    cmpl-float v5, v1, v5

    if-lez v5, :cond_6

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    rem-float v4, v1, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v6, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    sub-float/2addr v6, v4

    add-float/2addr v1, v6

    :cond_6
    int-to-float v3, v3

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    int-to-float p1, p1

    .line 1271
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHotspot(FF)V

    .line 1272
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method private trackTouchEventInVertical(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1279
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v0

    .line 1280
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int p1, v0, p1

    .line 1285
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    if-ge p1, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1287
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1290
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 1291
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchProgressOffset:F

    move v5, v4

    move v4, v0

    move v0, v5

    .line 1293
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr v4, v0

    int-to-float v0, v2

    int-to-float p1, p1

    .line 1296
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHotspot(FF)V

    float-to-int p1, v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1297
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    return-void
.end method

.method private updateBoundsForDualColor()V
    .locals 8

    .line 1670
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1674
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1675
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    .line 1676
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v2

    .line 1677
    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-nez v3, :cond_2

    .line 1678
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 1680
    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-boolean v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    if-nez v4, :cond_1

    .line 1681
    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1683
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1686
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    mul-float v3, v3, v2

    add-float/2addr v5, v3

    float-to-int v1, v5

    .line 1687
    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1688
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1689
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 1690
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 1691
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 1692
    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v3, v3

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1694
    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v6

    mul-float v3, v3, v1

    add-float/2addr v5, v3

    float-to-int v1, v5

    .line 1697
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1698
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private updateDualColorMode()V
    .locals 2

    .line 1649
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1653
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1654
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapNormalProgressColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1656
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mLargeFont:Z

    if-nez v0, :cond_2

    .line 1657
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_1

    .line 1658
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1659
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1661
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1662
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1666
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateBoundsForDualColor()V

    return-void
.end method

.method private updateSplitProgress()V
    .locals 9

    .line 956
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 959
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 961
    iget-boolean v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 962
    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbPosX:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 968
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    .line 969
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v1

    .line 971
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 972
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDensity:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v4, v4, v5

    div-float/2addr v4, v3

    sub-float v4, v0, v4

    float-to-int v4, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v6, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDensity:F

    const/high16 v7, 0x41b00000    # 22.0f

    mul-float v6, v6, v7

    div-float/2addr v6, v3

    sub-float v6, v1, v6

    float-to-int v6, v6

    iget v8, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDensity:F

    mul-float v8, v8, v5

    div-float/2addr v8, v3

    add-float/2addr v0, v8

    float-to-int v0, v0

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDensity:F

    mul-float v5, v5, v7

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v4, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 8

    .line 758
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 759
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateThumbAndTrackPosInVertical(II)V

    return-void

    .line 764
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 765
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 766
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 770
    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 771
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_0
    if-le v4, v2, :cond_2

    sub-int/2addr p2, v4

    .line 778
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v4, v2

    .line 779
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    move v7, v4

    move v4, p2

    move p2, v7

    goto :goto_1

    :cond_2
    sub-int/2addr p2, v2

    .line 782
    div-int/lit8 p2, p2, 0x2

    sub-int v4, v2, v4

    .line 784
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    :goto_1
    if-eqz v0, :cond_3

    .line 788
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v2, p2

    .line 789
    invoke-virtual {v0, v3, p2, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz v1, :cond_4

    .line 793
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getScale()F

    move-result p2

    invoke-direct {p0, p1, v1, p2, v4}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 796
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateSplitProgress()V

    return-void
.end method

.method private updateThumbAndTrackPosInVertical(II)V
    .locals 7

    .line 803
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 804
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 805
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 809
    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_0
    if-le v4, v2, :cond_1

    sub-int v5, p1, v4

    .line 816
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v2

    .line 817
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    move v2, v5

    goto :goto_1

    :cond_1
    sub-int v5, p1, v2

    .line 820
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v4

    .line 822
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    move v4, v5

    :goto_1
    if-eqz v0, :cond_2

    .line 826
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr p1, v4

    .line 827
    invoke-virtual {v0, v4, v3, p1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz v1, :cond_3

    .line 831
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getScale()F

    move-result p1

    invoke-direct {p0, p2, v1, p1, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPosInVertical(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3
    return-void
.end method

.method private updateWarningMode(I)V
    .locals 2

    .line 1740
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1741
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1744
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    .line 1745
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 1747
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1748
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method canUserSetProgress()Z
    .locals 1

    .line 1467
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1096
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1097
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1100
    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1101
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 1103
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1105
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1106
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1071
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1072
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1074
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1075
    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    .line 1076
    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 1077
    div-int/lit8 v1, v3, 0x2

    .line 1078
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v4, v2

    neg-int v5, v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1080
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 1081
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1082
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v0, :cond_2

    .line 1084
    iget-object v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    .line 1085
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1087
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1028
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1029
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_0

    .line 1030
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1031
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 1032
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1033
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1034
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 1035
    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1037
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1038
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1039
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 1040
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 1041
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 1043
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 1044
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 1048
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->checkInvalidatedDualColorMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1049
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1050
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1051
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 1052
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1054
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 1056
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1058
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1059
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    if-le v0, v1, :cond_3

    .line 1060
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1062
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 692
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->drawableHotspotChanged(FF)V

    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 653
    invoke-super {p0}, Landroid/support/v7/widget/SeslProgressBar;->drawableStateChanged()V

    .line 655
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 656
    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 657
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDisabledAlpha:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 658
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 661
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPrimary:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 663
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 668
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_3

    .line 669
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 670
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 672
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 673
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateDualColorMode()V

    .line 677
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 678
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 679
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 680
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 684
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 685
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 686
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "qweqweqwe"

    const-string v1, "Stack:"

    .line 1389
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHoverPopupType()I
    .locals 1

    .line 1880
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1881
    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopupType(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .line 604
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1581
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    .line 1590
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .line 435
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 497
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public isHoverPopupTypeNone(I)Z
    .locals 1

    .line 1875
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1876
    invoke-static {}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHoverPopupTypeUserCustom(I)Z
    .locals 1

    .line 1870
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1871
    invoke-static {}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->getField_TYPE_USER_CUSTOM()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 640
    invoke-super {p0}, Landroid/support/v7/widget/SeslProgressBar;->jumpDrawablesToCurrentState()V

    .line 642
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 646
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 998
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 1000
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v0

    .line 1002
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    if-eq v1, v0, :cond_0

    .line 1004
    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mPreviousHoverPopupType:I

    const/16 v0, 0x3231

    .line 1006
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHoverPopupGravity(I)V

    .line 1008
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 1010
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHoverPopupOffset(I)V

    .line 1011
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHoverPopupDetectTime()V

    .line 1015
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1016
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1017
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1020
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_2

    .line 1021
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 997
    monitor-exit p0

    throw p1
.end method

.method onHoverChanged(III)V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1538
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->supportIsHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1558
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingHover()V

    goto :goto_0

    .line 1545
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    .line 1546
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStartTrackingHover(III)V

    goto :goto_0

    .line 1549
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackHoverEvent(I)V

    .line 1550
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->onHoverChanged(III)V

    .line 1552
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHoverPopupType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isHoverPopupTypeUserCustom(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setHoveringPoint(II)V

    .line 1554
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateHoverPopup()V

    .line 1564
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1396
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1402
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1404
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    .line 1406
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1407
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1410
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1411
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1333
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1334
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    .line 1335
    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    neg-int v0, v0

    .line 1344
    :sswitch_1
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    neg-int v0, v0

    .line 1347
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1348
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onKeyChange()V

    return v3

    :cond_1
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    neg-int v0, v0

    .line 1362
    :sswitch_3
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    neg-int v0, v0

    .line 1364
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3, v3}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1365
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onKeyChange()V

    return v3

    .line 1373
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x51 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    .line 1112
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1117
    iget v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1118
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1119
    :goto_0
    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMinWidth:I

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1120
    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1121
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 1123
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1124
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMinWidth:I

    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1125
    iget v4, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1126
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1129
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1130
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 1132
    invoke-static {v2, p1, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->resolveSizeAndState(III)I

    move-result p1

    .line 1133
    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->resolveSizeAndState(III)I

    move-result p2

    .line 1132
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1111
    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 3

    const v0, 0x461c4000    # 10000.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 723
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mUseMuteAnimation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 726
    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 727
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->startMuteAnimation()V

    goto :goto_1

    .line 729
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->cancelMuteAnimation()V

    .line 731
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 732
    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentProgressLevel:I

    .line 734
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->onProgressRefresh(FZI)V

    .line 736
    iget-object p2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 738
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result p3

    const/high16 v0, -0x80000000

    invoke-direct {p0, p3, p2, p1, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 743
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 986
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onResolveDrawables(I)V

    .line 988
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .line 1472
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onRtlPropertiesChanged(I)V

    .line 1474
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1476
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getScale()F

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1481
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 750
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslProgressBar;->onSizeChanged(IIII)V

    .line 753
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 3

    .line 1798
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onSlidingRefresh(I)V

    int-to-float p1, p1

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    .line 1801
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1803
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1808
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 1314
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 1322
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1138
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1142
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1191
    :pswitch_0
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1192
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz p1, :cond_1

    .line 1193
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 1194
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setPressed(Z)V

    .line 1196
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 1154
    :pswitch_1
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1155
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 1156
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1158
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1160
    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchDownX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_4

    :cond_3
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    if-ne v0, v4, :cond_8

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchDownY:F

    sub-float/2addr v1, v0

    .line 1161
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 1162
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1169
    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v0, :cond_5

    .line 1170
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1173
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 1174
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1175
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 1176
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setPressed(Z)V

    goto :goto_0

    .line 1180
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStartTrackingTouch()V

    .line 1181
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1182
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onStopTrackingTouch()V

    .line 1187
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    goto :goto_1

    .line 1144
    :pswitch_3
    iput-boolean v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsDraggingForSliding:Z

    .line 1145
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->supportIsInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchDownX:F

    .line 1147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTouchDownY:F

    goto :goto_1

    .line 1149
    :cond_7
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    :cond_8
    :goto_1
    return v2

    :cond_9
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onVisualProgressChanged(IF)V
    .locals 2

    .line 701
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->onVisualProgressChanged(IF)V

    .line 703
    sget v0, Landroid/support/v7/appcompat/R$id;->progress:I

    if-ne p1, v0, :cond_0

    .line 704
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 706
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 711
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .line 1420
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1424
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1000

    const/16 v3, 0x2000

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    const v0, 0x102003d

    if-eq p1, v0, :cond_2

    return v2

    .line 1430
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_5

    const-string p1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 1433
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 1437
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 1439
    invoke-virtual {p0, p1, v1, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v2

    .line 1443
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->canUserSetProgress()Z

    move-result p2

    if-nez p2, :cond_7

    return v2

    .line 1446
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    .line 1447
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ne p1, v3, :cond_8

    neg-int p2, p2

    .line 1453
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v1, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressInternal(IZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1454
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onKeyChange()V

    return v1

    :cond_9
    return v2
.end method

.method public setHoverPopupDetectTime()V
    .locals 2

    .line 1850
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1852
    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc8

    .line 1851
    invoke-static {v0, v1}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->setHoverDetectTime(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public setHoverPopupGravity(I)V
    .locals 1

    .line 1836
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1838
    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1837
    invoke-static {v0, p1}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->setGravity(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public setHoverPopupOffset(I)V
    .locals 2

    .line 1843
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1845
    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1844
    invoke-static {v0, v1, p1}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->setOffset(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 1

    .line 1858
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 1859
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->setHoveringPoint(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    .line 592
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    .line 622
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    const/4 p1, 0x1

    .line 623
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mIsFirstSetProgress:Z

    .line 624
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 626
    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    .line 629
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 621
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    .line 609
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMin(I)V

    .line 610
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    .line 612
    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mKeyProgressIncrement:I

    div-int v0, p1, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    int-to-float p1, p1

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr p1, v1

    .line 616
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 608
    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 1

    .line 1600
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMode(I)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1612
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_split_seekbar_primary_progress:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitProgress:Landroid/graphics/drawable/Drawable;

    .line 1614
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_split_seekbar_vertical_bar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1616
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateSplitProgress()V

    goto :goto_0

    .line 1607
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_scrubber_control_anim:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1609
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1619
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    goto :goto_0

    .line 1603
    :pswitch_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1604
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1622
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 1

    .line 1632
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1637
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 1638
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1639
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1641
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mOverlapPoint:I

    .line 1642
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDualOverlapDrawable()V

    .line 1643
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateDualColorMode()V

    .line 1645
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1572
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressInternal(IZZ)Z
    .locals 0

    .line 1381
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->setProgressInternal(IZZ)Z

    move-result p2

    .line 1382
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateWarningMode(I)V

    .line 1383
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateDualColorMode()V

    return p2
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1822
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1824
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedProgressColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .line 457
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mSplitTrack:Z

    .line 458
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 274
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 282
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 283
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 290
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 291
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    goto :goto_1

    .line 293
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    :goto_1
    if-eqz v0, :cond_4

    .line 298
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 299
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 300
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->requestLayout()V

    .line 304
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 306
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 307
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    if-eqz v0, :cond_5

    .line 310
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_5

    .line 311
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 315
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0

    .line 445
    iput p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbOffset:I

    .line 446
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 1

    .line 337
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 338
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 358
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTint:Z

    .line 361
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    .line 363
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mDefaultActivatedThumbColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 392
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 393
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasThumbTintMode:Z

    .line 395
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 479
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 482
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 483
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 484
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 487
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    .line 490
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 515
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 516
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTint:Z

    .line 518
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 546
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 547
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mHasTickMarkTintMode:Z

    .line 549
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public supportIsHoveringUIEnabled()Z
    .locals 1

    .line 1832
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportIsInScrollingContainer()Z
    .locals 1

    .line 1887
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->isInScrollingContainer(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateDrawableBounds(II)V
    .locals 0

    .line 1728
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->updateDrawableBounds(II)V

    .line 1730
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 1731
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsSeekBar;->updateBoundsForDualColor()V

    return-void
.end method

.method public updateHoverPopup()V
    .locals 1

    .line 1864
    sget-boolean v0, Landroid/support/v7/widget/SeslAbsSeekBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1865
    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->update(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 635
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
