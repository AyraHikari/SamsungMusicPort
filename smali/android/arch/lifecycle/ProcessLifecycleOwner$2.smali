.class Landroid/arch/lifecycle/ProcessLifecycleOwner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ProcessLifecycleOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/ProcessLifecycleOwner;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->a:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->a:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;->a:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->b()V

    return-void
.end method
