.class Lcom/samsung/android/app/music/player/FavoriteCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache;->a:Ljava/util/Map;

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache;->b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/FavoriteCache;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/player/FavoriteCache;->a:Ljava/util/Map;

    return-object p0
.end method

.method private a(JZLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 62
    invoke-interface {p4, p3}, Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/FavoriteCache;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/FavoriteCache;->b(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/FavoriteCache;JZLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(JZLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/FavoriteCache;Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/player/FavoriteCache;->b(Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    return-void
.end method

.method private b(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache;->b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    new-instance v2, Lcom/samsung/android/app/music/player/FavoriteCache$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/FavoriteCache$4;-><init>(Lcom/samsung/android/app/music/player/FavoriteCache;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V

    return-void
.end method

.method private b(Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache;->b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    new-instance v2, Lcom/samsung/android/app/music/player/FavoriteCache$3;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/player/FavoriteCache$3;-><init>(Lcom/samsung/android/app/music/player/FavoriteCache;Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    return-void
.end method


# virtual methods
.method a(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;Z)V

    return-void
.end method

.method a(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;Z)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/player/FavoriteCache;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    if-eqz p3, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p3, p1}, Lcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;->a(Z)V

    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object p4, p0, Lcom/samsung/android/app/music/player/FavoriteCache;->b:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    new-instance v0, Lcom/samsung/android/app/music/player/FavoriteCache$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/FavoriteCache$1;-><init>(Lcom/samsung/android/app/music/player/FavoriteCache;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    invoke-virtual {p4, p1, p2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrackAsync(JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method

.method a(Landroid/support/v4/app/FragmentActivity;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V
    .locals 7

    .line 68
    new-instance v6, Lcom/samsung/android/app/music/player/FavoriteCache$2;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/player/FavoriteCache$2;-><init>(Lcom/samsung/android/app/music/player/FavoriteCache;JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p0, p2, p3, v6}, Lcom/samsung/android/app/music/player/FavoriteCache;->a(JLcom/samsung/android/app/music/player/FavoriteCache$OnFavoriteResultListener;)V

    return-void
.end method
