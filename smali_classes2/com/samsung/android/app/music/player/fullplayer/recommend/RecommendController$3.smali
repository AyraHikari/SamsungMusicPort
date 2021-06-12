.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$3;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const-string v0, "Recommend"

    const-string v1, "onMultiWindowModeChanged()"

    .line 139
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$3;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Z)Z

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$3;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b()V

    :cond_0
    return-void
.end method
