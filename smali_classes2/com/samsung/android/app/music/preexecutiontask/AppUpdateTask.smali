.class public Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/samsung/android/app/music/update/AppUpdateCheckObservable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable;

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;->b:Lcom/samsung/android/app/music/update/AppUpdateCheckObservable;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;->b:Lcom/samsung/android/app/music/update/AppUpdateCheckObservable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable;->setAppUpdateStatus(I)V

    return-void
.end method
