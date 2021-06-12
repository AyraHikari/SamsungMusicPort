.class public Lcom/samsung/android/app/music/fcm/FcmController;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/samsung/android/app/music/fcm/PPMT/PpmtController;->a(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/samsung/android/app/music/fcm/FcmController;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    const-string v0, "FcmController"

    const-string v1, "onMessageReceived"

    .line 67
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FcmController"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ppmt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/fcm/PPMT/PpmtController;->a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/fcm/storepush/StorePushController;->sendMessage(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.sec.samsung.music.app.KEY_PUSH_TOKEN"

    .line 32
    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/fcm/PPMT/PpmtController;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "FcmController"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FCM Registration Token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.radio.action.push_token_updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_push_token"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-static {p0}, Lcom/samsung/android/app/music/fcm/PPMT/PpmtController;->b(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/fcm/FcmController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/fcm/FcmController$1;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Channels"

    const-string v1, "setChannel"

    .line 84
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Builder;

    const-string v1, "com.samsung.android.app.music.NOTICES"

    const-string v2, "com.samsung.android.app.music.MARKETING"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Builder;->a()Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo;

    move-result-object v0

    .line 89
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo;)V

    return-void
.end method
