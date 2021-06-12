.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

.field final synthetic b:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/os/Bundle;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->b:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->d:Landroid/os/Bundle;

    .line 426
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .line 429
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 430
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$Companion;

    .line 968
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-FullPlayer"

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged - newState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 433
    :goto_1
    iget-boolean p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->e:Z

    if-eq p2, p1, :cond_6

    if-eqz p1, :cond_3

    .line 435
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b()V

    .line 436
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->b()V

    goto :goto_2

    .line 438
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->r(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    move-result-object p2

    const/16 v0, 0x1f4

    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b(I)V

    .line 440
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->s(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(I)V

    .line 442
    :cond_5
    :goto_2
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onPostViewCreated$$inlined$tsp$lambda$1;->e:Z

    :cond_6
    return-void
.end method
