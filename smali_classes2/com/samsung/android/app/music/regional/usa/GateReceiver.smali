.class public Lcom/samsung/android/app/music/regional/usa/GateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GATE"

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicGateReceiver. received GATE intent. action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_ACTION:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 24
    sget-object p1, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;

    .line 25
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 24
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->setGateEnabled(Z)V

    const-string p1, "GATE"

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MusicGateReceiver. received GATE intent. enabled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->isGateEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->ACTION_SCREEN_TEXT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    sget-object p1, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->EXTRA_SCREEN_TEXT:Ljava/lang/String;

    .line 30
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 29
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->setGateLcdtextEnabled(Z)V

    const-string p1, "GATE"

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MusicGateReceiver. received LCDTEXT intent. enabled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->isGateLcdtextEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
