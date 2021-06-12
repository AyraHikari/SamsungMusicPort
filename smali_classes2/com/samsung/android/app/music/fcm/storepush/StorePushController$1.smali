.class final Lcom/samsung/android/app/music/fcm/storepush/StorePushController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/fcm/storepush/StorePushController;->sendLoggingApi(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/samsung/android/app/music/fcm/storepush/LoggingResponseModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/fcm/storepush/LoggingResponseModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p1, "StorePushController"

    const-string p2, "onFailure"

    .line 92
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/music/fcm/storepush/LoggingResponseModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/samsung/android/app/music/fcm/storepush/LoggingResponseModel;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p2}, Lretrofit2/Response;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p2}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/fcm/storepush/LoggingResponseModel;

    const-string p2, "StorePushController"

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResponse : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/LoggingResponseModel;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "response body is null "

    :goto_0
    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "StorePushController"

    const-string p2, "onResponse is not successful "

    .line 86
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
