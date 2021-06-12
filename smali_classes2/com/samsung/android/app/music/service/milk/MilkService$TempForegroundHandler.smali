.class public Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TempForegroundHandler"
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "TempForegroundHandler"


# instance fields
.field private b:Landroid/app/Service;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/app/Service;)V
    .locals 2

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->c:Landroid/os/Handler;

    .line 431
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b:Landroid/app/Service;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;)Landroid/app/Service;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b:Landroid/app/Service;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 419
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    monitor-enter p0

    .line 450
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->a:Ljava/lang/String;

    const-string v1, "tempForegroundAndStopForeground."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_stop_foreground"

    const/4 v2, 0x1

    .line 456
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    .line 458
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 459
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "com.samsung.android.app.music.NOTICES"

    invoke-direct {v1, p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7f02052e

    .line 460
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 462
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b:Landroid/app/Service;

    const v1, 0x6b1ea33

    invoke-virtual {v0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 449
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;)Landroid/os/Handler;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 478
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler$1;-><init>(Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->d:Ljava/lang/Runnable;

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "extra_start_with_foreground"

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->isOverO()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b:Landroid/app/Service;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->a(Landroid/content/Context;)V

    return v2

    :cond_0
    const-string v0, "extra_stop_foreground"

    .line 441
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;->b()V

    return v2

    :cond_1
    return v1
.end method
