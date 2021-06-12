.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView$Companion;

# The value of this static final field might be set in the static constructor
.field private static final k:Ljava/lang/String; = "sec-roboto-light"


# instance fields
.field private final b:F

.field private final c:Landroid/graphics/Paint;

.field private final d:F

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:F

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView$Companion;

    const-string v0, "sec-roboto-light"

    .line 91
    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->i:Z

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->c:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->d:F

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f019a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->e:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f02e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->k:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->f:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1005af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->g:F

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0504

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.string.radio)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->h:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1005b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->b:F

    return-void
.end method


# virtual methods
.method public final getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getBackgroundRound()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->d:F

    return v0
.end method

.method public final getImageSize()F
    .locals 1

    .line 14
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->b:F

    return v0
.end method

.method public final getTagBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->e:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getTagHeight()F
    .locals 1

    .line 24
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->g:F

    return v0
.end method

.method public final getTagText()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getTagTextPaint()Landroid/graphics/Paint;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 64
    iget v8, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->b:F

    .line 66
    iget v9, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->b:F

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->i:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    iget v5, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->d:F

    iget v6, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->d:F

    .line 70
    iget-object v7, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move v3, v8

    move v4, v9

    .line 68
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->j:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 77
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->g:F

    sub-float v2, v9, v0

    iget-object v5, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->f:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v2

    .line 80
    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->h:Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v8, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v8, v3

    .line 82
    iget v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->g:F

    sub-float/2addr v3, v1

    sub-float/2addr v9, v3

    .line 80
    invoke-virtual {p1, v2, v8, v9, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final setBackgroundEnabled(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->i:Z

    return-void
.end method

.method public final setTagEnabled(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniAlbumView;->j:Z

    return-void
.end method
