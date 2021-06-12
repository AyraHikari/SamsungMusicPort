.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/View;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

.field final synthetic b:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;->b:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;->c:Landroid/view/View;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 296
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->o(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->c()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "extra.list_position"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    if-nez v1, :cond_2

    goto :goto_2

    .line 299
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_3

    return-void

    .line 301
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->p(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/ActivePlayerController;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p1}, Lcom/samsung/android/app/music/ActivePlayerController;->a(IIZ)V

    return-void
.end method
