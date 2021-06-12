.class final Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/util/CollectionsUtils$Condition<",
        "Lcom/samsung/android/app/music/model/base/TrackModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/base/TrackModel;)Z
    .locals 6

    .line 435
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isPlayable()Z

    move-result v0

    .line 436
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->isBanned()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v3, "OnlineContentPlayUtils"

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterTrackPlayableOrBan. target - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/TrackModel;->getTrackTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ban - "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-static {v3, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 432
    check-cast p1, Lcom/samsung/android/app/music/model/base/TrackModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$6;->a(Lcom/samsung/android/app/music/model/base/TrackModel;)Z

    move-result p1

    return p1
.end method
