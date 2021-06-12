.class final Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
.super Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceConnectionIndicationCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/sdk/accessory/SAAdapter;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/c;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessory/c;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/m;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/m;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fetch service profile description failed !!"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "config  util default instance  creation failed !!"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final onServiceConnectionRequested(Landroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "peerAgent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string v0, "transactionId"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "agentId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "agentImplclass"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Implementation class not available in intent. Ignoring request"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "implClass.getSuperclass() :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    const-class p1, Lcom/samsung/android/sdk/accessory/h;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_4

    if-lt v0, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/sdk/accessory/SAJobService;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "transactionId"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "agentId"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "peerAgent"

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "agentImplclass"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/samsung/android/sdk/accessory/SAService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;->a:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->a(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    :goto_4
    if-nez p1, :cond_8

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found. Check Accessory Service XML for serviceImpl attribute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Agent Impl class not found!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to obtain parcel"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "marshalled accessory byte[] is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
