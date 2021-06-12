.class Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextPaddingSpan"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 316
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->c:Ljava/lang/CharSequence;

    .line 318
    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->a:I

    .line 319
    iput p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->b:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->a:I

    int-to-float v3, v3

    add-float/2addr v3, p5

    int-to-float v4, p7

    move-object p2, v0

    move p3, v1

    move p4, v2

    move p5, v3

    move p6, v4

    move-object p7, p9

    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string p2, " "

    .line 325
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->c:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 326
    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->a:I

    iget p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->b:I

    add-int/2addr p1, p2

    return p1

    .line 328
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->c:Ljava/lang/CharSequence;

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->c:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-int p1, p1

    iget p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->a:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;->b:I

    add-int/2addr p1, p2

    return p1
.end method
