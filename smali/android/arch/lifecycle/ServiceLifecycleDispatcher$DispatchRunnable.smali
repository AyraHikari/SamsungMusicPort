.class Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ServiceLifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatchRunnable"
.end annotation


# instance fields
.field final a:Landroid/arch/lifecycle/Lifecycle$Event;

.field private final b:Landroid/arch/lifecycle/LifecycleRegistry;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LifecycleRegistry;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroid/arch/lifecycle/LifecycleRegistry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->c:Z

    .line 96
    iput-object p1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->b:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 97
    iput-object p2, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->a:Landroid/arch/lifecycle/Lifecycle$Event;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-boolean v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->c:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->b:Landroid/arch/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->a:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->c:Z

    :cond_0
    return-void
.end method
