.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

.field final synthetic b:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->b:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLyricConditionChanged(Z)V
    .locals 3

    .line 456
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLyricConditionChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 459
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Z)V

    .line 460
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    .line 461
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->t(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Z)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method
