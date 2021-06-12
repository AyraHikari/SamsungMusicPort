.class final Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TagUx"
.end annotation


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "sec-roboto-condensed"

    const/4 v1, 0x1

    .line 405
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0b0519

    .line 404
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const v0, 0x7f1001ef

    const v1, 0x7f100453

    .line 366
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->a(Landroid/content/Context;III)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;III)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0134

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 373
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 374
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const-string p2, "sec-roboto-light"

    const/4 p3, 0x1

    .line 377
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    move-object v2, p0

    move v3, p1

    .line 376
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;III)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x1

    .line 410
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0b04c3

    .line 409
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const v0, 0x7f1001ef

    const v1, 0x7f100453

    .line 381
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->b(Landroid/content/Context;III)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;III)Ljava/lang/CharSequence;
    .locals 10
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0134

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 388
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 389
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const p2, 0x7f1001e0

    .line 391
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const p3, 0x7f1001de

    .line 392
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 393
    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v9, p2

    move v8, p3

    goto :goto_0

    :cond_0
    move v8, p2

    move v9, p3

    :goto_0
    const-string p2, "sec-roboto-light"

    const/4 p3, 0x1

    .line 399
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    move-object v2, p0

    move v3, p1

    .line 398
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;IIIII)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x1

    .line 415
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0b0523

    .line 414
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 434
    invoke-static {p1}, Lcom/samsung/android/app/music/model/AudioQuality;->getStreamingQualityResId(I)I

    move-result p1

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x1

    .line 435
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 434
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x1

    .line 420
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0b04e8

    .line 419
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 447
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const-string p1, " "

    const/4 v0, 0x0

    .line 448
    invoke-static {p1, p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Ljava/lang/CharSequence;II)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    .line 425
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0b0192

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static f(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    const-string v0, "sec-roboto-light"

    const/4 v1, 0x0

    .line 430
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0b03c5

    .line 429
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Landroid/content/Context;ILandroid/graphics/Typeface;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static g(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1001df

    .line 441
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const-string v0, "|"

    .line 442
    invoke-static {v0, p0, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a(Ljava/lang/CharSequence;II)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method
