.class Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

.field private b:J

.field private c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

.field private d:Ljava/lang/Boolean;

.field private e:Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

.field private f:Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

.field private g:Lcom/samsung/android/app/music/list/favorite/AddResultListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;J)V
    .locals 2

    .line 547
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->d:Ljava/lang/Boolean;

    .line 515
    new-instance v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$1;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->e:Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

    .line 522
    new-instance v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$2;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->f:Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

    .line 535
    new-instance v0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$3;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl$3;-><init>(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->g:Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    .line 548
    iput-wide p2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->b:J

    .line 549
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->a:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    .line 550
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->e:Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

    invoke-virtual {p1, p2, p3, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrackAsync(JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)J
    .locals 2

    .line 507
    iget-wide v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;Z)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const-string v0, "TrackDetailFragment"

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFavorite() mIsFavorite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isFavorite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 572
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->d:Ljava/lang/Boolean;

    .line 573
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->a:Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 575
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)Lcom/samsung/android/app/music/list/favorite/FavoriteManager;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;)Lcom/samsung/android/app/music/list/favorite/AddResultListener;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->g:Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    return-object p0
.end method


# virtual methods
.method public n_()Ljava/lang/Boolean;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public o_()V
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->c:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    iget-wide v1, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->b:J

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/track/TrackDetailFragment$FavoriteableImpl;->f:Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrackAsync(JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
