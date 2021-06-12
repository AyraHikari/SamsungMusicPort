.class Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;Landroid/content/Context;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;->b:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;->getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeepLink-DeprecatedServiceTask"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playStation - playlist id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;->a:Landroid/content/Context;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;->b:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "DeepLink-DeprecatedServiceTask"

    const-string v0, "playStation - playlist null"

    .line 164
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;->b:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->b(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    goto :goto_0

    :cond_1
    const-string p1, "DeepLink-DeprecatedServiceTask"

    const-string v0, "playStation - playlistDetail null"

    .line 168
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;->b:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->b(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "DeepLink-DeprecatedServiceTask"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playStation - error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;->b:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->b(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p1, Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;->a(Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;)V

    return-void
.end method
