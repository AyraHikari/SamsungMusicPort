.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$17;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$17;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 766
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LoginManager"

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() Received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 768
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 769
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 772
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 773
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 775
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 776
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$17;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->j(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    goto :goto_2

    .line 774
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$17;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    goto :goto_2

    .line 770
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$17;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    new-instance v0, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/model/UserInfo;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 771
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$17;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    :cond_4
    :goto_2
    return-void
.end method
