.class Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->a(Landroid/content/Context;I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;",
        "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$2;->a:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$2;->a:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$2;->a:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->apply(Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$2;->a:Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;->a(Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    check-cast p1, Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/AlbumDetailDataLoader$AlbumDetailDataSource$2;->a(Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;)Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;

    move-result-object p1

    return-object p1
.end method
