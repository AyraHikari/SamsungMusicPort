.class Lcom/samsung/android/app/music/player/FavoriteCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/FavoriteCache;->a(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;Z)V
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

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$1;->c:Lcom/samsung/android/app/music/player/FavoriteCache;

    iput-wide p2, p0, Lcom/samsung/android/app/music/player/FavoriteCache$1;->a:J

    iput-object p4, p0, Lcom/samsung/android/app/music/player/FavoriteCache$1;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$1;->c:Lcom/samsung/android/app/music/player/FavoriteCache;

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$1;->a:J

    iget-object v3, p0, Lcom/samsung/android/app/music/player/FavoriteCache$1;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(Lcom/samsung/android/app/music/player/FavoriteCache;JZLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    return-void
.end method
