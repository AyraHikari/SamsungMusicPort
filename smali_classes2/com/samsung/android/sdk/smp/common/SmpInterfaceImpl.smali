.class public Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SmpInterfaceImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 1

    .line 302
    new-instance v0, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 303
    invoke-static {p0, v0, p4}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object p1

    .line 304
    iget-boolean p2, p1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 306
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "optinsts"

    .line 307
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 308
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Z)V

    .line 310
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(J)V

    .line 311
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "optin"

    .line 312
    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "optin_time"

    .line 313
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 316
    :catch_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const-string p2, "SMP_0502"

    .line 317
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Invalid server response"

    .line 318
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, p4, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    .line 322
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 323
    iget p2, p1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    const/16 p3, 0x3e8

    if-ge p2, p3, :cond_1

    const-string p2, "error_code"

    const-string p3, "SMP_0501"

    .line 324
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "error_message"

    .line 325
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internal server error - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_1
    iget p1, p1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_3

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    const-string p1, "error_code"

    const-string p2, "SMP_0401"

    .line 339
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Internal error"

    .line 340
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "error_code"

    const-string p2, "SMP_0502"

    .line 335
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Invalid server response"

    .line 336
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :pswitch_0
    const-string p1, "error_code"

    const-string p2, "SMP_0301"

    .line 331
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Network is not available"

    .line 332
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, p4, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZI)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;

    monitor-enter v0

    .line 185
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set optin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->b(Landroid/content/Context;ZI)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->c(Landroid/content/Context;ZI)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpResult;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 196
    sget-object p1, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    const-string p2, "opt-in success"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    const-string p2, "opt-out success"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, ""

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpResult;->b()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/SmpResult;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "error_code"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 205
    sget-object p1, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opt-in fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opt-out fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 184
    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 10

    .line 59
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    const-string v0, "init but not on main process. do nothing."

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Z)V

    .line 70
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/PushHelper;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->f(Landroid/content/Context;)V

    .line 72
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/PushHelper;->a(Landroid/content/Context;)V

    goto :goto_3

    .line 74
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 75
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->h(Landroid/content/Context;)V

    goto :goto_3

    .line 78
    :cond_4
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/push/PushHelper;->c(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->j()J

    move-result-wide v2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->u()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    mul-long v6, v6, v8

    add-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    .line 82
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 83
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->i(Landroid/content/Context;)V

    goto :goto_2

    .line 85
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    .line 87
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    const-string v2, "device time is changed. update last upload time"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c(J)V

    .line 91
    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 92
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 165
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    const-string v1, "set uid"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 169
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->f()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->f(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 174
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Z)V

    const-wide/16 p0, 0x0

    .line 175
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(J)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/SmpInitOptions;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Landroid/content/Context;)V

    .line 50
    sget-object p1, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    const-string v0, "init"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a(Lcom/samsung/android/sdk/smp/SmpInitOptions;)V

    .line 53
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/DataManager;->b()V

    .line 55
    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->INITIALIZE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 733
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 734
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object p2, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SET_APPFILTER:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 476
    new-instance v1, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 480
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    .line 482
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 483
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 488
    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 489
    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_2

    .line 490
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 491
    sget-object v9, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v9, v4}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ppmt_notice_cid"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    sget-object v9, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Marketing:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    .line 492
    invoke-virtual {v9, v4}, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ppmt_marketing_cid"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 494
    :cond_1
    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 498
    :cond_2
    invoke-virtual {v1, v6, v5}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channel - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not created"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Channel - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not created. Channel must be created before setNotifChannel()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz v3, :cond_5

    .line 502
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->b(Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method private static b(Landroid/content/Context;ZI)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 7

    .line 213
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 214
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->f()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 217
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const-string p2, "SMP_0201"

    .line 218
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Appid is not set. Should request after Smp.init is called"

    .line 219
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v4, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    .line 222
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const-string p2, "SMP_0202"

    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Userid is not set. Should request after Smp.setUserId is called"

    .line 225
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v4, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    .line 228
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 230
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "error_code"

    const-string p2, "SMP_0203"

    .line 231
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error_message"

    const-string p2, "Network on main thread error. Should request in worker thread"

    .line 232
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v4, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    .line 237
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->g()Z

    move-result v3

    if-ne v3, p1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->h()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 238
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "optin"

    .line 239
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "optin_time"

    .line 240
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->h()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 241
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    .line 244
    :cond_3
    invoke-static {p0, v1, v2, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/samsung/android/sdk/smp/SmpResult;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 127
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    const-string v1, "app updated"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_APP_UPDATE_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
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

    .line 739
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 740
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 741
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 742
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 743
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 748
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SET_APPFILTER:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void
.end method

.method private static c(Landroid/content/Context;ZI)Lcom/samsung/android/sdk/smp/SmpResult;
    .locals 5

    .line 248
    new-instance p2, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 249
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->g()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    .line 250
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optin"

    .line 251
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "optin_time"

    .line 252
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->h()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1

    .line 256
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 257
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Z)V

    .line 258
    invoke-virtual {p2, v1, v2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(J)V

    .line 259
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "optin"

    .line 260
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "optin_time"

    .line 261
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 262
    new-instance p1, Lcom/samsung/android/sdk/smp/SmpResult;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/smp/SmpResult;-><init>(ZLandroid/os/Bundle;)V

    return-object p1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 132
    sget-object v0, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a:Ljava/lang/String;

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->b(Landroid/content/Context;)V

    .line 135
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->g(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .line 402
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 4

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 103
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized f(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;

    monitor-enter v0

    .line 113
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->x()Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 121
    :cond_0
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->a(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v0

    throw p0
.end method
