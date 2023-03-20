.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteManager;
.super Ljava/lang/Object;
.source "FavoriteManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;,
        Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

.field public static final MAX_COUNT_MELON:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "FavoriteManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger$delegate:Lkotlin/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->context:Landroid/content/Context;

    .line 2
    sget-object p1, Lkotlin/i;->c:Lkotlin/i;

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$logger$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$logger$2;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;)V

    invoke-static {p1, v0}, Lkotlin/h;->a(Lkotlin/i;Lkotlin/jvm/functions/a;)Lkotlin/g;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->logger$delegate:Lkotlin/g;

    return-void
.end method

.method public static final synthetic access$contentValues(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;)Landroid/content/ContentValues;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->contentValues(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getLogger(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;)Lcom/samsung/android/app/musiclibrary/ui/debug/b;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->getLogger()Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isFavorite(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavorite(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadExtras(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->loadExtras(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Ljava/util/List;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addAsync(Ljava/util/List;Lkotlin/jvm/functions/p;)Lkotlinx/coroutines/w1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addAsync([Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;)Lkotlinx/coroutines/w1;

    move-result-object p0

    return-object p0
.end method

.method private final contentValues(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;->getSubType()Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sub_category_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "favorite_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getAlbumId()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "album_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getCpAttrs()Ljava/lang/Long;

    move-result-object p1

    const-string v1, "cp_attrs"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getData1()Ljava/lang/String;

    move-result-object p1

    const-string v1, "data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getData2()Ljava/lang/String;

    move-result-object p1

    const-string v1, "data2"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getAlbumArtist()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "category_id_extra_album_artist"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getBucketId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "category_id_extra_bucket_id"

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "image_url_middle"

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;->getHasBadge()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "has_badge"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_3
    return-object v0
.end method

.method public static synthetic deleteAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteAsync([Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;)Lkotlinx/coroutines/w1;

    move-result-object p0

    return-object p0
.end method

.method private final getLogger()Lcom/samsung/android/app/musiclibrary/ui/debug/b;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->logger$delegate:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/debug/b;

    return-object v0
.end method

.method public static final getTrackQueryArgs(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/o;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getTrackQueryArgs(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/o;

    move-result-object p0

    return-object p0
.end method

.method private final isFavorite(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/a1;->b()Lkotlinx/coroutines/h0;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$isFavorite$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$isFavorite$2;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/j;->g(Lkotlin/coroutines/g;Lkotlin/jvm/functions/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic isFavoriteAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/l;ILjava/lang/Object;)Lkotlinx/coroutines/w1;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/l;)Lkotlinx/coroutines/w1;

    move-result-object p0

    return-object p0
.end method

.method private final loadExtras(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite$Extras;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/a1;->b()Lkotlinx/coroutines/h0;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$loadExtras$2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$loadExtras$2;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Landroid/content/Context;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/j;->g(Lkotlin/coroutines/g;Lkotlin/jvm/functions/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addAsync(Ljava/util/List;Lkotlin/jvm/functions/p;)Lkotlinx/coroutines/w1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;",
            ">;",
            "Lkotlin/jvm/functions/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/u;",
            ">;)",
            "Lkotlinx/coroutines/w1;"
        }
    .end annotation

    const-string v0, "favorites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/a1;->b()Lkotlinx/coroutines/h0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/l0;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$addAsync$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$addAsync$1;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lkotlin/jvm/functions/p;Ljava/util/List;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->d(Lkotlinx/coroutines/l0;Lkotlin/coroutines/g;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    move-result-object p1

    return-object p1
.end method

.method public final varargs addAsync([Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;)Lkotlinx/coroutines/w1;
    .locals 2

    const-string v0, "favorites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    move-result-object p1

    return-object p1
.end method

.method public final addAsync([Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;)Lkotlinx/coroutines/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;",
            "Lkotlin/jvm/functions/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/u;",
            ">;)",
            "Lkotlinx/coroutines/w1;"
        }
    .end annotation

    const-string v0, "favorites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lkotlin/collections/i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addAsync(Ljava/util/List;Lkotlin/jvm/functions/p;)Lkotlinx/coroutines/w1;

    move-result-object p1

    return-object p1
.end method

.method public final varargs deleteAsync([Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;)Lkotlinx/coroutines/w1;
    .locals 2

    const-string v0, "favorites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    move-result-object p1

    return-object p1
.end method

.method public final deleteAsync([Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;)Lkotlinx/coroutines/w1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;",
            "Lkotlin/jvm/functions/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/u;",
            ">;)",
            "Lkotlinx/coroutines/w1;"
        }
    .end annotation

    const-string v0, "favorites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/a1;->b()Lkotlinx/coroutines/h0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/l0;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$deleteAsync$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$deleteAsync$1;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/p;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->d(Lkotlinx/coroutines/l0;Lkotlin/coroutines/g;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    move-result-object p1

    return-object p1
.end method

.method public final getCount(I)I
    .locals 2

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->context:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getCount(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public final isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;)Lkotlinx/coroutines/w1;
    .locals 2

    const-string v0, "favorite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/l;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    move-result-object p1

    return-object p1
.end method

.method public final isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lkotlin/jvm/functions/l;)Lkotlinx/coroutines/w1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;",
            "Lkotlin/jvm/functions/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/u;",
            ">;)",
            "Lkotlinx/coroutines/w1;"
        }
    .end annotation

    const-string v0, "favorite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/a1;->b()Lkotlinx/coroutines/h0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/l0;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$isFavoriteAsync$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$isFavoriteAsync$1;-><init>(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Favorite;Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lkotlin/jvm/functions/l;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->d(Lkotlinx/coroutines/l0;Lkotlin/coroutines/g;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/p;ILjava/lang/Object;)Lkotlinx/coroutines/w1;

    move-result-object p1

    return-object p1
.end method
