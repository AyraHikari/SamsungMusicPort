.class public Lcom/samsung/android/sdk/ppmt/schedule/Job;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;,
        Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;,
        Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;,
        Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;


# instance fields
.field private b:Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b:Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/ppmt/schedule/Job;
    .locals 4

    const-string v0, "EXTRA_JOBID"

    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 57
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b(I)Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    move-result-object v0

    .line 58
    instance-of v1, v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    check-cast v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    const-string v2, "EXTRA_EXTRAS"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_MID"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob;-><init>(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v1

    .line 61
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/ppmt/schedule/Job;

    const-string v2, "EXTRA_EXTRAS"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/sdk/ppmt/schedule/Job;-><init>(Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static b(I)Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;
    .locals 1

    .line 181
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const v0, 0x895440

    sub-int/2addr p0, v0

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    .line 185
    div-int/2addr p0, v0

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->getEvent(I)Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    move-result-object p0

    return-object p0

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->getEvent(I)Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/ppmt/schedule/Job;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a:Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    if-nez v1, :cond_1

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtScheduler;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/schedule/PpmtScheduler;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/ppmt/schedule/PpmtJobScheduler;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/schedule/PpmtJobScheduler;-><init>()V

    :goto_0
    sput-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a:Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    .line 69
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job;->a:Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b:Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    const v0, 0x895440

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b:Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    invoke-interface {p1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;->number()I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_0
    return v0
.end method

.method public a(I)Landroid/os/Bundle;
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_JOBID"

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    iget-object p1, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p1, "EXTRA_EXTRAS"

    .line 50
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public a()Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b:Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b:Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/schedule/Job;->b:Lcom/samsung/android/sdk/ppmt/schedule/Job$Event;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
