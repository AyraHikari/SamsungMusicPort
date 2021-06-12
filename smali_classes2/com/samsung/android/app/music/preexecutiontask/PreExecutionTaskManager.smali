.class public final Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;,
        Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;,
        Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;,
        Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$Companion;


# instance fields
.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

.field private d:I

.field private e:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

.field private final f:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->a:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 2

    const-string v0, "baseActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->f:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 17
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    .line 29
    new-instance p1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;-><init>(Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const-string p1, "PreExecutionTaskManager"

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    new-instance v0, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->f:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/preexecutiontask/RootingDetectTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    new-instance v0, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->f:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/preexecutiontask/AppUpdateTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    new-instance v0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->f:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    new-instance v0, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->f:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/preexecutiontask/FinishNotifyTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 26
    iget v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 4

    const-string v0, "PreExecutionTaskManager"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start pre-execution tasks at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    iget v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tasks[index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    const-string v1, "PreExecutionTaskManager"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 73
    iget v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    .line 74
    iget v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    iget v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tasks[index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    const-string v1, "PreExecutionTaskManager"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performNextTask() index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", task count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "key_index"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->e:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    if-eqz p1, :cond_0

    const-string v0, "PreExecutionTaskManager"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform pending task() from onResume() task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->c:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$TaskHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x0

    .line 56
    check-cast p1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->e:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 42
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p1, "key_index"

    iget v0, p0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager;->d:I

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
