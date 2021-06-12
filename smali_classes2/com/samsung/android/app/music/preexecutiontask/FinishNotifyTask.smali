.class final Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private final a:Lcom/samsung/android/app/music/activity/OnPreExecutionTaskFinishListener;

.field private final b:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

.field private final c:Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->b:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/activity/OnPreExecutionTaskFinishListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->a:Lcom/samsung/android/app/music/activity/OnPreExecutionTaskFinishListener;

    .line 21
    check-cast p1, Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->c:Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->b:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->a:Lcom/samsung/android/app/music/activity/OnPreExecutionTaskFinishListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/activity/OnPreExecutionTaskFinishListener;->onPreExecutionTaskFinished()V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;->c:Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;

    invoke-interface {v0}, Lcom/samsung/android/app/music/bixby/v1/nlg/PreconditionNlg;->onVerifyPreconditionFinished()V

    return-void
.end method
