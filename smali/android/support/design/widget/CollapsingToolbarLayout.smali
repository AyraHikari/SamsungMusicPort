.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;,
        Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258

.field private static final LAND_HEIGHT_PERCENT:F = 0.3f

.field protected static final SESL_CTL_TAG:Ljava/lang/String; = "Sesl_CTL"

.field static final SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field final mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private mCollapsingTitleEnabled:Z

.field private mCollapsingTitleLayout:Landroid/widget/LinearLayout;

.field private mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

.field private mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

.field private mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

.field private mCollapsingToolbarLayoutSubTitleEnabled:Z

.field private mCollapsingToolbarLayoutTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field mCurrentOffset:I

.field private mDefaultHeightDp:F

.field private mDrawCollapsingTitle:Z

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginEnd:I

.field private mExpandedMarginStart:I

.field private mExpandedMarginTop:I

.field private mExtendSubTitleAppearance:I

.field private mExtendTitleAppearance:I

.field private mHeightPercent:F

.field private mIsCollapsingToolbarTitleCustom:Z

.field private mIsCustomAccessibility:Z

.field mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimationDuration:J

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimVisibleHeightTrigger:I

.field private mScrimsAreShown:Z

.field private mStatsusBarHeight:I

.field mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mToolbarDirectChild:Landroid/view/View;

.field private mToolbarId:I

