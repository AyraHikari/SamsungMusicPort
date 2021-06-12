.class Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$5;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$5;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    .line 419
    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$5;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->g(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$5;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->i(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)I

    move-result v2

    const v3, 0x7f1000b6

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter$Util;->convert(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/DrawableConverter;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$5;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->h(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
