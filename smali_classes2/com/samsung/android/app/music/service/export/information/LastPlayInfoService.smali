.class public Lcom/samsung/android/app/music/service/export/information/LastPlayInfoService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "LastPlayInfoService"

    .line 16
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoService;->a:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->a()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "LastPlayInfoService"

    const-string v1, "onCreate is called"

    .line 21
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoService;->a:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "LastPlayInfoService"

    const-string v1, "onDestroy is called"

    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "LastPlayInfoService"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy rootIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1}, Landroid/app/IntentService;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method
