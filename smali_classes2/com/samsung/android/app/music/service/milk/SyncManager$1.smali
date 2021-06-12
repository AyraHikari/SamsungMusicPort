.class Lcom/samsung/android/app/music/service/milk/SyncManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/SyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/SyncManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager$1;->a:Lcom/samsung/android/app/music/service/milk/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager$1;->a:Lcom/samsung/android/app/music/service/milk/SyncManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/SyncManager;->a(Lcom/samsung/android/app/music/service/milk/SyncManager;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
