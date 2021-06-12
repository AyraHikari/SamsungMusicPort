.class Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b(Lcom/samsung/android/app/music/model/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;)V
    .locals 10

    const-string v0, "MyInfo_MyInfoDataController | "

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNext >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getRadioPlayInfo()Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getBasicOffer()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getBonusOffer()I

    move-result v2

    add-int v5, v1, v2

    .line 272
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getPlayCount()I

    move-result v7

    .line 274
    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    .line 275
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sub-int v6, v5, v7

    .line 277
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 278
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getUsagePeriod()Ljava/lang/String;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;)V

    const-string v0, "MyInfo_MyInfoDataController | "

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radio data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->g()Lcom/samsung/android/app/music/milk/store/myinfo/RadioData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getEconomyPlayInfo()Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getBasicOffer()I

    move-result v0

    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getPlayCount()I

    move-result v1

    .line 288
    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;

    sub-int v3, v0, v1

    .line 290
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getUsagePeriod()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, v3, v1, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;-><init>(IIILjava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;->a(Lcom/samsung/android/app/music/milk/store/myinfo/EconomyData;)V

    goto :goto_0

    :cond_1
    const-string v0, "MyInfo_MyInfoDataController | "

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioPlayInfo fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getResultCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "MyInfo_MyInfoDataController | "

    const-string v1, "onComplete >> "

    .line 254
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;)Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 260
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 251
    check-cast p1, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$4;->a(Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;)V

    return-void
.end method