.field private mViewStubCompat:Landroid/support/v7/widget/ViewStubCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 178
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/support/design/widget/CollapsingToolbarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 190
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 139
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 150
    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    const/4 v2, 0x0

    .line 158
    iput-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mIsCustomAccessibility:Z

    .line 175
    iput v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatsusBarHeight:I

    const/4 v3, 0x0

    .line 176
    iput v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mHeightPercent:F

    .line 192
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 194
    sget-object v3, Landroid/support/design/R$styleable;->CollapsingToolbarLayout:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 199
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    .line 200
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    sget v5, Landroid/support/design/R$id;->collpasing_app_bar_title_layout:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 201
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 202
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    .line 203
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    sget p3, Landroid/support/design/R$id;->collpasing_app_bar_title_layout_parent:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 204
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 206
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 209
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_extendTitleEnabled:I

    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 212
    iget-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    iget-boolean p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-ne p2, p3, :cond_0

    .line 213
    iget-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-ne p2, v0, :cond_0

    .line 214
    iget-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 218
    :cond_0
    iget-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz p2, :cond_1

    .line 219
    new-instance p2, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {p2, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 220
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object p3, Landroid/support/design/widget/CollapsingToolbarLayout;->SINE_OUT_80_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget p3, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v4, 0x800053

    .line 222
    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 221
    invoke-virtual {p2, p3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 224
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget p3, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v4, 0x800013

    .line 225
    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 224
    invoke-virtual {p2, p3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 228
    iput-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 231
    :goto_0
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_extendTitleTextAppearance:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExtendTitleAppearance:I

    .line 233
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_extendSubTitleTextAppearance:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExtendSubTitleAppearance:I

    .line 237
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 238
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExtendTitleAppearance:I

    .line 242
    :cond_2
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_subtitle:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 244
    iget-boolean p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz p3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 245
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    goto :goto_1

    .line 247
    :cond_3
    iput-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 250
    :goto_1
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    if-eqz p3, :cond_4

    .line 251
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 252
    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, p3}, Landroid/support/design/widget/CollapsingToolbarLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    :cond_4
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_6

    .line 256
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {p3, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v5, 0x10

    .line 257
    iput v5, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 258
    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 259
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getStatusbarHeight()I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatsusBarHeight:I

    .line 260
    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatsusBarHeight:I

    if-lez v5, :cond_5

    .line 261
    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatsusBarHeight:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v2, v2, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 264
    :cond_5
    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayoutParent:Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    :cond_6
    iget-boolean p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz p3, :cond_7

    .line 268
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    .line 269
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    sget v5, Landroid/support/design/R$id;->collpasing_app_bar_extended_title:I

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 270
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 272
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 273
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExtendTitleAppearance:I

    invoke-virtual {p3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 274
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v4, Landroid/support/design/R$dimen;->sesl_extended_appbar_title_padding:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 275
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v4, p3, v2, p3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 278
    :cond_7
    iget-boolean p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    if-eqz p3, :cond_8

    .line 279
    invoke-virtual {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 282
    :cond_8
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDefaultHeightDP()V

    .line 283
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateTitleLayout()V

    .line 286
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    .line 287
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 289
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 290
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 293
    :cond_9
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 294
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 297
    :cond_a
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 298
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 301
    :cond_b
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 302
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 306
    :cond_c
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    iget-boolean p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz p2, :cond_d

    .line 310
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget p3, Landroid/support/design/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {p2, p3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 312
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget p3, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {p2, p3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 316
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 317
    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget p3, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    .line 318
    invoke-virtual {v3, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 317
    invoke-virtual {p2, p3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 323
    :cond_d
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 326
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 p3, 0x258

    invoke-virtual {v3, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    .line 330
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 331
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 333
    sget p2, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    .line 335
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p2, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 338
    sget p3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 339
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_e

    .line 340
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Landroid/support/design/R$layout;->sesl_action_mode_view_stub:I

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 341
    sget p1, Landroid/support/design/R$id;->action_mode_bar_stub:I

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/ViewStubCompat;

    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mViewStubCompat:Landroid/support/v7/widget/ViewStubCompat;

    .line 343
    :cond_e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 347
    new-instance p1, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {p1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)F
    .locals 0

    .line 117
    iget p0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDefaultHeightDp:F

    return p0
.end method

.method static synthetic access$002(Landroid/support/design/widget/CollapsingToolbarLayout;F)F
    .locals 0

    .line 117
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDefaultHeightDp:F

    return p1
.end method

.method static synthetic access$100(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$300(Landroid/support/design/widget/CollapsingToolbarLayout;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mIsCustomAccessibility:Z

    return p0
.end method

.method static synthetic access$400(Landroid/support/design/widget/CollapsingToolbarLayout;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    return p0
.end method

.method static synthetic access$500(Landroid/support/design/widget/CollapsingToolbarLayout;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    return p0
.end method

.method private animateScrim(I)V
    .locals 4

    .line 966
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 967
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 968
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    .line 969
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 970
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-le p1, v1, :cond_0

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 974
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$3;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 980
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 984
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 985
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private ensureToolbar()V
    .locals 6

    .line 573
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 579
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 581
    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 583
    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 584
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->findDirectChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    .line 589
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 593
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 594
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 595
    instance-of v5, v4, Landroid/support/v7/widget/Toolbar;

    if-eqz v5, :cond_2

    .line 596
    move-object v0, v4

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 600
    :cond_3
    :goto_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 603
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mViewStubCompat:Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v0, :cond_4

    .line 604
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mViewStubCompat:Landroid/support/v7/widget/ViewStubCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->bringToFront()V

    .line 605
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mViewStubCompat:Landroid/support/v7/widget/ViewStubCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->invalidate()V

    .line 611
    :cond_4
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 612
    iput-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    return-void
.end method

.method private findDirectChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_1

    .line 628
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 629
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 627
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 762
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 763
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 764
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 765
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 767
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method private getStatusbarHeight()I
    .locals 4

    .line 1530
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1533
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 2

    .line 771
    sget v0, Landroid/support/design/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Landroid/support/design/widget/ViewOffsetHelper;

    invoke-direct {v0, p0}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 774
    sget v1, Landroid/support/design/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isToolbarChild(Landroid/view/View;)Z
    .locals 3

    .line 616
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne p1, v0, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private updateDefaultHeightDP()V
    .locals 2

    .line 455
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 457
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getCollapsedHeight()F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDefaultHeightDp:F

    .line 458
    iget-boolean v1, v0, Landroid/support/design/widget/AppBarLayout;->mIsSetCollapsedHeight:Z

    if-nez v1, :cond_2

    .line 459
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDefaultHeightDp:F

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDefaultHeightDp:F

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_action_bar_default_height_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDefaultHeightDp:F

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDummyView()V
    .locals 3

    .line 636
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 639
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 640
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 643
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 645
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 647
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 648
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method private updateTitleLayout()V
    .locals 7

    .line 403
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 404
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->sesl_abl_height_proportion:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 405
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mHeightPercent:F

    .line 407
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_5

    .line 408
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExtendTitleAppearance:I

    sget-object v2, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 409
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "Sesl_CTL"

    const-string v1, "ExtendTitleAppearance value is null"

    .line 412
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_0
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    .line 418
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v5, v4, v2

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const-string v4, "Sesl_CTL"

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTitleLayout: context:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", orientation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " density:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,testSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "fontScale : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mCollapsingToolbarLayoutSubTitleEnabled :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-boolean v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 430
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    mul-float v1, v1, v2

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 432
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    .line 433
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/design/R$dimen;->sesl_action_bar_text_size_title_extend_with_subtitle:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 432
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 434
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 435
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroid/support/design/R$dimen;->sesl_action_bar_text_size_subtitle:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 434
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 438
    :goto_1
    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mHeightPercent:F

    const v2, 0x3e99999a    # 0.3f

    const/4 v4, 0x2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    .line 439
    iget-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 441
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 443
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 444
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2

    .line 447
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 448
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 450
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 360
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_4

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->getTitleIsCustom()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mIsCollapsingToolbarTitleCustom:Z

    .line 367
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mIsCollapsingToolbarTitleCustom:Z

    if-eqz v0, :cond_4

    .line 369
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_1

    .line 370
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 372
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_2

    .line 373
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 376
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 379
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1558
    instance-of p1, p1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 523
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 527
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 528
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 530
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 534
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 539
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v0, :cond_3

    .line 540
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_3

    .line 542
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 544
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 545
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 556
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->isToolbarChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 558
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 561
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1096
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 1098
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v0

    .line 1101
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1102
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1103
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1105
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1106
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1107
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1109
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v1, :cond_2

    .line 1110
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 1114
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .line 1563
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 1568
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1573
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .line 1231
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1330
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1060
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCustomAccessibility()Z
    .locals 1

    .line 1760
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mIsCustomAccessibility:Z

    return v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .line 1302
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    return v0

    .line 1304
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .line 1459
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .line 1438
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .line 1396
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .line 1417
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1358
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 1360
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 1361
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 3

    .line 1723
    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v0

    .line 1724
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1725
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    .line 1726
    invoke-virtual {v0}, Landroid/support/design/widget/ViewOffsetHelper;->getLayoutTop()I

    move-result v0

    sub-int/2addr v2, v0

    .line 1727
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iget p1, v1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, p1

    return v2
.end method

.method getScrimAlpha()I
    .locals 1

    .line 1000
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .line 1553
    iget-wide v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1500
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    .line 1502
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    return v0

    .line 1506
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1508
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 1511
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1516
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1170
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 926
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 808
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    .line 809
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isTitleEnabled()Z
    .locals 1

    .line 862
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 473
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 476
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 477
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    .line 479
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 481
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 482
    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 484
    :cond_0
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 487
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1733
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1736
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 1737
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_abl_height_proportion:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1738
    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mHeightPercent:F

    .line 1740
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDefaultHeightDP()V

    .line 1741
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateTitleLayout()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 494
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 495
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 496
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 499
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 674
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 676
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 678
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    .line 679
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 680
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 681
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 682
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 685
    invoke-static {v3, p1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    :cond_1
    iget-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 695
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    .line 698
    iget-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz p1, :cond_9

    .line 699
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 703
    :goto_2
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result p1

    .line 705
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v2, v3}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 706
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_5

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 708
    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v4

    goto :goto_4

    :cond_5
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 709
    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v4

    :goto_4
    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p1

    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 710
    invoke-virtual {v5}, Landroid/support/v7/widget/Toolbar;->getTitleMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 712
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v6

    goto :goto_5

    :cond_6
    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 713
    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v6

    :goto_5
    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, p1

    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 714
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitleMarginBottom()I

    move-result p1

    sub-int/2addr v6, p1

    .line 706
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 717
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v1, :cond_7

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    goto :goto_6

    :cond_7
    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    :goto_6
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    add-int/2addr v3, v4

    sub-int/2addr p4, p2

    if-eqz v1, :cond_8

    iget p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    goto :goto_7

    :cond_8
    iget p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    :goto_7
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    sub-int/2addr p5, p2

    invoke-virtual {p1, v2, v3, p4, p5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 723
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 729
    :cond_9
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result p1

    :goto_8
    if-ge v0, p1, :cond_a

    .line 730
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 734
    :cond_a
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_e

    .line 735
    iget-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 737
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 741
    :cond_b
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    if-ne p1, p0, :cond_c

    goto :goto_9

    .line 744
    :cond_c
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarDirectChild:Landroid/view/View;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    goto :goto_a

    .line 742
    :cond_d
    :goto_9
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    .line 747
    :goto_a
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMinimumHeight()I

    move-result p2

    if-eq p2, p1, :cond_e

    .line 748
    new-instance p2, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {p2, p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;I)V

    invoke-virtual {p0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->post(Ljava/lang/Runnable;)Z

    .line 758
    :cond_e
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 655
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 656
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 658
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 659
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-lez v0, :cond_1

    .line 664
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 663
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 665
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 566
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 567
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 568
    iget-object p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .line 505
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 511
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 513
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 518
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1

    .line 1218
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 1181
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1193
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1203
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1318
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1013
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 1014
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1017
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 1018
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 1019
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1020
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1021
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1023
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1036
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1048
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomAccessibility(Z)V
    .locals 0

    .line 1753
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mIsCustomAccessibility:Z

    return-void
.end method

.method public setCustomTitleView(Landroid/view/View;Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;)V
    .locals 2

    .line 385
    invoke-virtual {p2}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->getTitleIsCustom()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mIsCollapsingToolbarTitleCustom:Z

    .line 387
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mIsCollapsingToolbarTitleCustom:Z

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 392
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_1

    .line 393
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 396
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1260
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1

    .line 1287
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 1289
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleMargin(IIII)V
    .locals 0

    .line 1382
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 1383
    iput p2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 1384
    iput p3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 1385
    iput p4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 1386
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    .line 1470
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 1471
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    .line 1449
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginEnd:I

    .line 1450
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    .line 1407
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginStart:I

    .line 1408
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    .line 1428
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 1429
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 1246
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 1248
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1270
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1272
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1344
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1346
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_1

    .line 1347
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    .line 989
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 990
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 994
    :cond_0
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    .line 995
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1546
    iput-wide p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimationDuration:J

    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1486
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    if-eq v0, p1, :cond_0

    .line 1487
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimVisibleHeightTrigger:I

    .line 1489
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 941
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2

    .line 955
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    if-eq v0, p1, :cond_3

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    .line 957
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0xff

    .line 959
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 961
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1075
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 1076
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1079
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 1080
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 1081
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1082
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1084
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 1085
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1084
    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1086
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1087
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1088
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1090
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1147
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1159
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 876
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 888
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 889
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 890
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 891
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 892
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    sget v3, Landroid/support/design/R$id;->collpasing_app_bar_extended_sub_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 893
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 894
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 896
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 898
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 899
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 900
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mExtendSubTitleAppearance:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 902
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    :goto_0
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 905
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    .line 906
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/design/R$dimen;->sesl_action_bar_text_size_title_extend_with_subtitle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 905
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 909
    :cond_1
    iput-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutSubTitleEnabled:Z

    .line 910
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 911
    iget-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 912
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 913
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedSubTitle:Landroid/widget/TextView;

    .line 916
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 917
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateTitleLayout()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 789
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateTitleLayout()V

    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 825
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 826
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    goto :goto_0

    .line 828
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 829
    iput-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 830
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    goto :goto_0

    .line 831
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v1, :cond_2

    .line 832
    iput-boolean v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 833
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    goto :goto_0

    .line 835
    :cond_2
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    .line 836
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    :goto_0
    if-nez p1, :cond_3

    .line 840
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarLayoutTitleEnabled:Z

    if-nez v0, :cond_3

    .line 841
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 842
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingToolbarExtendedTitle:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_4

    .line 846
    iget-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz p1, :cond_4

    .line 847
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 848
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1125
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1128
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1129
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1131
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 1132
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1717
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1718
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1120
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

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
