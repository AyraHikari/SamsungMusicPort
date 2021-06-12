.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;Ljava/util/List;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7$1;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7$1;->b:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;Ljava/util/List;)V

    return-void
.end method
