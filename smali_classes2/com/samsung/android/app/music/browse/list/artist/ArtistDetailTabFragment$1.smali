.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;)V
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "ArtistDetailTabFragment"

    const-string v0, "activity is null"

    .line 148
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$DataLoaderCallback;->a(Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;->getArtistInfo()Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;Lcom/samsung/android/app/music/model/base/ArtistInfoModel;)Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->b(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    move-result-object p1

    if-nez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    new-instance v0, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    new-instance v2, Lcom/samsung/android/app/music/list/favorite/MilkCategory;

    const/16 v3, 0x54

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    .line 157
    invoke-static {v4}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->c(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getArtistId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    .line 158
    invoke-static {v5}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->c(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getArtistName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {v6}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->c(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/model/base/ArtistInfoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/music/list/favorite/MilkCategory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    .line 156
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->a(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    goto :goto_0

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;->b(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment;)Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c()V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    check-cast p1, Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailTabFragment$1;->a(Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;)V

    return-void
.end method
