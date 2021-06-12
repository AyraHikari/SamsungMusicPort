.class Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "MilkPlayerTimeLoggeradjustment error!"

    .line 465
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MilkPlayerTimeLoggeradjustment done! - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 471
    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isEconomyUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;->getRadioPlayInfo()Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

    move-result-object v0

    .line 475
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;->getEconomyPlayInfo()Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 477
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object v1

    .line 478
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;Lcom/samsung/android/app/music/model/playhistory/PlayCountInfo;)V

    .line 480
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    iget-object p1, p1, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 481
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->i()V

    :cond_4
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "MilkPlayerTimeLogger run! but something is wrong!. mMusicMetadata is null. This should not happened"

    .line 458
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 451
    check-cast p1, Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;->a(Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;)V

    return-void
.end method
