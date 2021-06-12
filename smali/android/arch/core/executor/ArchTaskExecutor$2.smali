.class final Landroid/arch/core/executor/ArchTaskExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/core/executor/ArchTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 53
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->a()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/core/executor/ArchTaskExecutor;->a(Ljava/lang/Runnable;)V

    return-void
.end method
