.class Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;ZLcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->d:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->a:Z

    iput-object p3, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->a:Z

    const/16 v1, 0x12c

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->secureSend(I[B)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->b:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$1;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageSocket;->send(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
