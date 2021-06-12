.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;


# instance fields
.field private final categoryManager:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;

.field private final trackManager:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->trackManager:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/list/favorite/IFavoriteCategoryManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->categoryManager:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;

    return-void
.end method

.method public static synthetic addFavoriteCategoryAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 115
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteCategoryAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    return-void
.end method

.method public static synthetic addFavoriteTracksAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[JLcom/samsung/android/app/music/list/favorite/AddResultListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 90
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    return-void
.end method

.method public static synthetic deleteFavoriteCategoryAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 120
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteCategoryAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V

    return-void
.end method

.method public static synthetic deleteFavoriteTracksAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 100
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V

    return-void
.end method

.method public static final getFavoriteCategoryCount(Landroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteCategoryCount$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final getFavoriteCategoryCount(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteCategoryCount(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static final getFavoriteTrackCount(Landroid/content/Context;)I
    .locals 3

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteTrackCount$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;Landroid/content/Context;Ljava/lang/Integer;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final getFavoriteTrackCount(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteTrackCount(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic isFavoriteAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 125
    check-cast p2, Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method

.method public static synthetic isFavoriteTrackAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 110
    check-cast p3, Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrackAsync(JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method

.method public static final toFavoriteType(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->toFavoriteType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addFavoriteCategoryAsync(Lcom/samsung/android/app/music/list/favorite/Category;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteCategoryAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final addFavoriteCategoryAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->categoryManager:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->addAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    return-void
.end method

.method public final addFavoriteTracks([J)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->trackManager:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->add([J)Lcom/samsung/android/app/music/list/favorite/AddResult;

    move-result-object p1

    return-object p1
.end method

.method public final addFavoriteTracksAsync([J)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[JLcom/samsung/android/app/music/list/favorite/AddResultListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->trackManager:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->addAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    return-void
.end method

.method public final deleteFavoriteCategoryAsync(Lcom/samsung/android/app/music/list/favorite/Category;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteCategoryAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final deleteFavoriteCategoryAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->categoryManager:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->deleteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V

    return-void
.end method

.method public final deleteFavoriteTracks([J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->trackManager:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->delete([J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    move-result-object p1

    return-object p1
.end method

.method public final deleteFavoriteTracksAsync([J)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->deleteFavoriteTracksAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;[JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final deleteFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->trackManager:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->deleteAsync([JLcom/samsung/android/app/music/list/favorite/DeleteResultListener;)V

    return-void
.end method

.method public final isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/Category;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->categoryManager:Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteCategoryManager;->isFavoriteAsync(Lcom/samsung/android/app/music/list/favorite/Category;Lcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method

.method public final isFavoriteTrack(J)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->trackManager:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->isFavorite(J)Z

    move-result p1

    return p1
.end method

.method public final isFavoriteTrackAsync(J)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->isFavoriteTrackAsync$default(Lcom/samsung/android/app/music/list/favorite/FavoriteManager;JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final isFavoriteTrackAsync(JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->trackManager:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;->isFavoriteAsync(JLcom/samsung/android/app/music/list/favorite/OnGetIsFavoriteListener;)V

    return-void
.end method
