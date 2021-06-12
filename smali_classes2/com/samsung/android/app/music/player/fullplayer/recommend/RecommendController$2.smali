.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


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

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$2;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Recommend"

    const-string v0, "onNetworkStateChanged()"

    .line 129
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$2;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->b(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$2;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendableChecker;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method
