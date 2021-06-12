.class Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;
.super Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 4

    .line 46
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->a(ILjava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->v()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 50
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d(I)V

    .line 52
    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x190

    if-lt p1, p2, :cond_0

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 60
    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-long p1, v1

    const-wide/32 v0, 0x36ee80

    mul-long p1, p1, v0

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/data/DataManager;->a(Landroid/content/Context;J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-gt v1, p1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->a(Landroid/content/Context;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method a()Z
    .locals 3

    .line 21
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 23
    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->a:Ljava/lang/String;

    const-string v1, "fail to get appid"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->b(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->a:Ljava/lang/String;

    const-string v1, "fail to get smpid"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 33
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method a(Ljava/lang/String;)Z
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsNormalHandler;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
