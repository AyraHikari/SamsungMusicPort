.class Lcom/samsung/android/app/music/player/FavoriteCache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/FavoriteCache;->a(Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

.field final synthetic c:Landroid/support/v4/app/FragmentActivity;

.field final synthetic d:Lcom/samsung/android/app/music/player/FavoriteCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/FavoriteCache;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->d:Lcom/samsung/android/app/music/player/FavoriteCache;

    iput-wide p2, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->a:J

    iput-object p4, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    iput-object p5, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->c:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    xor-int/lit8 p1, p1, 0x1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->d:Lcom/samsung/android/app/music/player/FavoriteCache;

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->a:J

    iget-object v3, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(Lcom/samsung/android/app/music/player/FavoriteCache;JZLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->d:Lcom/samsung/android/app/music/player/FavoriteCache;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->c:Landroid/support/v4/app/FragmentActivity;

    iget-wide v1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->a:J

    iget-object v3, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(Lcom/samsung/android/app/music/player/FavoriteCache;Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->d:Lcom/samsung/android/app/music/player/FavoriteCache;

    iget-wide v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->a:J

    iget-object v2, p0, Lcom/samsung/android/app/music/player/FavoriteCache$2;->b:Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(Lcom/samsung/android/app/music/player/FavoriteCache;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    :goto_0
    return-void
.end method
