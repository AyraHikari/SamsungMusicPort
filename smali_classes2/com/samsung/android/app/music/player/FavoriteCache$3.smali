.class Lcom/samsung/android/app/music/player/FavoriteCache$3;
.super Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/FavoriteCache;->b(Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

.field final synthetic c:Lcom/samsung/android/app/music/player/FavoriteCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/FavoriteCache;Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->c:Lcom/samsung/android/app/music/player/FavoriteCache;

    iput-wide p3, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->a:J

    iput-object p5, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V
    .locals 3

    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/AddResult;->getFlag()I

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->c:Lcom/samsung/android/app/music/player/FavoriteCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(Lcom/samsung/android/app/music/player/FavoriteCache;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x4

    .line 97
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 98
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    if-eq p1, v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->c:Lcom/samsung/android/app/music/player/FavoriteCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(Lcom/samsung/android/app/music/player/FavoriteCache;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$3;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;->a(Z)V

    :cond_2
    return-void
.end method
