.class public Landroid/support/design/internal/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultMargin:I

.field private mHasIcon:Z

.field private mIcon:Landroid/widget/ImageView;

.field private mIconTint:Landroid/content/res/ColorStateList;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mItemPosition:I

.field private mLargeLabel:Landroid/widget/TextView;

.field private mLargeLabelAppearance:I

.field private mScaleDownFactor:F

.field private mScaleUpFactor:F

.field private mShiftAmount:I

.field private mShiftingMode:Z

.field private mSmallLabel:Landroid/widget/TextView;

.field private mSmallLabelAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0, p1, v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 4

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    .line 105
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 109
    iput-boolean p4, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    .line 110
    sget p4, Landroid/support/design/R$dimen;->sesl_bottom_navigation_margin:I

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    .line 112
    iget-boolean p4, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    if-eqz p4, :cond_0

    .line 113
    sget p4, Landroid/support/design/R$dimen;->sesl_bottom_navigation_text_size:I

    .line 114
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 115
    sget v2, Landroid/support/design/R$dimen;->sesl_bottom_navigation_active_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v2, p4, v1

    .line 117
    iput v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftAmount:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v1, v2

    int-to-float p4, p4

    div-float/2addr v3, p4

    .line 118
    iput v3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    mul-float p4, p4, v2

    div-float/2addr p4, v1

    .line 119
    iput p4, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    .line 122
    :cond_0
    iget-boolean p4, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    if-eqz p4, :cond_1

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v1, Landroid/support/design/R$layout;->sesl_bottom_navigation_item:I

    invoke-virtual {p4, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    sget-object p4, Landroid/support/design/R$styleable;->BottomNavigationView:[I

    sget v0, Landroid/support/design/R$style;->Widget_Design_BottomNavigationView:I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v1, Landroid/support/design/R$layout;->sesl_bottom_navigation_item_text:I

    invoke-virtual {p4, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 128
    sget-object p4, Landroid/support/design/R$styleable;->BottomNavigationView:[I

    sget v0, Landroid/support/design/R$style;->Widget_Design_BottomNavigationView_Text:I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 132
    :goto_0
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_bottomTextAppearance:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabelAppearance:I

    .line 134
    sget p3, Landroid/support/design/R$styleable;->BottomNavigationView_bottomTextAppearance:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabelAppearance:I

    .line 136
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    sget p2, Landroid/support/design/R$id;->icon:I

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 139
    sget p2, Landroid/support/design/R$id;->largeLabel:I

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    .line 140
    sget p2, Landroid/support/design/R$id;->smallLabel:I

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    .line 142
    iget-object p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget p3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabelAppearance:I

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 143
    iget-object p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget p3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabelAppearance:I

    invoke-virtual {p2, p1, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 147
    iget p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabelAppearance:I

    iget-object p3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Landroid/support/design/internal/BottomNavigationItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    .line 148
    iget p2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabelAppearance:I

    iget-object p3, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Landroid/support/design/internal/BottomNavigationItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method private seslIsShowButtonEnabled()Z
    .locals 3

    .line 407
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setLargeTextSize(ILandroid/widget/TextView;)V
    .locals 3

    .line 192
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 193
    sget v0, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p1

    .line 200
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const v0, 0x3fa66666    # 1.3f

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    mul-float p1, p1, v0

    .line 207
    invoke-virtual {p2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .line 231
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .locals 0

    .line 215
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 216
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setCheckable(Z)V

    .line 217
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 218
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setEnabled(Z)V

    .line 219
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setId(I)V

    .line 222
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/design/internal/BottomNavigationItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 158
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    iget p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabelAppearance:I

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    .line 161
    iget p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabelAppearance:I

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    .line 165
    iget-boolean p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 166
    sget p1, Landroid/support/design/R$id;->baseLineLayout:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/internal/BaselineLayout;

    .line 168
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_bottom_navigation_icon_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    .line 169
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_bottom_navigation_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 170
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->sesl_bottom_navigation_baseline_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/support/design/internal/BaselineLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {p1, v2}, Landroid/support/design/internal/BaselineLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    :cond_0
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 179
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 180
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v0, 0x31

    .line 181
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 182
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 184
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    :cond_1
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 337
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 338
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Landroid/support/design/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/design/internal/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 330
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 332
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 251
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 5

    .line 256
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 257
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 258
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 259
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 261
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mHasIcon:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->sesl_bottom_navigation_icon_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    .line 264
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    const/4 v1, 0x0

    const/16 v2, 0x31

    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 267
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 268
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 269
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 272
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    .line 275
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 276
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 277
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 280
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 282
    :goto_0
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 285
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 286
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iget v2, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftAmount:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 288
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 292
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 293
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 294
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_1

    .line 296
    :cond_3
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 297
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 298
    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 299
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 303
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 304
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 305
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 309
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->refreshDrawableState()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 314
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroid/support/v4/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroid/support/v4/view/PointerIconCompat;

    move-result-object p1

    .line 320
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 323
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 351
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 353
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 355
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 369
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mIconTint:Landroid/content/res/ColorStateList;

    .line 370
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 403
    :goto_0
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 227
    iput p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mItemPosition:I

    return-void
.end method

.method public setShiftingMode(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mShiftingMode:Z

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method setShowButtonShape(ILandroid/content/res/ColorStateList;)V
    .locals 2

    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$drawable;->sesl_bottomnavigation_show_button_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 392
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 394
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/design/R$drawable;->sesl_bottom_navigation_show_background_o:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 395
    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 377
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 378
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
