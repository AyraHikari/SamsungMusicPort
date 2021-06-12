.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendUtils$OnRecommendationLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->k()V
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

    .line 458
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;)V"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->d(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$7;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
