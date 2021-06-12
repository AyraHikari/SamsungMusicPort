.class public abstract Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;
.super Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 284
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1

    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private b(Ljava/util/List;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private m()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->g()V

    const-string v0, "get"

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "registered"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->m()V

    .line 358
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .line 301
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->a:Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j()Landroid/os/Bundle;
    .locals 2

    .line 310
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->a:Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->c(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()Z
    .locals 5

    .line 234
    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->onCreate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 237
    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v2, "registered"

    const-string v3, "registered"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 238
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v2, "pushRegistered"

    const-string v3, "pushRegistered"

    invoke-direct {p0, v3, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 239
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "tryRegistering"

    const-string v2, "tryRegistering"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "nonce"

    const-string v2, "nonce"

    const-string v4, ""

    invoke-direct {p0, v2, v4}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 242
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "authorityList"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 243
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "serviceName"

    const-string v2, "serviceName"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 244
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "deviceId"

    const-string v2, "deviceId"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 246
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "deviceInfo"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->j()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "uploadWifionly"

    const-string v2, "uploadWifionly"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->k()Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 248
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v1, "supportPush"

    const-string v2, "supportPush"

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->l()Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b()Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 252
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v2, "logList"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->c()Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->a(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 256
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->b:Landroid/os/Bundle;

    const-string v2, "plainLogList"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return v3
.end method
