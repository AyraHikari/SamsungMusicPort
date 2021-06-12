.class Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/FavoriteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnFavoriteResultAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/FavoriteController;

.field private b:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/FavoriteController;J)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-wide p2, p0, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;->b:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/FavoriteController;->a(Lcom/samsung/android/app/music/player/FavoriteController;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/FavoriteController;->a(Lcom/samsung/android/app/music/player/FavoriteController;Z)Z

    .line 365
    iget-object p1, p0, Lcom/samsung/android/app/music/player/FavoriteController$OnFavoriteResultAdapter;->a:Lcom/samsung/android/app/music/player/FavoriteController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/FavoriteController;->b(Lcom/samsung/android/app/music/player/FavoriteController;Z)V

    :cond_0
    return-void
.end method
