.class Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;
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

    .line 389
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->e(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->j(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->f(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;

    .line 395
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$4;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$ImageSwitcherInfo;)V

    :cond_1
    return-void
.end method
