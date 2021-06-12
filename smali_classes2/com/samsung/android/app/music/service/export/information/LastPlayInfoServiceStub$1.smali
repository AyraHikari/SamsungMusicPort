.class Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;
.super Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->a:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastActiveState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LastPlayInfoServiceStub"

    const-string v1, "getLastActiveState is called"

    .line 253
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->a:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)I

    move-result v0

    return v0
.end method

.method public getLastPlayInfo()Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->getCallingUid()I

    move-result v0

    const-string v1, "LastPlayInfoServiceStub"

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastPlayInfo is called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->a:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;I)Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LastPlayInfoServiceStub"

    const-string v1, "isPlaying is called"

    .line 259
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->a:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->b(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)Z

    move-result v0

    return v0
.end method
