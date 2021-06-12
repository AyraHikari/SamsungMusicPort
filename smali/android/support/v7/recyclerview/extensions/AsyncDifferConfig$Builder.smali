.class public final Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sDiffExecutor:Ljava/util/concurrent/Executor;

.field private static final sExecutorLock:Ljava/lang/Object;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 156
    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 159
    new-instance v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;

    invoke-direct {v1, v0}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;-><init>(Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$1;)V

    sput-object v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .locals 0
    .param p1    # Landroid/support/v7/util/DiffUtil$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    .line 141
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 143
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 145
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 148
    :cond_2
    :goto_0
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/support/v7/util/DiffUtil$ItemCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$1;)V

    return-object v0
.end method

.method public setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method
