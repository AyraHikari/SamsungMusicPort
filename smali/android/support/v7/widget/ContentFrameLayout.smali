.class public Landroid/support/v7/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

.field private mAvailableWidth:F

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 73
    invoke-direct {p0}, Landroid/support/v7/widget/ContentFrameLayout;->updateAvailableWidth()V

    return-void
.end method

.method private updateAvailableWidth()V
    .locals 3

    .line 190
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x1

    .line 191
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAvailableWidth:F

    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 233
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 213
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 238
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    invoke-interface {v0}, Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 197
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 200
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 201
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$attr;->windowMinWidthMinor:I

    iget-object v1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 202
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$attr;->windowMinWidthMajor:I

    iget-object v1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 203
    invoke-direct {p0}, Landroid/support/v7/widget/ContentFrameLayout;->updateAvailableWidth()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 246
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 247
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    invoke-interface {v0}, Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 104
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 105
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 107
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/high16 v8, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_4

    if-eqz v1, :cond_1

    .line 112
    iget-object v10, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_1

    :cond_1
    iget-object v10, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_1
    if-eqz v10, :cond_4

    .line 113
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_4

    .line 115
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-ne v11, v7, :cond_2

    .line 116
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    goto :goto_2

    .line 117
    :cond_2
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_3

    .line 118
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    float-to-int v10, v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    if-lez v10, :cond_4

    .line 121
    iget-object v11, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 124
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 123
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v10, p1

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    move v10, p1

    const/4 p1, 0x0

    :goto_3
    if-ne v5, v8, :cond_8

    if-eqz v1, :cond_5

    .line 131
    iget-object v5, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_4

    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_4
    if-eqz v5, :cond_8

    .line 132
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_8

    .line 134
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-ne v11, v7, :cond_6

    .line 135
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_5

    .line 136
    :cond_6
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_7

    .line 137
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-lez v5, :cond_8

    .line 140
    iget-object v11, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int/2addr v5, v11

    .line 141
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 143
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 142
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 148
    :cond_8
    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 150
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v5

    .line 153
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    if-nez p1, :cond_d

    if-ne v2, v8, :cond_d

    if-eqz v1, :cond_9

    .line 156
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_6

    :cond_9
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    :goto_6
    if-eqz p1, :cond_d

    .line 157
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-eqz v1, :cond_d

    .line 159
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-ne v1, v7, :cond_a

    .line 160
    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int v4, p1

    goto :goto_7

    .line 161
    :cond_a
    iget v0, p1, Landroid/util/TypedValue;->type:I

    if-ne v0, v6, :cond_b

    .line 163
    invoke-direct {p0}, Landroid/support/v7/widget/ContentFrameLayout;->updateAvailableWidth()V

    .line 164
    iget v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAvailableWidth:F

    iget v1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAvailableWidth:F

    invoke-virtual {p1, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    float-to-int v4, p1

    :cond_b
    :goto_7
    if-lez v4, :cond_c

    .line 169
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    sub-int/2addr v4, p1

    .line 178
    :cond_c
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_e

    .line 185
    invoke-super {p0, v5, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method

.method public setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 97
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
