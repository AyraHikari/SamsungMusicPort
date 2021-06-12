.class public abstract Landroid/arch/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/Lifecycle$State;,
        Landroid/arch/lifecycle/Lifecycle$Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/arch/lifecycle/Lifecycle$State;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract a(Landroid/arch/lifecycle/LifecycleObserver;)V
    .param p1    # Landroid/arch/lifecycle/LifecycleObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method

.method public abstract b(Landroid/arch/lifecycle/LifecycleObserver;)V
    .param p1    # Landroid/arch/lifecycle/LifecycleObserver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation
.end method
