.class public Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private economyPlayInfo:Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

.field private freePlayInfo:Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getEconomyPlayInfo()Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->economyPlayInfo:Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    return-object v0
.end method

.method public getRadioPlayInfo()Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->freePlayInfo:Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radio-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->freePlayInfo:Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->freePlayInfo:Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", economy-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->economyPlayInfo:Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->economyPlayInfo:Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
