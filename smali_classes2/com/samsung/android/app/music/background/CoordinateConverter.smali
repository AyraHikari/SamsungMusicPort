.class final Lcom/samsung/android/app/music/background/CoordinateConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private final d:Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;

.field private final e:Lcom/samsung/android/app/music/background/CoordinateConverter$landscapeTransformer$1;

.field private final f:Lcom/samsung/android/app/music/background/CoordinateConverter$rtlLandscapeTransformer$1;

.field private final g:F

.field private final h:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->g:F

    iput p2, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->h:F

    .line 163
    new-instance p1, Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;-><init>(Lcom/samsung/android/app/music/background/CoordinateConverter;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->d:Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;

    .line 179
    new-instance p1, Lcom/samsung/android/app/music/background/CoordinateConverter$landscapeTransformer$1;

    invoke-direct {p1}, Lcom/samsung/android/app/music/background/CoordinateConverter$landscapeTransformer$1;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->e:Lcom/samsung/android/app/music/background/CoordinateConverter$landscapeTransformer$1;

    .line 187
    new-instance p1, Lcom/samsung/android/app/music/background/CoordinateConverter$rtlLandscapeTransformer$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/CoordinateConverter$rtlLandscapeTransformer$1;-><init>(Lcom/samsung/android/app/music/background/CoordinateConverter;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->f:Lcom/samsung/android/app/music/background/CoordinateConverter$rtlLandscapeTransformer$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/CoordinateConverter;)F
    .locals 0

    .line 158
    iget p0, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->a:F

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/background/CoordinateConverter;)F
    .locals 0

    .line 158
    iget p0, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->b:F

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/background/CoordinateConverter;)I
    .locals 0

    .line 158
    iget p0, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->c:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/samsung/android/app/music/background/FrameState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->g:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->a:F

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->h:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->b:F

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->d:Lcom/samsung/android/app/music/background/CoordinateConverter$transformer$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    return-object p1
.end method

.method public final a(Landroid/graphics/Rect;Z)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Z)",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/samsung/android/app/music/background/FrameState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->c:I

    if-eqz p2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->f:Lcom/samsung/android/app/music/background/CoordinateConverter$rtlLandscapeTransformer$1;

    :goto_0
    check-cast p1, Lkotlin/jvm/functions/Function1;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/background/CoordinateConverter;->e:Lcom/samsung/android/app/music/background/CoordinateConverter$landscapeTransformer$1;

    goto :goto_0

    :goto_1
    return-object p1
.end method
