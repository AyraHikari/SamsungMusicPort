.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"

.field private static final CHANGE_FLING_VELOCITY:I = 0x7d0

.field private static final CHECKED_STATE_SET:[I

.field private static final MIN_FLING_VELOCITY:I = 0x1f4

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SUPPORT_TOUCH_FEEDBACK:Z

.field private static final THUMB_ANIMATION_DURATION:I = 0x96

.field private static final THUMB_ANIMATION_DURATION_ABOVE_M:I = 0x1f4

.field private static final THUMB_POS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v7/widget/SwitchCompat;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/SwitchCompat;->SUPPORT_TOUCH_FEEDBACK:Z

    .line 113
    new-instance v0, Landroid/support/v7/widget/SwitchCompat$1;

    const-class v3, Ljava/lang/Float;

    const-string v4, "thumbPos"

    invoke-direct {v0, v3, v4}, Landroid/support/v7/widget/SwitchCompat$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->THUMB_POS:Landroid/util/Property;

    .line 200
    new-array v0, v2, [I

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 221
    sget v0, Landroid/support/v7/appcompat/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 128
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 130
    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 133
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 134
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 135
    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 136
    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 150
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 197
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 237
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 240
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v4, Landroid/text/TextPaint;->density:F

    .line 242
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat:[I

    invoke-static {p1, p2, v2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p2

    .line 244
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_thumb:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 245
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 246
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 248
    :cond_0
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_track:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    .line 250
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 252
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 256
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 259
    :cond_1
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOn:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 260
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOff:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 261
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_showText:I

    invoke-virtual {p2, p3, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 262
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 264
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 266
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchPadding:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 268
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_splitTrack:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 270
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTint:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 272
    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 273
    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 275
    :cond_2
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTintMode:I

    const/4 v2, -0x1

    .line 276
    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p3

    .line 275
    invoke-static {p3, v0}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    .line 277
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v4, p3, :cond_3

    .line 278
    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 279
    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 281
    :cond_3
    iget-boolean p3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez p3, :cond_4

    iget-boolean p3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz p3, :cond_5

    .line 282
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    .line 285
    :cond_5
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_trackTint:I

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 287
    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    .line 288
    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 290
    :cond_6
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_trackTintMode:I

    .line 291
    invoke-virtual {p2, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p3

    .line 290
    invoke-static {p3, v0}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p3, :cond_7

    .line 293
    iput-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 294
    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 296
    :cond_7
    iget-boolean p3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez p3, :cond_8

    iget-boolean p3, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz p3, :cond_9

    .line 297
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    .line 300
    :cond_9
    sget p3, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_a

    .line 303
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 306
    :cond_a
    invoke-virtual {p2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 308
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    .line 310
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V

    .line 314
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SwitchCompat;)F
    .locals 0

    .line 90
    iget p0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    return p0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 3

    .line 1064
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    if-eqz v0, :cond_0

    .line 1066
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1069
    :cond_0
    new-instance v0, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    .line 1070
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->setDuration(J)V

    .line 1071
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1072
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    sget-object v1, Landroid/support/v7/animation/SeslElasticInterpolator;->ELASTIC_50:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1073
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->setDuration(J)V

    .line 1075
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    new-instance v1, Landroid/support/v7/widget/SwitchCompat$2;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/SwitchCompat$2;-><init>(Landroid/support/v7/widget/SwitchCompat;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1091
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    .line 718
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    .line 719
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 721
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 725
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 731
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyTrackTint()V
    .locals 2

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v0, :cond_3

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 598
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 602
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 608
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .line 1095
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    const/4 v0, 0x0

    .line 1097
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1013
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 1014
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1015
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1016
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private static constrain(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .line 1102
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getThumbOffset()I
    .locals 2

    .line 1387
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1388
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 1390
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 1392
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbScrollRange()I
    .locals 4

    .line 1396
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1398
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1401
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1402
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 1404
    :cond_0
    sget-object v1, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 1407
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iget v0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hitThumb(FF)Z
    .locals 6

    .line 917
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 922
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    .line 924
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 925
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v2, v3

    .line 926
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    add-int/2addr v3, v0

    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    sub-int/2addr v3, v0

    .line 927
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v0, v3

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v0, v4

    .line 929
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    add-int/2addr v4, v5

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    int-to-float p1, v4

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .line 903
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 904
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 907
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 909
    invoke-static {v1, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 374
    :pswitch_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 370
    :pswitch_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 366
    :pswitch_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 378
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v0, 0x0

    .line 1025
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 1029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1030
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    if-eqz v1, :cond_7

    .line 1033
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1034
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 1043
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x44fa0000    # 2000.0f

    const/4 v6, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1044
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    goto :goto_2

    .line 1045
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43fa0000    # 500.0f

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_5

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1048
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v1

    move v2, v1

    goto :goto_2

    .line 1046
    :cond_5
    :goto_1
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    goto :goto_2

    :cond_6
    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    if-eq v2, v3, :cond_8

    .line 1056
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->playSoundEffect(I)V

    .line 1059
    :cond_8
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1060
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1200
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1201
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 1202
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 1203
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    .line 1204
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 1206
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1209
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1210
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_0

    .line 1212
    :cond_0
    sget-object v6, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 1216
    :goto_0
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 1217
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1220
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    if-eqz v6, :cond_4

    .line 1228
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_1

    .line 1229
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 1231
    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_2

    .line 1232
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_1

    :cond_2
    move v7, v2

    .line 1234
    :goto_1
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_3

    .line 1235
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    sub-int/2addr v3, v8

    .line 1237
    :cond_3
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_5

    .line 1238
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_2

    :cond_4
    move v7, v2

    :cond_5
    move v6, v4

    .line 1241
    :goto_2
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1245
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 1246
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1248
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    .line 1249
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 1253
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v3, v4, v2

    if-ge v0, v3, :cond_7

    .line 1254
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1258
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1260
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1262
    invoke-static {v0, v1, v2, v5, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1268
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 1447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1448
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1451
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 1455
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1456
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1425
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1427
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 1430
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1431
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1432
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1435
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1436
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1437
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 1441
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1357
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 1360
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1361
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1362
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1369
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 1372
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1373
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1374
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getShowText()Z
    .locals 1

    .line 816
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .line 757
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .line 470
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .line 445
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 785
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 766
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .line 493
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 685
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 533
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 563
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1467
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1469
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1473
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1474
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1478
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    .line 1479
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1416
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1417
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    sget-object v0, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1273
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1275
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1276
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1278
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1280
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1283
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 1284
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 1285
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 1286
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1288
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 1290
    iget-boolean v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 1291
    invoke-static {v4}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    .line 1292
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1293
    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 1294
    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v6

    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 1296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1297
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1298
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1299
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    .line 1302
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackOffDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 1303
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1305
    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/16 v7, 0xff

    if-le v6, v7, :cond_3

    const/16 v6, 0xff

    goto :goto_2

    :cond_3
    if-gez v6, :cond_4

    const/4 v6, 0x0

    :cond_4
    :goto_2
    sub-int/2addr v7, v6

    .line 1309
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1311
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1312
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 1315
    :cond_5
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1316
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1319
    :goto_3
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1320
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1324
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_7

    .line 1327
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1330
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    goto :goto_5

    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    :goto_5
    if-eqz v1, :cond_b

    .line 1332
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v6

    .line 1333
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_9

    .line 1334
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1336
    :cond_9
    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    iput-object v6, v5, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_a

    .line 1340
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1341
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    goto :goto_6

    .line 1343
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v5

    .line 1346
    :goto_6
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int/2addr v2, v3

    .line 1347
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v5

    int-to-float v2, v2

    .line 1348
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1349
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1352
    :cond_b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1485
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "android.widget.Switch"

    .line 1486
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1491
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    .line 1492
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1494
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$string;->sesl_switch_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1495
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->sesl_switch_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1501
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1502
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1503
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1504
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1506
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1507
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1144
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1148
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1149
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 1150
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 1151
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1156
    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p3

    .line 1157
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1158
    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    move p1, p2

    move p2, p4

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1163
    :goto_1
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1164
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p2

    .line 1165
    iget p4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    add-int/2addr p4, p3

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    goto :goto_2

    .line 1167
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int p4, p3, p1

    .line 1168
    iget p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    sub-int p3, p4, p3

    add-int/2addr p3, p2

    add-int/2addr p3, p1

    .line 1173
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x50

    if-eq p1, p2, :cond_3

    .line 1176
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result p1

    .line 1177
    iget p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    add-int/2addr p2, p1

    goto :goto_3

    .line 1187
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result p2

    sub-int p2, p1, p2

    .line 1188
    iget p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    sub-int p1, p2, p1

    goto :goto_3

    .line 1181
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 1183
    iget p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    add-int/2addr p2, p1

    .line 1192
    :goto_3
    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I

    .line 1193
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I

    .line 1194
    iput p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I

    .line 1195
    iput p4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 821
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    .line 826
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 827
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    .line 831
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;

    .line 834
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 836
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 837
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 838
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 845
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eqz v4, :cond_3

    .line 846
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 852
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I

    .line 855
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 856
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 857
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    .line 859
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 865
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 866
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 867
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 868
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v4

    .line 869
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 870
    iget v1, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 873
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_switch_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 874
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 875
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I

    .line 876
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I

    .line 878
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 880
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_6

    .line 882
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V

    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 888
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 890
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$string;->sesl_switch_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->sesl_switch_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 898
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 935
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 950
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 970
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 971
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v0

    .line 972
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float v1, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v4

    if-lez v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 981
    :goto_0
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    neg-float v1, v1

    .line 984
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    add-float/2addr v0, v1

    invoke-static {v0, v4, v3}, Landroid/support/v7/widget/SwitchCompat;->constrain(FFF)F

    move-result v0

    .line 985
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 986
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 987
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    :cond_3
    return v2

    .line 956
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 958
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_4

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    sub-float v4, v3, v4

    .line 959
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 960
    :cond_4
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 961
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 962
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 963
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    return v2

    .line 997
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    if-ne v0, v1, :cond_5

    .line 998
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V

    .line 1000
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    :cond_5
    const/4 v0, 0x0

    .line 1003
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 1004
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 939
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 941
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SwitchCompat;->hitThumb(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 942
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I

    .line 943
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F

    .line 944
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F

    .line 1009
    :cond_6
    :goto_1
    :pswitch_5
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public seslSetTrackStrokeColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1547
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1548
    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    .line 1549
    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 1550
    sget v1, Landroid/support/v7/appcompat/R$id;->sesl_switch_track_on:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x4

    .line 1551
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1122
    sget-boolean v0, Landroid/support/v7/widget/SwitchCompat;->SUPPORT_TOUCH_FEEDBACK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    .line 1124
    invoke-static {v0}, Landroid/support/v4/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->performHapticFeedback(I)Z

    .line 1126
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1130
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result p1

    .line 1132
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 1137
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1138
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    :goto_1
    return-void
.end method

.method public setShowText(Z)V
    .locals 1

    .line 805
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    if-eq v0, p1, :cond_0

    .line 806
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z

    .line 807
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .line 747
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z

    .line 748
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .line 457
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I

    .line 458
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .line 433
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I

    .line 434
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .line 324
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    .line 330
    sget p2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 332
    iput-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;

    .line 338
    :goto_0
    sget p2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, p2

    .line 340
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 342
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 347
    :cond_1
    sget p2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    .line 348
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {p1, v2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 350
    invoke-direct {p0, p2, v1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypefaceByIndex(II)V

    .line 352
    sget p2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 354
    new-instance p2, Landroid/support/v7/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 356
    iput-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;

    .line 359
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    .line 417
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 418
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 420
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 421
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    :cond_2
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 390
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 392
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 395
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 399
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 400
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 402
    :cond_4
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 403
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 404
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 794
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;

    .line 795
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 775
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;

    .line 776
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 623
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 626
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 628
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 630
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method setThumbPosition(F)V
    .locals 0

    .line 1111
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F

    .line 1112
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .line 642
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .line 481
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I

    .line 482
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 672
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 673
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z

    .line 675
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 700
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 701
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z

    .line 703
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 504
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 507
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 511
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .line 522
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 550
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 551
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z

    .line 553
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 577
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 578
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z

    .line 580
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1117
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1462
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
