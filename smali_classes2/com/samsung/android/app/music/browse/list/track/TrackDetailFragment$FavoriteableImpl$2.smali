.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 526
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    move-result-object v2

    new-array v3, v1, [J

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)J

    move-result-wide v4

    aput-wide v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteTracksAsync([J)V

    goto :goto_0

    .line 528
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    move-result-object v2

    new-array v3, v1, [J

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    .line 529
    invoke-static {v4}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)J

    move-result-wide v4

    aput-wide v4, v3, v0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    .line 531
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;

    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;Z)V

    return-void
.end method
