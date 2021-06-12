.class Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;)V
    .locals 4

    const-string v0, "BrowseTrackHeaderManager"

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlayRadio.onSuccess. audioId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->a()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", preview - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->f(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BrowseTrackHeaderManager"

    const-string v1, "mAdInfo == null"

    .line 368
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->f(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "BrowseTrackHeaderManager"

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAdInfo.isVideoAdOn() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    iget-object v2, v2, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->f(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/AdInfo;->isVideoAdOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->f(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->f(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/AdInfo;->isVideoAdOn()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;->b()Z

    move-result p1

    if-nez p1, :cond_4

    .line 378
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;

    iget-object p1, p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$7;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 379
    invoke-static {p1}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->d()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "BrowseTrackHeaderManager"

    const-string v1, "initPlayRadio : isVideoAdOn is false"

    .line 380
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    const-string v1, "adVideoInterval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "BrowseTrackHeaderManager"

    const-string v3, "adVideoInterval json option is false"

    .line 387
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {p1}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    const-string v0, "BrowseTrackHeaderManager"

    const-string v3, "initPlayRadio : video ad play"

    .line 396
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-object v0, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->VIDEO:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVideoActivity;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V

    .line 399
    invoke-static {p1}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Z)V

    goto :goto_2

    :cond_4
    const-string p1, "BrowseTrackHeaderManager"

    const-string v0, "initPlayRadio : mFragment is null !!!"

    .line 403
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "BrowseTrackHeaderManager"

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlayRadio.onError. e - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
