.class public Lcom/samsung/android/sdk/smp/task/STask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;,
        Lcom/samsung/android/sdk/smp/task/STask$CommonAction;,
        Lcom/samsung/android/sdk/smp/task/STask$Action;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/sdk/smp/task/STask$Action;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/task/STask;->a:Lcom/samsung/android/sdk/smp/task/STask$Action;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/task/STask;->b:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/task/STask;
    .locals 3

    const-string v0, "EXTRA_TASKID"

    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "EXTRA_DATA"

    .line 24
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 26
    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->id()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 27
    new-instance p0, Lcom/samsung/android/sdk/smp/task/STask;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->getAction(I)Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    return-object p0

    :cond_0
    const-string v2, "EXTRA_MID"

    .line 29
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    new-instance v2, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->getAction(I)Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/task/STask;->a:Lcom/samsung/android/sdk/smp/task/STask$Action;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/smp/task/STask;->a:Lcom/samsung/android/sdk/smp/task/STask$Action;

    invoke-interface {p1}, Lcom/samsung/android/sdk/smp/task/STask$Action;->id()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x895440

    :goto_0
    return p1
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/STask;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method b(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_TASKID"

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/task/STask;->a(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/sdk/smp/task/STask;->b:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p1, "EXTRA_DATA"

    .line 50
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/task/STask;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method c()Lcom/samsung/android/sdk/smp/task/STask$Action;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/STask;->a:Lcom/samsung/android/sdk/smp/task/STask$Action;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/STask;->a:Lcom/samsung/android/sdk/smp/task/STask$Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/STask;->a:Lcom/samsung/android/sdk/smp/task/STask$Action;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
