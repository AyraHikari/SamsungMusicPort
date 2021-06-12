.class public Lcom/mapps/android/share/GetAdvertisingIdTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/mz/common/listener/AdvertisingIdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mz/common/listener/AdvertisingIdListener;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mapps/android/share/GetAdvertisingIdTask;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/mapps/android/share/GetAdvertisingIdTask;->listener:Lcom/mz/common/listener/AdvertisingIdListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;
    .locals 0

    .line 32
    :try_start_0
    iget-object p1, p0, Lcom/mapps/android/share/GetAdvertisingIdTask;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/mz/common/utils/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mapps/android/share/GetAdvertisingIdTask;->doInBackground([Ljava/lang/Void;)Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mapps/android/share/GetAdvertisingIdTask;->listener:Lcom/mz/common/listener/AdvertisingIdListener;

    invoke-interface {v0, p1}, Lcom/mz/common/listener/AdvertisingIdListener;->onReceivedAdvertisingId(Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;

    invoke-virtual {p0, p1}, Lcom/mapps/android/share/GetAdvertisingIdTask;->onPostExecute(Lcom/mz/common/utils/AdvertisingIdClient$AdInfo;)V

    return-void
.end method
