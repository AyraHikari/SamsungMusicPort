.class Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;",
        "Lio/reactivex/Observable<",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getRadioPlayInfo()Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v1, 0x0

    const-string v2, "Music_25_2"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getRadioPlayInfo()Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getBasicOffer()I

    move-result v1

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getRadioPlayInfo()Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getBonusOffer()I

    move-result v2

    add-int/2addr v1, v2

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getRadioPlayInfo()Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayInfo;->getPlayCount()I

    move-result p1

    sub-int v2, v1, p1

    const-string v3, "totalFreeCount"

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "playCount"

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "freeCount"

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->addValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioPlayCount()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;

    .line 117
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;->getResultCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;-><init>(I)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    check-cast p1, Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$2;->a(Lcom/samsung/android/app/music/model/milkhistory/PlayUsageStatus;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
