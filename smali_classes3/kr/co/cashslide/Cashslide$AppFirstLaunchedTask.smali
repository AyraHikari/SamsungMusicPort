.class Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/cashslide/Cashslide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppFirstLaunchedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field final synthetic this$0:Lkr/co/cashslide/Cashslide;


# direct methods
.method private constructor <init>(Lkr/co/cashslide/Cashslide;Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p2, p0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->ctx:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lkr/co/cashslide/Cashslide;Landroid/content/Context;Lkr/co/cashslide/Cashslide$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;-><init>(Lkr/co/cashslide/Cashslide;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 51
    :try_start_0
    iget-object p1, p0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {p1}, Lkr/co/cashslide/Cashslide;->access$100(Lkr/co/cashslide/Cashslide;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkr/co/cashslide/AdvertisingIdHelper;->updateAdIdSynchronized(Landroid/content/Context;)V

    .line 52
    iget-object p1, p0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {p1}, Lkr/co/cashslide/Cashslide;->access$200(Lkr/co/cashslide/Cashslide;)Lkr/co/cashslide/Request;

    move-result-object p1

    invoke-virtual {p1}, Lkr/co/cashslide/Request;->sendAppFirstLaunched()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CashslideSDK"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 64
    iget-object v0, p0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {p1}, Lkr/co/cashslide/Cashslide;->access$100(Lkr/co/cashslide/Cashslide;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 67
    :cond_0
    iget-object v0, p0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {v0}, Lkr/co/cashslide/Cashslide;->access$200(Lkr/co/cashslide/Cashslide;)Lkr/co/cashslide/Request;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/cashslide/Request;->getReward()I

    move-result v0

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "kr.co.cashslide.REWARD_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "REWARD_COST"

    .line 69
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "PACKAGE_NAME"

    .line 70
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object p1, p0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CashslideSDK"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
