.class public Lcom/samsung/android/sdk/ppmt/schedule/CardJob;
.super Lcom/samsung/android/sdk/ppmt/schedule/Job;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/Job;-><init>(Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;Landroid/os/Bundle;)V

    .line 18
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    move-result-object v0

    const v1, 0x895440

    if-eqz v0, :cond_2

    .line 24
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;)I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const/4 p1, -0x1

    if-ne v0, p1, :cond_1

    return v1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;->number()I

    move-result p1

    mul-int/lit16 p1, p1, 0x2710

    rem-int/lit16 v0, v0, 0x2710

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    return p1

    :cond_2
    return v1
.end method

.method public a(I)Landroid/os/Bundle;
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_MID"

    .line 50
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
