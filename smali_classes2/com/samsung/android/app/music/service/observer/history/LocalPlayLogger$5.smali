.class Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$5;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 368
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$5;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->d(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 370
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$5;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    :cond_0
    return-void
.end method
