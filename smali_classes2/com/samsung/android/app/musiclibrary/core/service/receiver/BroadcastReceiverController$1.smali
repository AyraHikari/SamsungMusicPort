.class Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SMUSIC-SV-Receiver"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error happened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
