.class public final Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# instance fields
.field private a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    :goto_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Ui"

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueActivity | onCreate() - savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "DownloadQueue_DownloadQueueFragment | "

    .line 39
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;-><init>()V

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    const-string v2, "DownloadQueue_DownloadQueueFragment | "

    .line 44
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method
