.class public final Lcom/samsung/android/app/music/player/miniplayer/RoundedRectOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/RoundedRectOutlineProvider;->a:F

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/music/player/miniplayer/RoundedRectOutlineProvider;->a:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
