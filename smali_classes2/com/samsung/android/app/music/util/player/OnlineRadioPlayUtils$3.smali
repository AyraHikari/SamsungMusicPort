.class final Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$3;
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

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/OnlineTrack;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 306
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/OnlineTrack;->isRadioPlayable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OnlineRadioPlayUtils"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterRadioPlayableOrBan.radio. target - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/OnlineTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/OnlineTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/music/model/OnlineTrack;->isRadioPlayable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 303
    check-cast p1, Lcom/samsung/android/app/music/model/OnlineTrack;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$3;->a(Lcom/samsung/android/app/music/model/OnlineTrack;)Z

    move-result p1

    return p1
.end method
