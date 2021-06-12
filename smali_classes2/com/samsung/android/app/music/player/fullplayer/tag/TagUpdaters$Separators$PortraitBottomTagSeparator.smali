.class public Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators$PortraitBottomTagSeparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/tag/TagWidget$TagPresenter$Separator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$Separators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortraitBottomTagSeparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 3

    const p4, 0x7f0b0504

    const v0, 0x7f0b04c7

    const v1, 0x7f0b051c

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 272
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 273
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 274
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 275
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const p2, 0x7f1001e0

    .line 277
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->d(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const v2, 0x7f1001de

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 280
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0b0519

    .line 281
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const p2, 0x7f1001df

    .line 283
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->d(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 284
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 285
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 286
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 289
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->g(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 287
    :cond_3
    :goto_0
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->d(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p2, :cond_5

    .line 291
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 292
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 293
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 294
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 295
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagUpdaters$TagUx;->d(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
