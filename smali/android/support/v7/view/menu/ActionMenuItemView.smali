.class public Landroid/support/v7/view/menu/ActionMenuItemView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;,
        Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mDefaultTextSize:F

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsChangedRelativePadding:Z

.field private mIsLastItem:Z

.field private mIsLightTheme:Z

.field mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mNavigationBarHeight:I

.field mPopupCallback:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

.field private mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    .line 77
    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLastItem:Z

    .line 78
    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLightTheme:Z

    .line 80
    iput v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mNavigationBarHeight:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 94
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 96
    sget p3, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 98
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42000000    # 32.0f

    mul-float p2, p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 101
    iput p2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 103
    invoke-virtual {p0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p2, -0x1

    .line 106
    iput p2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 107
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 111
    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_actionMenuTextAppearance:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 115
    sget p2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p2

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 119
    iget p1, p2, Landroid/util/TypedValue;->data:I

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p1

    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    .line 124
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    .line 125
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItemView;->seslSetButtonShapeEnabled(Z)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance p1, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/appcompat/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    .line 131
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->isLightTheme()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLightTheme:Z

    return-void
.end method

.method private isLightTheme()Z
    .locals 4

    .line 538
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 539
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 540
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private shouldAllowTextWithIcon()Z
    .locals 5

    .line 158
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 159
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 160
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x1e0

    if-ge v1, v3, :cond_2

    const/16 v4, 0x280

    if-lt v1, v4, :cond_0

    if-ge v2, v3, :cond_2

    .line 162
    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateTextButtonVisibility()V
    .locals 6

    .line 253
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 254
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 255
    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 257
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    .line 259
    iget-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLightTheme:Z

    if-eqz v3, :cond_3

    .line 260
    sget v3, Landroid/support/v7/appcompat/R$drawable;->sesl_action_bar_item_text_background:I

    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setBackgroundResource(I)V

    goto :goto_3

    .line 262
    :cond_3
    sget v3, Landroid/support/v7/appcompat/R$drawable;->sesl_action_bar_item_text_background_dark:I

    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setBackgroundResource(I)V

    .line 267
    :cond_4
    :goto_3
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_5

    move-object v3, v2

    goto :goto_4

    .line 271
    :cond_5
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_4
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 273
    :cond_6
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 276
    :goto_5
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 277
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_7

    move-object v3, v2

    goto :goto_6

    .line 279
    :cond_7
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_6
    invoke-static {p0, v3}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 281
    :cond_8
    invoke-static {p0, v3}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 285
    :goto_7
    iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3f99999a    # 1.2f

    cmpl-float v5, v3, v4

    if-lez v5, :cond_9

    const v3, 0x3f99999a    # 1.2f

    .line 291
    :cond_9
    iget v4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    mul-float v4, v4, v3

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/view/menu/ActionMenuItemView;->setTextSize(IF)V

    :cond_a
    if-eqz v0, :cond_b

    .line 293
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :cond_b
    invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 361
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .line 327
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 0

    .line 189
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 191
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setId(I)V

    .line 195
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 196
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 197
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    if-nez p1, :cond_1

    .line 199
    new-instance p1, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {p1, p0}, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    :cond_1
    return-void
.end method

.method public needsDividerAfter()Z
    .locals 1

    .line 386
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 215
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-interface {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 139
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public onHoverChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 392
    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipForceActionBarPosX(Z)V

    .line 393
    invoke-static {v0}, Landroid/support/v7/widget/TooltipCompat;->setTooltipForceBelow(Z)V

    .line 394
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onHoverChanged(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 354
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 356
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v1, :cond_0

    .line 418
    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v2

    .line 419
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    .line 418
    invoke-super {p0, v1, v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    .line 423
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz v1, :cond_3

    .line 424
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v1

    .line 425
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v2

    .line 426
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 430
    :cond_1
    iget-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLastItem:Z

    if-eqz v3, :cond_2

    .line 431
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 434
    :cond_2
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$drawable;->sesl_action_icon_button_show_button_background:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    .line 438
    :goto_0
    iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v3}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    .line 439
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPadding(IIII)V

    .line 443
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 445
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 446
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 447
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_4

    .line 448
    iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_4
    iget p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    :goto_1
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_5

    .line 451
    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v1, :cond_5

    if-ge v2, p1, :cond_5

    .line 453
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    :cond_5
    if-nez v0, :cond_6

    .line 457
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    .line 460
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result p1

    .line 461
    iget-object p2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    .line 463
    iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    if-nez v0, :cond_6

    sub-int/2addr p1, p2

    .line 464
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v1

    invoke-super {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 367
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 368
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    const/4 p1, 0x0

    .line 504
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;

    .line 207
    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 210
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performLongClick()Z
    .locals 2

    .line 399
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 400
    invoke-static {v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipNull(Z)V

    return v1

    .line 403
    :cond_0
    invoke-static {v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipForceActionBarPosX(Z)V

    .line 404
    invoke-static {v1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipForceBelow(Z)V

    .line 405
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSBBHelper:Landroid/support/v7/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/SeslShowButtonBackgroundHelper;->setBackgroundOff(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1

    .line 244
    iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 245
    iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 246
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->actionFormatChanged()V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3

    .line 517
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setFrame(IIII)Z

    move-result p1

    .line 519
    iget-boolean p2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    if-nez p2, :cond_0

    return p1

    .line 523
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 524
    iget-object p3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 525
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWidth()I

    move-result p3

    .line 526
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getHeight()I

    move-result v0

    .line 527
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 528
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    .line 529
    invoke-virtual {p2, v1, p4, p3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 531
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getHeight()I

    move-result v0

    invoke-virtual {p2, p4, p4, p3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_2
    :goto_0
    return p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 299
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 302
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 303
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v2, :cond_0

    .line 304
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 305
    iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 308
    :cond_0
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v1, v2, :cond_1

    .line 309
    iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 310
    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    :cond_1
    const/4 v2, 0x0

    .line 313
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 317
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 318
    invoke-virtual {p0, v1, v1, p1, v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 323
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public setIsLastItem(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 336
    iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsLastItem:Z

    return-void
.end method

.method public setItemInvoker(Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    .line 221
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 178
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .line 171
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0

    .line 225
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 346
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 348
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 349
    invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
