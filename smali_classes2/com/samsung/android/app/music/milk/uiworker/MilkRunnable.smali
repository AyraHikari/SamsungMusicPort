.class public abstract Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

.field protected c:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->b:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    .line 22
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->c:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected a(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->c:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->c:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;->a(Z)V

    :cond_0
    return-void
.end method

.method protected a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->c:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "LocationTag"

    .line 63
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ResType"

    .line 64
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ResCode"

    .line 65
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->c:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    const/4 p2, 0x1

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;->a(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->c:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;->a(ZLandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->b:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->b:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->a()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->a()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onApiHandled : Receive Result from Service ID("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") Type("

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->a(Z)V

    return-void
.end method
