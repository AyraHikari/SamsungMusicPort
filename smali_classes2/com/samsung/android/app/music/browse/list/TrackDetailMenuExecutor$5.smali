.class Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/recommend/PlayerModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

.field final synthetic b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/recommend/PlayerModel;)V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7f0b014c

    if-eqz p1, :cond_4

    .line 213
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/recommend/PlayerModel;->getPlaylists()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/recommend/PlayerModel;->getPlaylists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 215
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/recommend/PlayerModel;->getResultCode()I

    move-result v2

    const/16 v3, 0x1009

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/recommend/PlayerModel;->getPlaylists()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/PlayListModel;

    const-string v3, "BS"

    .line 226
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getRecommendType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 p1, 0x5a

    .line 227
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object p1

    .line 228
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    .line 229
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/app/Activity;)V

    .line 230
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    if-eqz p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->a:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;->a(Z)V

    :cond_2
    return-void

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    :goto_0
    const-string p1, "TrackDetailMenuExecutor"

    const-string v2, "similarSong. onNext. no recommended song."

    .line 217
    invoke-static {p1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "TrackDetailMenuExecutor"

    const-string v1, "similarSong. onError"

    .line 243
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 245
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->b:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;-><init>(Landroid/app/Activity;)V

    .line 246
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/ErrorHandler;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Lcom/samsung/android/app/music/model/recommend/PlayerModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$5;->a(Lcom/samsung/android/app/music/model/recommend/PlayerModel;)V

    return-void
.end method
