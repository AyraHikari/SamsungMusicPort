.class public Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardProvider;
.super Lcom/samsung/android/sdk/spage/card/CardContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/sdk/spage/card/CardContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;ILcom/samsung/android/sdk/spage/card/event/Event;)V
    .locals 1

    .line 32
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "BixbyAppCardProvider"

    const-string p2, "Bixby app card is not supported on this device."

    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p4, :cond_1

    return-void

    .line 40
    :cond_1
    invoke-virtual {p4}, Lcom/samsung/android/sdk/spage/card/event/Event;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BixbyAppCardProvider"

    .line 41
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveEvent - "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/samsung/android/sdk/spage/card/CardContentManager;[I)V
    .locals 5

    .line 15
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "BixbyAppCardProvider"

    const-string p2, "Bixby app card is not supported on this device."

    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_0
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget v1, p3, v0

    const-string v2, "BixbyAppCardProvider"

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/app/music/bixby/appcard/BixbyAppCardManager;->b()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected a(Landroid/content/Context;[I)V
    .locals 0

    const-string p1, "BixbyAppCardProvider"

    const-string p2, "onEnabled"

    .line 47
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected b(Landroid/content/Context;[I)V
    .locals 0

    const-string p1, "BixbyAppCardProvider"

    const-string p2, "onDisabled"

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
