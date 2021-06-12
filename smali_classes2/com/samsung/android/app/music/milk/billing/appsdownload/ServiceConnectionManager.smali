.class public abstract Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;,
        Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/content/ServiceConnection;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->c:Ljava/util/List;

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->d:Landroid/content/ServiceConnection;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->e:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "ServiceConnectionManager"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceBinder entry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->f()V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b()V

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->e()V

    goto :goto_0

    .line 47
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->c()V

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->d()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;Landroid/os/IBinder;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b(Landroid/os/IBinder;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;

    .line 66
    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;->a()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private b(Landroid/os/IBinder;)V
    .locals 2

    .line 91
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Landroid/os/IBinder;)V

    .line 98
    sget-object p1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->PREPARED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;

    .line 73
    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;->b()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 118
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 115
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    :goto_0
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 4

    .line 131
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.samsungapps"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->d:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 134
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 137
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 3

    const-string v0, "ServiceConnectionManager ServiceBinder"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)V
.end method

.method public a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;)V
    .locals 3

    const-string v0, "ServiceConnectionManager ServiceBinder"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object p1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->a:[I

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 183
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->c()V

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b()V

    goto :goto_0

    .line 175
    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->INIT:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 172
    :pswitch_3
    sget-object p1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->INIT:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->g()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->b:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a()V

    return-void
.end method
