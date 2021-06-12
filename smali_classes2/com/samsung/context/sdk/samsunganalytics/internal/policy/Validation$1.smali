.class final Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;->a(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->b(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->a:Landroid/app/Application;

    iget-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation$1;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->a(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method
