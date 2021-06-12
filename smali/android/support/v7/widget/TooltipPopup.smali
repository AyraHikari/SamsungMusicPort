.class Landroid/support/v7/widget/TooltipPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mIsForceActionBarX:Z

.field private mIsForceBelow:Z

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private mNavigationBarHeight:I

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 61
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    .line 62
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipPopup;->mIsForceBelow:Z

    .line 65
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipPopup;->mIsForceActionBarX:Z

    .line 67
    iput v0, p0, Landroid/support/v7/widget/TooltipPopup;->mNavigationBarHeight:I

    .line 70
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10104a9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 72
    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, p1, v1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 75
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 77
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Landroid/support/v7/appcompat/R$layout;->sesl_tooltip:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    .line 78
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    sget v0, Landroid/support/v7/appcompat/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 80
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    new-instance v0, Landroid/support/v7/widget/TooltipPopup$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/TooltipPopup$1;-><init>(Landroid/support/v7/widget/TooltipPopup;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x3ea

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 98
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 99
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 100
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 101
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/support/v7/appcompat/R$style;->Animation_AppCompat_Tooltip:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 102
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x40008

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private AdjustTooltipPosition(Landroid/view/View;III)I
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 334
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipPopup;->checkNaviBarForLandscape()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 335
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 336
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 340
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-direct {p0}, Landroid/support/v7/widget/TooltipPopup;->getNavigationBarHeight()I

    move-result p3

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, p4

    if-le p2, p1, :cond_4

    sub-int p2, p1, p4

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_4

    if-gtz p2, :cond_1

    .line 347
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p4

    if-ge p2, p3, :cond_4

    add-int p2, p3, p4

    goto :goto_1

    .line 352
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p4

    if-le p2, p1, :cond_4

    sub-int/2addr p1, p4

    :goto_0
    move p2, p1

    goto :goto_1

    .line 360
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipPopup;->checkNaviBarForLandscape()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 362
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    if-ne v0, v2, :cond_3

    .line 366
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, p4

    if-le p2, p1, :cond_4

    sub-int/2addr p1, p4

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 372
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p4

    if-ge p2, p3, :cond_4

    add-int p2, p3, p4

    :cond_4
    :goto_1
    return p2
.end method

.method private checkNaviBarForLandscape()Z
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 192
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 195
    iget-object v2, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 197
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string v4, "window"

    .line 198
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 199
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 201
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 203
    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 205
    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-lt v5, v6, :cond_0

    .line 206
    iget v0, v3, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/TooltipPopup;->setNavigationBarHeight(I)V

    return v4

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 208
    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_1

    .line 209
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/TooltipPopup;->setNavigationBarHeight(I)V

    return v4

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const/16 p3, 0x31

    .line 228
    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 230
    invoke-static {p1}, Landroid/support/v7/widget/TooltipPopup;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p1, "TooltipPopup"

    const-string p2, "Cannot find app view"

    .line 232
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_2

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    .line 242
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 248
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 249
    iget-object v3, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 251
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 253
    iget-object p3, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 254
    iget-object p3, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v0, p3, v1

    iget-object v2, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    aput v0, p3, v1

    .line 255
    iget-object p3, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v0, 0x1

    aget v2, p3, v0

    iget-object v3, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAppPos:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, p3, v0

    .line 257
    iget-object p3, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget p3, p3, v1

    add-int/2addr p3, p2

    iget-object v2, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    iput p3, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 259
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 260
    iget-object v2, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v2, p3, p3}, Landroid/view/View;->measure(II)V

    .line 261
    iget-object p3, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 262
    iget-object v2, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 263
    iget-object v3, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$dimen;->sesl_hover_tooltip_popup_right_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 266
    iget-object v4, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v4, v4, v0

    sub-int/2addr v4, p3

    .line 267
    iget-object v5, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget v5, v5, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-eqz p4, :cond_5

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    if-nez p4, :cond_3

    .line 271
    iget-object p4, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget p4, p4, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr p4, v6

    iget-object v6, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr p4, v6

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr p4, v6

    mul-int/lit8 v6, v3, 0x2

    sub-int/2addr p4, v6

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 274
    iget p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, p4, v2, v3}, Landroid/support/v7/widget/TooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result p4

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 277
    :cond_3
    iget-object p4, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget p4, p4, v1

    add-int/2addr p4, p2

    iget-object v6, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr p4, v6

    div-int/lit8 v6, v2, 0x2

    add-int/2addr p4, v6

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr p4, v6

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 279
    iget p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, p4, v2, v3}, Landroid/support/v7/widget/TooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result p4

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    add-int p4, v5, p3

    .line 282
    iget-object v6, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le p4, v6, :cond_4

    .line 283
    iput v4, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 285
    :cond_4
    iput v5, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 288
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    if-nez p4, :cond_6

    .line 289
    iget-object p4, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget p4, p4, v1

    add-int/2addr p4, p2

    iget-object v6, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr p4, v6

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 291
    iget p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, p4, v2, v3}, Landroid/support/v7/widget/TooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result p4

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    .line 294
    :cond_6
    iget-object p4, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget p4, p4, v1

    add-int/2addr p4, p2

    iget-object v6, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr p4, v6

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 295
    iget p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, p4, v2, v3}, Landroid/support/v7/widget/TooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result p4

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_2
    if-ltz v4, :cond_7

    .line 300
    iput v4, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 302
    :cond_7
    iput v5, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    if-eqz p6, :cond_8

    .line 307
    iget-object p4, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget p4, p4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p6

    add-int/2addr p4, p6

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_8
    if-eqz p7, :cond_b

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p4

    if-nez p4, :cond_9

    .line 312
    iget-object p2, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget p2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p2, p4

    iget-object p4, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    div-int/lit8 p4, v2, 0x2

    sub-int/2addr p2, p4

    mul-int/lit8 p4, v3, 0x2

    sub-int/2addr p2, p4

    iput p2, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 315
    iget p2, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, p2, v2, v3}, Landroid/support/v7/widget/TooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result p1

    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_4

    .line 317
    :cond_9
    iget-object p4, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpAnchorPos:[I

    aget p4, p4, v1

    iget-object p6, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p6

    div-int/lit8 p6, p6, 0x2

    sub-int/2addr p4, p6

    add-int/2addr p4, p2

    sub-int p2, v2, v3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p4, p2

    iput p4, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 318
    iget p2, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0, p1, p2, v2, v3}, Landroid/support/v7/widget/TooltipPopup;->AdjustTooltipPosition(Landroid/view/View;III)I

    move-result p1

    iput p1, p5, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_4
    add-int/2addr p3, v5

    .line 321
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-le p3, p1, :cond_a

    .line 322
    iput v4, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_5

    .line 324
    :cond_a
    iput v5, p5, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_b
    :goto_5
    return-void
