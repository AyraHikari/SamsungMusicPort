.class public Lcom/samsung/android/sdk/spage/card/event/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/spage/card/event/Event;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/spage/card/event/Event;
    .locals 4

    const-string v0, "eventType"

    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "default"

    :cond_0
    const/4 v1, -0x1

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x15d8c085

    if-eq v2, v3, :cond_3

    const v3, 0x1fa1ce81

    if-eq v2, v3, :cond_2

    const v3, 0x5c13d641

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "ItemSelectionEvent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "SearchTextEvent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :pswitch_0
    new-instance v1, Lcom/samsung/android/sdk/spage/card/event/SearchTextEvent;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/sdk/spage/card/event/SearchTextEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1

    .line 69
    :pswitch_1
    new-instance v1, Lcom/samsung/android/sdk/spage/card/event/ItemSelectionEvent;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/sdk/spage/card/event/ItemSelectionEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1

    .line 67
    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/spage/card/event/Event;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/sdk/spage/card/event/Event;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/event/Event;->a:Ljava/lang/String;

    const-string p1, "event"

    .line 97
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/event/Event;->b:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/spage/card/event/Event;->b(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/sdk/spage/card/event/Event;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
