.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/View;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

.field final synthetic b:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;Lcom/samsung/android/app/music/player/PlayerGestureViCache;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;->b:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 344
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 348
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->q(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;->a(I)V

    .line 351
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$onViewCreated$$inlined$tsp$lambda$2;->a:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->g(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "general_click_event"

    const-string v1, "click_event"

    const-string v2, "fullplayer_click_current_playlist"

    .line 350
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
