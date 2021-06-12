.class Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;ZII)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->d:Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->a:Z

    iput p3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->b:I

    iput p4, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->c:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    .line 516
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->a:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 517
    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->c:I

    add-int v4, v0, v1

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->c:I

    add-int v5, p1, v0

    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->c:I

    int-to-float v6, p1

    move-object v1, p2

    .line 517
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    .line 520
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->c:I

    neg-int v2, v0

    iget v3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->c:I

    add-int v5, p1, v0

    iget p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$Builder$1;->c:I

    int-to-float v6, p1

    move-object v1, p2

    .line 520
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    return-void
.end method
