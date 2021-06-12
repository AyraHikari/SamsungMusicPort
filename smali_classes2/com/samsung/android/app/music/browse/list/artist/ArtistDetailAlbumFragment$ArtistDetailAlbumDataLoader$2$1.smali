.class Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;->a(Landroid/content/Context;I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;",
        "Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2$1;->a:Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;)Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->getAlbumList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->getAlbumList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    new-instance p1, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;

    invoke-direct {p1}, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;-><init>()V

    .line 181
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->setAlbumList(Ljava/util/List;)V

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    check-cast p1, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;

    check-cast p2, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/artist/ArtistDetailAlbumFragment$ArtistDetailAlbumDataLoader$2$1;->a(Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;)Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;

    move-result-object p1

    return-object p1
.end method
