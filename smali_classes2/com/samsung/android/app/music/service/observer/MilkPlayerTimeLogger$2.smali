.class Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$2;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)V
    .locals 0

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MilkPlayerTimeLogger onError:"

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

    .line 193
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$2;->a(Lcom/samsung/android/app/music/model/ResponseModel;)V

    return-void
.end method
