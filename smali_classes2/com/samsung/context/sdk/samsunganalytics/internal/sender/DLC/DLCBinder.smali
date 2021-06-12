.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "com.sec.spp.push"

.field private static b:Ljava/lang/String; = "com.sec.spp.push.dlc.writer.WriterService"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/lang/String;

.field private f:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

.field private g:Z

.field private h:Z

.field private i:Lcom/sec/spp/push/dlc/api/IDlcService;

.field private j:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->g:Z

    .line 47
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->h:Z

    .line 51
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->j:Landroid/content/ServiceConnection;

    .line 73
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->e:Ljava/lang/String;

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".REGISTER_FILTER"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->d:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->d:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->i:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->g:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->e()V

    .line 148
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a:Ljava/lang/String;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->g:Z

    const-string p1, "DLCBinder"

    const-string v0, "bind"

    .line 151
    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->f:Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->e:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->g:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DLCBinder"

    const-string v1, "unbind"

    .line 161
    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->d:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;)V

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->d:Landroid/content/BroadcastReceiver;

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->a()V

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->h:Z

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.spp.push.REQUEST_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_PACKAGENAME"

    .line 130
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_INTENTFILTER"

    .line 131
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.spp.push"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->h:Z

    const-string v0, "DLCBinder"

    const-string v1, "send register Request"

    .line 135
    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send register Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "DLCBinder"

    const-string v1, "already send register request"

    .line 138
    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->g:Z

    return v0
.end method

.method public d()Lcom/sec/spp/push/dlc/api/IDlcService;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->i:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object v0
.end method
