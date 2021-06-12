.class Lcom/samsung/android/app/music/service/milk/MilkService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/MilkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$1;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MilkService"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() action - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$1;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/MilkService;->stopSelf()V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.radio.action.push_token_updated"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "extra_push_token"

    .line 154
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 156
    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$1;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {p2}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$1;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->a()I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/music/model/PushInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/model/PushInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(ILcom/samsung/android/app/music/model/PushInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
