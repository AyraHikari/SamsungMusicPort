.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;ILandroid/content/Context;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;

    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/PlayListModel;

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;Lcom/samsung/android/app/music/model/base/PlayListModel;)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;->c:Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->dismiss()V

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string v0, "foryou_select_fullplayer"

    const-string v1, "foryou_select_fullplayer"

    const/4 v2, 0x1

    .line 142
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
