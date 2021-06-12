.class public final Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 69
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 70
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "UiList"

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Network connect success"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "UiList"

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Network connect fail"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$wifiStateListener$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->a(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;Z)V

    :cond_1
    :goto_0
    return-void
.end method
