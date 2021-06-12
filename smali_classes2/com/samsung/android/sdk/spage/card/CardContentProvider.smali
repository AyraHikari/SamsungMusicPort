.class public abstract Lcom/samsung/android/sdk/spage/card/CardContentProvider;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;I)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;II)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;ILcom/samsung/android/sdk/spage/card/event/Event;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;[I)V
.end method

.method protected abstract a(Landroid/content/Context;[I)V
.end method

.method protected abstract b(Landroid/content/Context;[I)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.spage.action.CARD_UPDATE"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a()Lcom/samsung/android/sdk/spage/card/CardContentManager;

    move-result-object v0

    const-string v1, "IdNo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/spage/card/CardContentProvider;->a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;[I)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "com.samsung.android.app.spage.action.CARD_ENABLED"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "IdNo"

    .line 106
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/spage/card/CardContentProvider;->a(Landroid/content/Context;[I)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.samsung.android.app.spage.action.CARD_DISABLED"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "IdNo"

    .line 108
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/spage/card/CardContentProvider;->b(Landroid/content/Context;[I)V

    goto :goto_0

    :cond_2
    const-string v1, "com.samsung.android.app.spage.action.CARD_EVENT"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 114
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/sdk/spage/card/event/Event;->a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/spage/card/event/Event;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 116
    invoke-static {}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a()Lcom/samsung/android/sdk/spage/card/CardContentManager;

    move-result-object v1

    const-string v3, "IdNo"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/samsung/android/sdk/spage/card/CardContentProvider;->a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;ILcom/samsung/android/sdk/spage/card/event/Event;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.samsung.android.app.spage.action.CARD_INSTANT_UPDATE"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "CardContentProvider"

    const-string v1, "onReceive Instant update"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "updateCode"

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    invoke-static {}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a()Lcom/samsung/android/sdk/spage/card/CardContentManager;

    move-result-object v1

    const-string v3, "IdNo"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/samsung/android/sdk/spage/card/CardContentProvider;->a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;II)V

    goto :goto_0

    :cond_5
    const-string p1, "CardContentProvider"

    const-string p2, "wrong update code - zero"

    .line 124
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v1, "com.samsung.android.app.spage.action.MULTI_INSTANCE_PREFERENCE_UPDATE"

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    invoke-static {}, Lcom/samsung/android/sdk/spage/card/CardContentManager;->a()Lcom/samsung/android/sdk/spage/card/CardContentManager;

    move-result-object v0

    const-string v1, "IdNo"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/spage/card/CardContentProvider;->a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;I)V

    :cond_7
    :goto_0
    return-void
.end method
