.class final Lcom/samsung/android/app/music/network/request/contents/ContentsApis$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->b()Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
        "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->getAlbumInfo()Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->getAlbumInfo()Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getTrackList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->getAlbumInfo()Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/TrackModel;

    .line 135
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackModel;->getLargeSizeImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/model/base/TrackModel;->setLargeSizeImageUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    check-cast p1, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$8;->a(Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    move-result-object p1

    return-object p1
.end method
