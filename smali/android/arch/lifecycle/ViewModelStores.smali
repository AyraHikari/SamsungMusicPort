.class public Landroid/arch/lifecycle/ViewModelStores;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;
    .locals 1
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 44
    instance-of v0, p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Landroid/arch/lifecycle/ViewModelStoreOwner;

    invoke-interface {p0}, Landroid/arch/lifecycle/ViewModelStoreOwner;->a()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0

    .line 47
    :cond_0
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/lifecycle/HolderFragment;->a()Landroid/arch/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method
