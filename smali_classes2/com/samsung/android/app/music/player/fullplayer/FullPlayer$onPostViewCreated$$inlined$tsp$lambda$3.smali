.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/lyrics/LyricsController;

.field final synthetic b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

.field final synthetic c:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsController;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;->a:Lcom/samsung/android/app/music/lyrics/LyricsController;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;->c:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    iput-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;->e:Landroid/os/Bundle;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 0

    const-string p2, "parentView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;->a:Lcom/samsung/android/app/music/lyrics/LyricsController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/lyrics/LyricsController;->hasLyrics()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$3;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    :cond_0
    return-void
.end method
