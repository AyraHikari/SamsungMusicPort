.class Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$1;
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
        "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)V
    .locals 6

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a:Landroid/support/v4/app/FragmentActivity;

    const/16 v1, 0xa

    new-instance v2, Lcom/samsung/android/app/music/milk/share/ShareItem;

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$1;->a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)V

    return-void
.end method
