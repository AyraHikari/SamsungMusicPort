.class Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutor"
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$1;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
