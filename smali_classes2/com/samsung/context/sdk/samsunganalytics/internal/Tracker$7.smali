.class Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "DID"

    .line 365
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->c(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "Get CF id empty"

    .line 370
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const-string v0, "Get CF id"

    .line 373
    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {v0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Ljava/lang/String;I)V

    .line 376
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;->a:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->a(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
