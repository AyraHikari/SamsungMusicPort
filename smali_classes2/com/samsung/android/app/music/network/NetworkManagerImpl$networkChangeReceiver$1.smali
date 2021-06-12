.class public final Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "NetworkManagerImpl"

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "networkChangeReceiver() | onStarted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    iget-object p2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkManagerImpl;Z)V

    :goto_0
    return-void
.end method
