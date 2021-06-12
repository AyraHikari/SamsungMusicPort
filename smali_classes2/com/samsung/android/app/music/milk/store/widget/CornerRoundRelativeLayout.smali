.class public Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static a:F = 0.0f

.field private static final b:Ljava/lang/String; = "CornerRoundRelativeLayout"


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/R$styleable;->MilkCornerRoundRelativeLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x40c00000    # 6.0f

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 57
    sput p2, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->a:F

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->c:Z

    .line 63
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge p2, v0, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p2, v0, :cond_2

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->c:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 78
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    sget v2, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->a:F

    sget v3, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->a:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 82
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->b:Ljava/lang/String;

    const-string v1, "onDraw : clipPath not supported"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->c:Z

    .line 89
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
