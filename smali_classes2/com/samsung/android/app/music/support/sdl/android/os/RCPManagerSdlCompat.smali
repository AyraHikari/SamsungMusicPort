.class public Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final manager:Landroid/os/RCPManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rcp"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RCPManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->manager:Landroid/os/RCPManager;

    return-void
.end method


# virtual methods
.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 1
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

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->manager:Landroid/os/RCPManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RCPManager;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, -0x1

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

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/os/RCPManagerSdlCompat;->manager:Landroid/os/RCPManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/RCPManager;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method
