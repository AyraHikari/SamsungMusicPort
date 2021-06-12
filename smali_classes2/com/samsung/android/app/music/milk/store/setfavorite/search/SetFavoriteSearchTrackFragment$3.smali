.class Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->j()Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;I)Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchCursor2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 131
    new-instance p2, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 132
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getArtistNames()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "key_searched_my_favorite_music_data"

    .line 137
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment$3;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 p3, -0x1

    .line 140
    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 141
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    return-void
.end method
