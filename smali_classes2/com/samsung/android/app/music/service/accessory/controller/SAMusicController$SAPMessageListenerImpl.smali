.class Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/accessory/message/SAPMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SAPMessageListenerImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;-><init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->a(I)Z

    move-result v0

    .line 227
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionLost("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string p1, "empty"

    goto :goto_0

    :cond_0
    const-string p1, "not empty"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(I[B)V
    .locals 1

    .line 210
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReceiveSAPMessage()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 211
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$2;-><init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;[B)V

    const-string p2, "THR:SAPMessageListenerReceiver"

    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 212
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onReceiveSAPMessage(): There is no received data."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3

    .line 180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSendSAPMessage(): There is no sending message."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageConnections;->b()Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSendSAPMessage(): There is no socket connection."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;-><init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;ZLcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;Ljava/lang/String;)V

    const-string p1, "THR:SAPMessageListenerSender"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
