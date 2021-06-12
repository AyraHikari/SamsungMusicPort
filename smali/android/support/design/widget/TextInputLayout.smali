.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/WithHint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;,
        Landroid/support/design/widget/TextInputLayout$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field final mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field mEditText:Landroid/widget/EditText;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHasPasswordToggleTintList:Z

.field private mHasPasswordToggleTintMode:Z

.field private mHasReconstructedEditTextBackground:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mIndicatorsAdded:I

.field private final mInputFrame:Landroid/widget/FrameLayout;

.field private mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPasswordToggleContentDesc:Ljava/lang/CharSequence;

.field private mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleEnabled:Z

.field private mPasswordToggleTintList:Landroid/content/res/ColorStateList;

.field private mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

.field private mPasswordToggledVisible:Z

.field private mRestoringSavedState:Z

.field private mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 191
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 193
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 197
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 199
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    .line 200
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 201
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 205
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const v3, 0x800033

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 207
    sget-object v2, Landroid/support/design/R$styleable;->TextInputLayout:[I

    sget v3, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    invoke-static {p1, p2, v2, p3, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    .line 209
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_hintEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    .line 210
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 211
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 214
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 215
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 216
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 219
    :cond_0
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, p3, :cond_1

    .line 222
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    .line 223
    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    .line 222
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 226
    :cond_1
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    .line 227
    sget p2, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 229
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_counterEnabled:I

    invoke-virtual {p1, v2, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 231
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterMaxLength:I

    .line 232
    invoke-virtual {p1, v3, p3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v3

    .line 231
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 233
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {p1, v3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    .line 235
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    invoke-virtual {p1, v3, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowTextAppearance:I

    .line 238
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {p1, v3, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    .line 240
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    .line 243
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintList:Z

    .line 245
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    .line 248
    :cond_2
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintMode:Z

    .line 250
    sget v1, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    .line 251
    invoke-virtual {p1, v1, p3}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x0

    .line 250
    invoke-static {p3, v1}, Landroid/support/design/widget/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 254
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 256
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 257
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 258
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 260
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_4

    .line 263
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 267
    :cond_4
    new-instance p1, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;

    invoke-direct {p1, p0}, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Landroid/support/design/widget/TextInputLayout;->mRestoringSavedState:Z

    return p0
.end method

.method static synthetic access$100(Landroid/support/design/widget/TextInputLayout;Z)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    return-void
.end method

.method private addIndicator(Landroid/widget/TextView;I)V
    .locals 4

    .line 578
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    .line 580
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 581
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 585
    new-instance v0, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    .line 586
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 587
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->adjustIndicatorPadding()V

    .line 593
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 595
    iget p1, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    return-void
.end method

.method private adjustIndicatorPadding()V
    .locals 5

    .line 600
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 601
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    .line 600
    invoke-static {v0, v1, v4, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 2

    .line 1373
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3

    .line 1375
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1377
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintList:Z

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1380
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1384
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1385
    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    .line 1386
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4

    .line 1537
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private collapseHint(Z)V
    .locals 1

    .line 1416
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 1419
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 1420
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1422
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x0

    .line 1424
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    return-void
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 3

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 938
    :cond_1
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v1, :cond_3

    .line 943
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 945
    instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v2, :cond_2

    .line 948
    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    .line 950
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 949
    invoke-static {v0, v2}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    .line 953
    :cond_2
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v0, :cond_3

    .line 958
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 959
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHasReconstructedEditTextBackground:Z

    :cond_3
    return-void
.end method

.method private expandHint(Z)V
    .locals 1

    .line 1460
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1463
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1

    .line 1464
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    .line 1466
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x1

    .line 1468
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    return-void
.end method

.method private hasPasswordTransformation()Z
    .locals 1

    .line 1364
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1365
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private passwordVisibilityToggleRequested(Z)V
    .locals 3

    .line 1341
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_2

    .line 1343
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1345
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1346
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x1

    .line 1347
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    .line 1350
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    .line 1353
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    if-eqz p1, :cond_1

    .line 1355
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {p1}, Landroid/support/design/widget/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 1359
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 855
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 856
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 857
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 858
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 859
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeIndicator(Landroid/widget/TextView;)V
    .locals 1

    .line 605
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 607
    iget p1, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorsAdded:I

    if-nez p1, :cond_0

    .line 608
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2

    .line 339
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_6

    .line 343
    instance-of v0, p1, Landroid/support/design/widget/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 350
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result p1

    if-nez p1, :cond_1

    .line 355
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 357
    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 359
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    .line 360
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    and-int/lit8 v1, p1, -0x71

    or-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 362
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 365
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v0, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 382
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    .line 383
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 387
    :cond_2
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 389
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    .line 390
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 392
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 395
    :cond_3
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 396
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 399
    :cond_4
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 400
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->adjustIndicatorPadding()V

    .line 403
    :cond_5
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    return-void

    .line 340
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "We already have an EditText, can only have one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setError(Ljava/lang/CharSequence;Z)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 712
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mError:Ljava/lang/CharSequence;

    .line 714
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 720
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 723
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 726
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 728
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 729
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 733
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    .line 735
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 737
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 738
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 739
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 740
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    .line 741
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 746
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 749
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 752
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    .line 754
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 755
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 756
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 757
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;Ljava/lang/CharSequence;)V

    .line 758
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 764
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 766
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    :cond_6
    :goto_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 773
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .line 490
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 491
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 1

    .line 1369
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateEditTextBackground()V
    .locals 3

    .line 894
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 903
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 905
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 906
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 909
    :cond_2
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 911
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 913
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 912
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 911
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 914
    :cond_3
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 916
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 918
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 917
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 916
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 922
    :cond_4
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 923
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    :goto_0
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    .line 412
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 415
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 419
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 420
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 421
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 426
    :goto_0
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_2

    .line 427
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 428
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method private updatePasswordToggleView()V
    .locals 7

    .line 1096
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 1101
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->shouldShowPasswordIcon()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    .line 1102
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-nez v0, :cond_1

    .line 1103
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Landroid/support/design/R$layout;->sesl_text_input_password_icon:I

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    .line 1104
    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CheckableImageButton;

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1105
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1107
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1109
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    new-instance v5, Landroid/support/design/widget/TextInputLayout$4;

    invoke-direct {v5, p0}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1117
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1121
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1124
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v5, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1129
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 1130
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1140
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1142
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v4, v4}, Landroid/support/design/widget/CheckableImageButton;->measure(II)V

    .line 1143
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getMeasuredWidth()I

    move-result v0

    .line 1145
    :cond_4
    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1149
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1151
    aget-object v5, v0, v3

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_5

    .line 1152
    aget-object v3, v0, v3

    iput-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1154
    :cond_5
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-static {v3, v4, v2, v5, v0}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1158
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1159
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1160
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    .line 1158
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/design/widget/CheckableImageButton;->setPadding(IIII)V

    goto :goto_0

    .line 1162
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 1163
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1166
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 1169
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1170
    aget-object v3, v0, v3

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v3, v5, :cond_8

    .line 1171
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-static {v3, v4, v2, v5, v0}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1173
    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 272
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 275
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 277
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object p2, p0, Landroid/support/design/widget/TextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 284
    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1473
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 1477
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1478
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/widget/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1479
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1480
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$5;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1487
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1488
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 3

    .line 321
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 329
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 331
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 334
    throw p1

    .line 322
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1039
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mRestoringSavedState:Z

    .line 1040
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    .line 1041
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mRestoringSavedState:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1082
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1084
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1429
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1436
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mInDrawableStateChanged:Z

    .line 1438
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1440
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 1444
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1446
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1448
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_2

    .line 1449
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 1453
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    .line 1456
    :cond_3
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->mInDrawableStateChanged:Z

    return-void
.end method

.method public getCounterMaxLength()I
    .locals 1

    .line 870
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 472
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1053
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mError:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 504
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1268
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1256
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isCounterEnabled()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 1

    .line 1065
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    return v0
.end method

.method public isHintEnabled()Z
    .locals 1

    .line 558
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    return v0
.end method

.method final isHintExpanded()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1493
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .locals 1

    .line 1277
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1393
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1395
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1396
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 1397
    iget-object p2, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {p0, p2, p1}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1399
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p4

    add-int/2addr p2, p4

    .line 1400
    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 1402
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1403
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 1404
    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr p1, v2

    .line 1402
    invoke-virtual {v0, p2, v1, p4, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1408
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p5, p3

    .line 1409
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 1408
    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1411
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1091
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 1092
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1024
    instance-of v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 1025
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1028
    :cond_0
    check-cast p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    .line 1029
    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1030
    iget-object v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1031
    iget-boolean p1, p1, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1032
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    .line 1034
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1013
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1014
    new-instance v1, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1015
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1018
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    iput-boolean v0, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    return-object v1
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    .line 782
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_2

    .line 784
    new-instance v0, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 785
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    sget v1, Landroid/support/design/R$id;->textinput_counter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 786
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 789
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 791
    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    invoke-static {v0, v1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    sget v1, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {v0, v1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 797
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$color;->sesl_error_color:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 800
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 801
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 802
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_1

    .line 804
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_1

    .line 807
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    .line 808
    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 810
    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .line 833
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    .line 835
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 837
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    .line 839
    :goto_0
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    if-eqz p1, :cond_2

    .line 840
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 850
    invoke-static {p0, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 851
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 707
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 708
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 707
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    .line 621
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_5

    .line 622
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 627
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 628
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget v2, Landroid/support/design/R$id;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 629
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    const/4 v1, 0x1

    .line 634
    :try_start_0
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    invoke-static {v2, v3}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 636
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 637
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, -0xff01

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 651
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget v3, Landroid/support/v7/appcompat/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {v2, v3}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 653
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$color;->sesl_error_color:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 659
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/design/widget/TextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 661
    :cond_4
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 662
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 663
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    .line 664
    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 666
    :goto_2
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    :cond_5
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 677
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    .line 678
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 483
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 p1, 0x800

    .line 485
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .line 1077
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    .line 520
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    .line 521
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    .line 523
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    .line 524
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mHintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 525
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 528
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 531
    :cond_0
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 533
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 536
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 539
    :cond_2
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 544
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    .line 545
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 567
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 568
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 570
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 571
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 573
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1227
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1226
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1241
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    .line 1242
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1192
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1191
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1208
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1209
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 1

    .line 1291
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1292
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleEnabled:Z

    if-nez p1, :cond_0

    .line 1294
    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 1297
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    const/4 p1, 0x0

    .line 1301
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggledVisible:Z

    .line 1303
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1320
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 1321
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintList:Z

    .line 1322
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1335
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 1336
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mHasPasswordToggleTintMode:Z

    .line 1337
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 297
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 299
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    .line 301
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 302
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method

.method updateCounter(I)V
    .locals 7

    .line 874
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 875
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 876
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    goto :goto_2

    .line 879
    :cond_0
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 880
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eq v0, v1, :cond_3

    .line 881
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowTextAppearance:I

    goto :goto_1

    :cond_2
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    :goto_1
    invoke-static {v1, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 884
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->sesl_character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 885
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 884
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    :goto_2
    iget-object p1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eq v0, p1, :cond_4

    .line 888
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 889
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    :cond_4
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    return-void
.end method

.method updateLabelState(ZZ)V
    .locals 6

    .line 437
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    .line 438
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 439
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v3

    const v4, 0x101009c

    invoke-static {v3, v4}, Landroid/support/design/widget/TextInputLayout;->arrayContains([II)Z

    move-result v3

    .line 440
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 442
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    .line 443
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 446
    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 447
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 448
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 450
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 451
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_1
    if-nez v1, :cond_7

    .line 454
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v3, :cond_7

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 461
    iget-boolean p2, p0, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    if-nez p2, :cond_9

    .line 462
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_3

    :cond_7
    :goto_2
    if-nez p2, :cond_8

    .line 456
    iget-boolean p2, p0, Landroid/support/design/widget/TextInputLayout;->mHintExpanded:Z

    if-eqz p2, :cond_9

    .line 457
    :cond_8
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->collapseHint(Z)V

    :cond_9
    :goto_3
    return-void
.end method
