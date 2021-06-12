.class Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->l()Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadMore - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;->b(Z)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;)I

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$2;->b:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->s_()V

    return-void
.end method
