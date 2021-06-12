.class Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/contents/TrackDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V
    .locals 5

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;->getTrackInfo()Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/ArtistModel;

    .line 120
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ", "

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/samsung/android/app/music/model/SimpleTrack;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->b(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {v1, v2, p1}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/model/SimpleTrack;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/samsung/android/app/music/model/contents/TrackDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;->a(Lcom/samsung/android/app/music/model/contents/TrackDetailModel;)V

    return-void
.end method
