.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private d:Landroid/support/v4/app/Fragment;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isSoundPicker"

    const-string v4, "isSoundPicker()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 16
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$isSoundPicker$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$isSoundPicker$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->setViewCachedEnabled(Z)V

    return-void
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    .line 49
    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->mu_picker_fragment_container:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "FolderFragment"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$Companion;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment$Companion;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;

    move-result-object p1

    .line 56
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->e:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->setMenuVisibility(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->getUserVisibleHint()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderFragment;->setUserVisibleHint(Z)V

    .line 55
    check-cast p1, Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->d:Landroid/support/v4/app/Fragment;

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "childFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 60
    sget p2, Lcom/samsung/android/app/musiclibrary/R$id;->fragment_container:I

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->d:Landroid/support/v4/app/Fragment;

    const-string v1, "FolderFragment"

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 81
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 4

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setMenuVisibility(Z)V

    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->e:Z

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FolderFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "UiList-FT"

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " setMenuVisibility("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") childFragmentByTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", childFragmentBySaved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setUserVisibleHint(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FolderFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->f:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 27
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->f:Z

    return-void
.end method
