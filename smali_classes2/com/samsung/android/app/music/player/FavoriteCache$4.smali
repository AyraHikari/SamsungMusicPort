.class Lcom/samsung/android/app/music/player/FavoriteCache$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/FavoriteCache;->b(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
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
.method constructor <init>(Lcom/samsung/android/app/music/player/FavoriteCache;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$4;->c:Lcom/samsung/android/app/music/player/FavoriteCache;

    iput-wide p2, p0, Lcom/samsung/android/app/music/player/FavoriteCache$4;->a:J

    iput-object p4, p0, Lcom/samsung/android/app/music/player/FavoriteCache$4;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/music/list/favorite/DeleteResult;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/DeleteResult;->getSuccessCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$4;->c:Lcom/samsung/android/app/music/player/FavoriteCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(Lcom/samsung/android/app/music/player/FavoriteCache;)Ljava/util/Map;

    move-result-object p1

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$4;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$4;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$4;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;->a(Z)V

    :cond_0
    return-void
.end method
