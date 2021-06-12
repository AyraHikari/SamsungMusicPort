.class Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/advertise/AdPlayType;Ljava/lang/String;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/TrackListInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;

    iput-object p3, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/TrackListInfo;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/TrackListInfo;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/TrackListInfo;->getTracks()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/Track;

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;->a:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;

    .line 264
    invoke-static {v2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;Lcom/samsung/android/app/music/model/Track;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;->b:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-static {v1, v2, v3, v4, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;->a(Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager;JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p1

    .line 263
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$OnPlayingItemCompleted;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "SMUSIC-SV-RadioQueue"

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdPlayingItemAsync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p1, Lcom/samsung/android/app/music/model/TrackListInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioAdManager$1;->a(Lcom/samsung/android/app/music/model/TrackListInfo;)V

    return-void
.end method
