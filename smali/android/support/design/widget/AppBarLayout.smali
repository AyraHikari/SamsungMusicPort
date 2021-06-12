.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I = 0x0

.field protected static final SESl_APP_BAR_LAYOUT_LOG_TAG:Ljava/lang/String; = "Sesl_AppBarLayout"

.field static final SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static mAppBarHeight:F


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBottomPadding:I

.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mCurrentOrientation:I

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mHeightCustom:F

.field private mHeightPercent:F

.field private mIsCollapsed:Z

.field public mIsSetCollapsedHeight:Z

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private mTmpStatesArray:[I

.field private mTotalScrollRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 131
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/support/design/widget/AppBarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 152
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 153
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 165
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mIsCollapsed:Z

    const/4 v1, 0x0

    .line 170
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mHeightCustom:F

    .line 171
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->mHeightPercent:F

    .line 175
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    .line 178
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mIsSetCollapsedHeight:Z

    const/4 v1, 0x1

    .line 187
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 189
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 199
    sget v2, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, v0, v2}, Landroid/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 203
    :cond_0
    sget-object v2, Landroid/support/design/R$styleable;->AppBarLayout:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-virtual {p1, p2, v2, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 206
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 207
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object p2, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 210
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object p2, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 213
    iput-object p2, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->isLightTheme()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 215
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Landroid/support/design/R$color;->sesl_action_bar_background_color_light:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Landroid/support/design/R$color;->sesl_action_bar_background_color_dark:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setBackgroundColor(I)V

    .line 221
    :goto_0
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 222
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 223
    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 226
    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_5

    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 227
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    .line 228
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 227
    invoke-static {p0, p2}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 232
    :cond_5
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_sesl_layout_heightPercent:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const v2, 0x3ecb1c43    # 0.3967f

    if-eqz p2, :cond_6

    .line 233
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_sesl_layout_heightPercent:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/design/widget/AppBarLayout;->mHeightCustom:F

    goto :goto_1

    .line 235
    :cond_6
    iput v2, p0, Landroid/support/design/widget/AppBarLayout;->mHeightCustom:F

    .line 237
    :goto_1
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 238
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->sesl_abl_height_proportion:I

    invoke-virtual {v2, v3, p2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 239
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroid/support/design/widget/AppBarLayout;->mHeightPercent:F

    .line 242
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_paddingBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 243
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_paddingBottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    .line 244
    iget p2, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    invoke-virtual {p0, v0, v0, v0, p2}, Landroid/support/design/widget/AppBarLayout;->setPadding(IIII)V

    goto :goto_2

    .line 246
    :cond_7
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    .line 249
    :goto_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_9

    .line 252
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 253
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 256
    :cond_8
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 257
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 261
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 263
    iget p1, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    if-lez p1, :cond_a

    .line 264
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/design/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sput p1, Landroid/support/design/widget/AppBarLayout;->mAppBarHeight:F

    goto :goto_3

    .line 266
    :cond_a
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/design/R$dimen;->sesl_action_bar_default_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sput p1, Landroid/support/design/widget/AppBarLayout;->mAppBarHeight:F

    .line 269
    :goto_3
    new-instance p1, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {p1, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 279
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->mCurrentOrientation:I

    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    .line 118
    sget v0, Landroid/support/design/widget/AppBarLayout;->mAppBarHeight:F

    return v0
.end method

.method static synthetic access$102(Landroid/support/design/widget/AppBarLayout;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mIsCollapsed:Z

    return p1
.end method

.method private findActivityOfContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    move-object v1, p1

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 377
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 378
    move-object p1, v1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    .line 380
    :cond_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getWindowHeight()I
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 442
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private invalidateScrollRanges()V
    .locals 1

    const/4 v0, -0x1

    .line 477
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 478
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 479
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    return-void
.end method

.method private isLightTheme()Z
    .locals 4

    .line 1975
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1976
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1977
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private setCollapsibleState(Z)Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eq v0, p1, :cond_0

    .line 744
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    .line 745
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setExpanded(ZZZ)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    .line 524
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 525
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 528
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    return-void
.end method

.method private updateCollapsible()V
    .locals 4

    .line 466
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 467
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setCollapsibleState(Z)Z

    return-void
.end method

.method private updateInternalHeight()V
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 411
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->getWindowHeight()I

    move-result v0

    int-to-float v1, v0

    .line 412
    iget v2, p0, Landroid/support/design/widget/AppBarLayout;->mHeightPercent:F

    mul-float v1, v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 415
    sget v1, Landroid/support/design/widget/AppBarLayout;->mAppBarHeight:F

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/design/widget/AppBarLayout;->findActivityOfContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Sesl_AppBarLayout"

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInternalHeight: context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", orientation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " density:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,mHeightPercent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/design/widget/AppBarLayout;->mHeightPercent:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " windowHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " activity:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :try_start_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    const-string v3, "Sesl_AppBarLayout"

    .line 429
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    float-to-int v1, v1

    .line 433
    iput v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const-string v1, "Sesl_AppBarLayout"

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInternalHeight: LayoutParams :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,lp.height :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 352
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 355
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 533
    instance-of p1, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    return p1
.end method

.method dispatchOffsetUpdates(I)V
    .locals 3

    .line 688
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 689
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 690
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v2, :cond_0

    .line 692
    invoke-interface {v2, p0, p1}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 3

    .line 538
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 2

    .line 543
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .locals 2

    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 550
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 551
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 553
    :cond_1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getCollapsedHeight()F
    .locals 1

    .line 291
    sget v0, Landroid/support/design/widget/AppBarLayout;->mAppBarHeight:F

    return v0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .line 612
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 614
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    return v0

    .line 618
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_5

    .line 619
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 620
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 621
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 622
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 626
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v2, v7

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_1

    .line 630
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_2

    .line 633
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_1

    .line 636
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 644
    :cond_5
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    return v0
.end method

.method getDownNestedScrollRange()I
    .locals 9

    .line 651
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 653
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    return v0

    .line 657
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 658
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 659
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 660
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 661
    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 663
    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    add-int/2addr v3, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 673
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    return v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 699
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    .line 700
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 707
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 709
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 716
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getPendingAction()I
    .locals 1

    .line 791
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 800
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 566
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 567
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    return v0

    .line 571
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 572
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 573
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 574
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 575
    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    .line 579
    iget v8, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    .line 585
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    .line 605
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method hasChildWithInterpolator()Z
    .locals 1

    .line 557
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .locals 1

    .line 598
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCollapsed()Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mIsCollapsed:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 298
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 299
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 308
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 311
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$color;->sesl_action_bar_background_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$color;->sesl_action_bar_background_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setBackgroundColor(I)V

    .line 319
    :goto_0
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 320
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/design/R$dimen;->sesl_extended_appbar_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    .line 321
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/design/widget/AppBarLayout;->setPadding(IIII)V

    .line 324
    :cond_4
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 325
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->sesl_abl_height_proportion:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 326
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mHeightPercent:F

    .line 327
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mHeightCustom:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    const-string v0, "Sesl_AppBarLayout"

    const-string v2, "onConfigurationChanged"

    .line 328
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->updateInternalHeight()V

    .line 332
    :cond_5
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    if-nez v0, :cond_7

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mCurrentOrientation:I

    if-ne v0, v4, :cond_6

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    goto :goto_1

    .line 336
    :cond_6
    invoke-direct {p0, v4, v1, v4}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    goto :goto_2

    .line 334
    :cond_7
    :goto_1
    invoke-direct {p0, v1, v1, v4}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 339
    :goto_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->mCurrentOrientation:I

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 721
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 725
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 727
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 728
    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 730
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_1

    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    goto :goto_0

    :cond_1
    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 731
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/support/design/R$attr;->state_collapsed:I

    goto :goto_1

    :cond_2
    sget v2, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int v2, v2

    :goto_1
    aput v2, v0, v1

    .line 734
    invoke-static {p1, v0}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 448
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 449
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    const/4 p1, 0x0

    .line 450
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 451
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 452
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 453
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 454
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 457
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 461
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->updateCollapsible()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 392
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mIsSetCollapsedHeight:Z

    if-nez v0, :cond_1

    .line 393
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mBottomPadding:I

    if-lez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Landroid/support/design/widget/AppBarLayout;->mAppBarHeight:F

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Landroid/support/design/widget/AppBarLayout;->mAppBarHeight:F

    .line 400
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mHeightCustom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 401
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->updateInternalHeight()V

    .line 404
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 405
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .line 811
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 817
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 818
    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 819
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    :cond_1
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 366
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    const/4 v0, 0x0

    .line 795
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    return-void
.end method

.method public setCollapsedHeight(F)V
    .locals 3

    const-string v0, "Sesl_AppBarLayout"

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCollapsedHeight: height :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mIsSetCollapsedHeight:Z

    .line 287
    sput p1, Landroid/support/design/widget/AppBarLayout;->mAppBarHeight:F

    return-void
.end method

.method setCollapsedState(Z)Z
    .locals 1

    .line 757
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    if-eq v0, p1, :cond_0

    .line 758
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    .line 759
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 504
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 520
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 488
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 776
    invoke-static {p0, p1}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