.end method

.method private static getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 386
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 387
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 389
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getNavigationBarHeight()I
    .locals 1

    .line 220
    iget v0, p0, Landroid/support/v7/widget/TooltipPopup;->mNavigationBarHeight:I

    return v0
.end method

.method private setNavigationBarHeight(I)V
    .locals 0

    .line 216
    iput p1, p0, Landroid/support/v7/widget/TooltipPopup;->mNavigationBarHeight:I

    return-void
.end method


# virtual methods
.method hide()V
    .locals 2

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipPopup;->mIsForceBelow:Z

    .line 171
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipPopup;->mIsForceActionBarX:Z

    .line 173
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 178
    iget-object v1, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method isShowing()Z
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 9
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    .line 114
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/support/v7/widget/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V

    .line 118
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 119
    iget-object p2, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method show(Landroid/view/View;IIZLjava/lang/CharSequence;ZZ)V
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .line 125
    iput-boolean p6, p0, Landroid/support/v7/widget/TooltipPopup;->mIsForceBelow:Z

    .line 126
    iput-boolean p7, p0, Landroid/support/v7/widget/TooltipPopup;->mIsForceActionBarX:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result p6

    if-eqz p6, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    .line 132
    :cond_0
    iget-object p6, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p6, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v6, p0, Landroid/support/v7/widget/TooltipPopup;->mIsForceBelow:Z

    iget-boolean v7, p0, Landroid/support/v7/widget/TooltipPopup;->mIsForceActionBarX:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/widget/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;ZZ)V

    .line 136
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 137
    iget-object p2, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showActionItemTooltip(IIILjava/lang/CharSequence;)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p4, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, p4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 158
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez p3, :cond_1

    .line 160
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const p2, 0x800035

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const p2, 0x800033

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 165
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/TooltipPopup;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 166
    iget-object p2, p0, Landroid/support/v7/widget/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object p3, p0, Landroid/support/v7/widget/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method updateContent(Ljava/lang/CharSequence;)V
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
