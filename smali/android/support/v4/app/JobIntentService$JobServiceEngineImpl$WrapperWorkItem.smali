.class final Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/JobIntentService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WrapperWorkItem"
.end annotation


# instance fields
.field final mJobWork:Landroid/app/job/JobWorkItem;

.field final synthetic this$0:Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .line 254
    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 3

    .line 265
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    iget-object v0, v0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    iget-object v1, v1, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->this$0:Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    iget-object v1, v1, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    iget-object v2, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 269
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 260
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;->mJobWork:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
