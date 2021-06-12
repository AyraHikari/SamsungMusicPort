.class public Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final manager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private final managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "rcp"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->manager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 22
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->manager:Lcom/samsung/android/knox/SemRemoteContentManager;

    :goto_0
    return-void
.end method


# virtual methods
.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 31
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->manager:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/knox/SemRemoteContentManager;->moveFiles(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide p1

    return-wide p1
.end method

.method public moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .line 47
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->manager:Lcom/samsung/android/knox/SemRemoteContentManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/SemRemoteContentManager;->moveFiles(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/os/RCPManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;

    .line 55
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide p1

    return-wide p1
.end method
