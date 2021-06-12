.class final Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/sync/ListSyncManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 8

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->d(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Ljava/lang/Boolean;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Ljava/lang/Boolean;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->d(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 40
    sget-object v1, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkStateChanged() networkConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->e(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
