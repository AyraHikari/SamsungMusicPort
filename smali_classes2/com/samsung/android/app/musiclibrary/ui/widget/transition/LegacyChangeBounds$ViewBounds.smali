.class Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->e:Landroid/view/View;

    return-void
.end method

.method private a()V
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->e:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->a:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->b:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->c:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->a(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    .line 291
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->f:I

    .line 292
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->g:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/PointF;)V
    .locals 1

    .line 272
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->a:I

    .line 273
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->b:I

    .line 274
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->f:I

    .line 275
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->f:I

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->g:I

    if-ne p1, v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/PointF;)V
    .locals 1

    .line 281
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->c:I

    .line 282
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->d:I

    .line 283
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->g:I

    .line 284
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->f:I

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->g:I

    if-ne p1, v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/LegacyChangeBounds$ViewBounds;->a()V

    :cond_0
    return-void
.end method
