.class Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2;->a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/contents/TrackDetailModel;",
        "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2;Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2$1;->b:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SimpleLyricPopup"

    const-string v1, "fillTrackInfo. done"

    .line 186
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;->getTrackInfo()Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->b:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLyricsUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->d:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->c:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2$1;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2$1;->a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    move-result-object p1

    return-object p1
.end method
