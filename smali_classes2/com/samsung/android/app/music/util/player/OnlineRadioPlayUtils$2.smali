.class final Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Ljava/util/List;Lcom/samsung/android/app/music/model/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/util/CollectionsUtils$Condition<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/OnlineTrack;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 285
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/OnlineTrack;->isPlayable()Z

    move-result v0

    .line 287
    instance-of v1, p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 288
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isBanned()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v4, "OnlineRadioPlayUtils"

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filterRadioPlayableOrBan.radio. target - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/OnlineTrack;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/OnlineTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ban - "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {v4, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 282
    check-cast p1, Lcom/samsung/android/app/music/model/OnlineTrack;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$2;->a(Lcom/samsung/android/app/music/model/OnlineTrack;)Z

    move-result p1

    return p1
.end method
