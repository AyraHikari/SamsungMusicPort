.class Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 91
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->b(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Z)Z

    if-nez p2, :cond_0

    const-string p1, "DLC Sender"

    const-string p2, "dlc register reply fail"

    .line 93
    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->d(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "EXTRA_STR"

    .line 105
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EXTRA_RESULT_CODE"

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "DLC Sender"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register DLC result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_2

    const-string p2, "DLC Sender"

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register DLC result fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "EXTRA_STR_ACTION"

    .line 111
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-static {p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, "DLC Sender"

    const-string p2, "dlc register reply fail"

    .line 100
    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
