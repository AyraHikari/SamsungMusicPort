.class public Landroid/support/v7/widget/SeslCheckedTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslCheckedTextView$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkGravity:I

.field private mCheckMarkResource:I

.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mDrawablePadding:I

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 72
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10103c8

    .line 81
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/SeslCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 61
    iput-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 63
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    const v1, 0x800003

    .line 67
    iput v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    .line 91
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 94
    sget p3, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMark:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/SeslCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_0
    sget p3, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMarkTintMode:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    .line 100
    sget p3, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMarkTintMode:I

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iget-object v2, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v2}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 102
    iput-boolean p4, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    .line 105
    :cond_1
    sget p3, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMarkTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 106
    sget p3, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checkMarkTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 107
    iput-boolean p4, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 110
    :cond_2
    sget p3, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_checkMarkGravity:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    .line 112
    sget p3, Landroid/support/v7/appcompat/R$styleable;->CheckedTextView_android_checked:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 113
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Landroid/support/v7/appcompat/R$dimen;->sesl_checked_text_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mDrawablePadding:I

    .line 117
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    return-void
.end method

.method private applyCheckMarkTint()V
    .locals 2

    .line 281
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_3

    .line 282
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 288
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 294
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .locals 2

    .line 388
    iget v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkGravity:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setBasePadding(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getPaddingRight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    :goto_0
    return-void
.end method

.method private setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    if-eqz p1, :cond_3

    .line 194
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 195
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 196
    sget-object v0, Landroid/support/v7/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 199
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->setMinHeight(I)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    .line 202
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 204
    :cond_3
    iput v2, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    .line 207
    :goto_2
    iput-object p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    iput p2, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkResource:I

    .line 210
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    .line 211
    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->resolvePadding(Landroid/view/View;)V

    .line 212
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslCheckedTextView;->setBasePadding(Z)V

    return-void
.end method

.method private updatePadding()V
    .locals 5

    .line 362
    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->resetPaddingToInitialValues(Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mDrawablePadding:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    .line 365
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 366
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 367
    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->setField_mPaddingLeft(Landroid/view/View;I)V

    goto :goto_3

    .line 369
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    invoke-static {p0}, Landroid/support/v4/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v4

    if-eq v4, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    .line 370
    invoke-static {p0, v0}, Landroid/support/v4/view/SeslViewReflector;->setField_mPaddingRight(Landroid/view/View;I)V

    .line 373
    :goto_3
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    if-eqz v0, :cond_4

    .line 374
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->requestLayout()V

    .line 375
    iput-boolean v3, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mNeedRequestlayout:Z

    :cond_4
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 463
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 452
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 472
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 277
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 350
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslCheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 355
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/widget/SeslTextViewReflector;->getField_mSingleLine(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/support/v7/widget/SeslCheckedTextView;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 130
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 311
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 313
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 443
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 444
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Landroid/support/v7/widget/SeslCheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 395
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 397
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 399
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 400
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    const/16 v4, 0x50

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getHeight()I

    move-result v1

    sub-int v3, v1, v2

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v3, v1, 0x2

    .line 413
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isCheckMarkAtStart()Z

    move-result v1

    .line 414
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getWidth()I

    move-result v4

    add-int/2addr v2, v3

    if-eqz v1, :cond_2

    .line 420
    iget v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    .line 421
    iget v4, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    add-int/2addr v4, v1

    goto :goto_1

    .line 423
    :cond_2
    iget v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mBasePadding:I

    sub-int/2addr v4, v1

    .line 424
    iget v1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkWidth:I

    sub-int v1, v4, v1

    .line 426
    :goto_1
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 427
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v5, v3, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    .line 429
    :cond_3
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 432
    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 436
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getScrollX()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getScrollX()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 542
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 543
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 549
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 550
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 551
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 532
    check-cast p1, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;

    .line 534
    invoke-virtual {p1}, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 535
    iget-boolean p1, p1, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;->checked:Z

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslCheckedTextView;->setChecked(Z)V

    .line 536
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 339
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 340
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->updatePadding()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 522
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 524
    new-instance v1, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 526
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/widget/SeslCheckedTextView$SavedState;->checked:Z

    return-object v1
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 162
    iget v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkResource:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 167
    :goto_0
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslCheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->setCheckMarkDrawableInternal(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    iput-object p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTint:Z

    .line 233
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 260
    iput-object p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mHasCheckMarkTintMode:Z

    .line 263
    invoke-direct {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->applyCheckMarkTint()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 142
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    .line 143
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCheckedTextView;->refreshDrawableState()V

    const/4 p1, 0x0

    .line 144
    invoke-static {p0, p1}, Landroid/support/v4/view/SeslViewReflector;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 302
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslCheckedTextView;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 320
    iget-object v0, p0, Landroid/support/v7/widget/SeslCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
