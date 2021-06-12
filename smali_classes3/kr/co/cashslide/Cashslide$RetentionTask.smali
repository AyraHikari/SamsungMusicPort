.class Lkr/co/cashslide/Cashslide$RetentionTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/cashslide/Cashslide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetentionTask"
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
.field private ctx:Landroid/content/Context;

.field final synthetic this$0:Lkr/co/cashslide/Cashslide;


# direct methods
.method public constructor <init>(Lkr/co/cashslide/Cashslide;Landroid/content/Context;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lkr/co/cashslide/Cashslide$RetentionTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 225
    iput-object p2, p0, Lkr/co/cashslide/Cashslide$RetentionTask;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 231
    :try_start_0
    iget-object p1, p0, Lkr/co/cashslide/Cashslide$RetentionTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {p1}, Lkr/co/cashslide/Cashslide;->access$100(Lkr/co/cashslide/Cashslide;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkr/co/cashslide/AdvertisingIdHelper;->updateAdIdSynchronized(Landroid/content/Context;)V

    .line 232
    iget-object p1, p0, Lkr/co/cashslide/Cashslide$RetentionTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {p1}, Lkr/co/cashslide/Cashslide;->access$200(Lkr/co/cashslide/Cashslide;)Lkr/co/cashslide/Request;

    move-result-object p1

    iget-object v0, p0, Lkr/co/cashslide/Cashslide$RetentionTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {v0}, Lkr/co/cashslide/Cashslide;->access$400(Lkr/co/cashslide/Cashslide;)Lkr/co/cashslide/ActionCache;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/cashslide/ActionCache;->getRetentionCount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lkr/co/cashslide/Request;->sendRetention(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lkr/co/cashslide/Cashslide$RetentionTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {v0}, Lkr/co/cashslide/Cashslide;->access$400(Lkr/co/cashslide/Cashslide;)Lkr/co/cashslide/ActionCache;

    move-result-object v0

    iget-object v1, p0, Lkr/co/cashslide/Cashslide$RetentionTask;->this$0:Lkr/co/cashslide/Cashslide;

    invoke-static {v1}, Lkr/co/cashslide/Cashslide;->access$500(Lkr/co/cashslide/Cashslide;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/cashslide/ActionCache;->saveRecommend(Ljava/lang/String;)V

    .line 236
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "CashslideSDK"

    .line 238
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

    .line 240
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lkr/co/cashslide/Cashslide$RetentionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 221
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lkr/co/cashslide/Cashslide$RetentionTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
