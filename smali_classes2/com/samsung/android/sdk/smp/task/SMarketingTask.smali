.class public Lcom/samsung/android/sdk/smp/task/SMarketingTask;
.super Lcom/samsung/android/sdk/smp/task/STask;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    .line 15
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->c()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f(Ljava/lang/String;)I

    move-result v0

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->c()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/smp/task/STask$Action;->id()I

    move-result p1

    rem-int/lit16 v0, v0, 0x3e8

    add-int/2addr p1, v0

    return p1

    :cond_0
    const p1, 0x895440

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->a:Ljava/lang/String;

    return-object v0
.end method

.method b(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/task/STask;->b(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "EXTRA_MID"

    .line 46
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/task/STask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
