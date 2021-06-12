.class public Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private final c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->a:Landroid/content/Context;

    .line 26
    check-cast p1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->b:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RootingDetectTask"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performTask is called. token -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->a:Landroid/content/Context;

    const v2, 0x7f0b0492

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;->a:Landroid/content/Context;

    .line 38
    invoke-static {v5}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 37
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask$1;-><init>(Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
