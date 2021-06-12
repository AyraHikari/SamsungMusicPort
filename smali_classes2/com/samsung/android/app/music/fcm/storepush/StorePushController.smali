.class public Lcom/samsung/android/app/music/fcm/storepush/StorePushController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/fcm/storepush/StorePushController$PushPublisher;
    }
.end annotation


# static fields
.field private static final KEY_PUSH_BODY:Ljava/lang/String; = "msg"

.field private static final LOG_TAG:Ljava/lang/String; = "StorePushController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleMessage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "StorePushController"

    const-string p1, "intent is null"

    .line 54
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "extra_marketing_push"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/fcm/storepush/ParcelableUtils;->toParcelable([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    if-nez p1, :cond_1

    const-string p0, "StorePushController"

    const-string p1, "model is null"

    .line 63
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushHandleTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;Ljava/lang/String;)V

    return-void
.end method

.method public static sendLoggingApi(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Z
    .locals 3

    const-string v0, "StorePushController"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLoggingApi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;

    move-result-object p0

    .line 75
    invoke-static {p1}, Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;->create(Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;)Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushTransport;->sendPushLogging(Lcom/samsung/android/app/music/fcm/storepush/LoggingRequestModel;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/fcm/storepush/StorePushController$1;

    invoke-direct {p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushController$1;-><init>()V

    .line 76
    invoke-interface {p0, p1}, Lretrofit2/Call;->a(Lretrofit2/Callback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static sendMessage(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    :try_start_0
    const-string v1, "msg"

    .line 39
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "app"

    .line 41
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 43
    const-class v2, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;

    .line 45
    new-instance v1, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 46
    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushMessageTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "StorePushController"

    const-string p1, "push msg doesn\'t match pre-defined json format!"

    .line 48
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
