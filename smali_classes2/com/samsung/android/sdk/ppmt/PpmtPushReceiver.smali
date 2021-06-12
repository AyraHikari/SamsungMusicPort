.class public Lcom/samsung/android/sdk/ppmt/PpmtPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 15
    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string v0, "msg"

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ppmt"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 19
    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/Ppmt;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method
