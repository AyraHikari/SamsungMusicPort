.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->e()V
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

    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$4;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$4;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$4;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c()V

    .line 171
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$4;->a:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->c(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "foryou_click_fullplayer"

    const-string v1, "foryou_click_fullplayer"

    const/4 v2, 0x1

    .line 172
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
