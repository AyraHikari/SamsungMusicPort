.class final Lcom/google/android/gms/tasks/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/zzq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/zzq<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/tasks/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzu<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzu;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/tasks/zzu;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/google/android/gms/tasks/zzu<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzc;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzc;->b:Lcom/google/android/gms/tasks/Continuation;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/tasks/zzc;->c:Lcom/google/android/gms/tasks/zzu;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->c:Lcom/google/android/gms/tasks/zzu;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/Continuation;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzc;->b:Lcom/google/android/gms/tasks/Continuation;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzc;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/zzd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzd;-><init>(Lcom/google/android/gms/tasks/zzc;Lcom/google/android/gms/tasks/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
