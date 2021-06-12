.class Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 331
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 334
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    .line 335
    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    .line 334
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f130412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 337
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 338
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 339
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130416

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt$2;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;->d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerAlbumArt;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
