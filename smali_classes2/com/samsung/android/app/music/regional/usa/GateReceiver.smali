.class public Lcom/samsung/android/app/music/regional/usa/GateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicGateReceiver. received GATE intent. action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GATE"

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_ACTION:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->GATE_INTENT_EXTRA_ENABLED:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 6
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->setGateEnabled(Z)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MusicGateReceiver. received GATE intent. enabled = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->isGateEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->ACTION_SCREEN_TEXT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->EXTRA_SCREEN_TEXT:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 13
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->setGateLcdtextEnabled(Z)V

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MusicGateReceiver. received LCDTEXT intent. enabled = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/feature/GateConfigCompat;->isGateLcdtextEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
