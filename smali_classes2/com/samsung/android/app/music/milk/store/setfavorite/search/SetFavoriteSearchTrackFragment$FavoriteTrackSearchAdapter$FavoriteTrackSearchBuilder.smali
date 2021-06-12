.class Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;
.super Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteTrackSearchBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public synthetic b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;->c()Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter$FavoriteTrackSearchBuilder;->c()Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;
    .locals 1

    .line 171
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$FavoriteTrackSearchAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)V

    return-object v0
.end method
