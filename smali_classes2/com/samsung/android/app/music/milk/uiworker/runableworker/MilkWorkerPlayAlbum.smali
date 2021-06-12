.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "SourceFile"


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 28
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "MilkWorkerPlayAlbum"

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->b()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MilkWorkerPlayAlbum"

    const-string v1, "run : Milk service is empty"

    .line 40
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "MilkWorkerPlayAlbum"

    const-string v2, "NOT_DEFINE"

    const-string v3, "not Initialized"

    .line 41
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->d:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum$1;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;)V

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)V

    return-void
.end method
