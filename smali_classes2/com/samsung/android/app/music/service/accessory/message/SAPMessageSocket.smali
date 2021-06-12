.class public Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;
.super Lcom/samsung/android/sdk/accessory/SASocket;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mSAPMessageListener:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    const-class v0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket;-><init>(Ljava/lang/String;)V

    .line 9
    const-class v0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->TAG:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->TAG:Ljava/lang/String;

    const-string v1, "SAPMessageSocket()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;I)V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceive(I[B)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->mSAPMessageListener:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->mSAPMessageListener:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;->a(I[B)V

    :cond_0
    return-void
.end method

.method protected onServiceConnectionLost(I)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->TAG:Ljava/lang/String;

    const-string v0, "onServiceConnectionLost()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->mSAPMessageListener:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->mSAPMessageListener:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;->a(I)V

    :cond_0
    return-void
.end method

.method public setReceiveListener(Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->mSAPMessageListener:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;

    return-void
.end method
