.class public final Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;,
        Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$FolderInfo;,
        Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:Landroid/view/ViewGroup;

.field private h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/support/v4/app/Fragment;

.field private final m:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "internalStorageStr"

    const-string v4, "getInternalStorageStr()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sdCardStr"

    const-string v4, "getSdCardStr()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "privateStr"

    const-string v4, "getPrivateStr()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "rootPathInternalStorage"

    const-string v4, "getRootPathInternalStorage()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 54
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$internalStorageStr$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$internalStorageStr$2;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->c:Lkotlin/Lazy;

    .line 58
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$sdCardStr$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$sdCardStr$2;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->d:Lkotlin/Lazy;

    .line 62
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$privateStr$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$privateStr$2;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->e:Lkotlin/Lazy;

    .line 66
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$rootPathInternalStorage$2;->INSTANCE:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$rootPathInternalStorage$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->f:Lkotlin/Lazy;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->i:I

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$onListActionModeListener$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->i:I

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Landroid/view/ViewGroup;
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->g:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    const-string v0, "navigationContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 4

    const-string v0, "UiList-FT"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " changeFolderFragment() folderOption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", menuVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 193
    check-cast v0, Landroid/support/v4/app/Fragment;

    packed-switch p1, :pswitch_data_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid folder option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_0
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->i:I

    .line 201
    new-instance p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 196
    :pswitch_1
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->i:I

    .line 197
    new-instance p1, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderFragment;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/Fragment;

    :goto_0
    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 206
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->j:Z

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getUserVisibleHint()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 209
    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->l:Landroid/support/v4/app/Fragment;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "childFragmentManager"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f130280

    const-string v2, "FolderContainerFragment"

    .line 210
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 449
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folder_option"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->i:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f04008b

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026tainer, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v1, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_2

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 176
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->f()V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->k:Ljava/lang/String;

    .line 181
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    return-void

    .line 175
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.BackPressedObservable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->f()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f13027d

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.navigation_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->g:Landroid/view/ViewGroup;

    .line 160
    new-instance p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e()V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast p2, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/BackPressedObservable;Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;IILjava/lang/Object;)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "FolderContainerFragment"

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->k:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->k:Ljava/lang/String;

    .line 165
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    .line 167
    :cond_3
    iget p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->i:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a(I)V

    .line 169
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez p2, :cond_5

    move-object p1, v2

    :cond_5
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p1, :cond_6

    .line 170
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 169
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_6
    return-void

    .line 162
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.BackPressedObservable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMenuVisibility(Z)V
    .locals 4

    .line 126
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setMenuVisibility(Z)V

    .line 127
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->j:Z

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FolderContainerFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "UiList-FT"

    .line 132
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

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->l:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->l:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    const-string v0, "UiList-FT"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setMenuVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") !isAdded"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setUserVisibleHint(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FolderContainerFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->l:Landroid/support/v4/app/Fragment;

    :goto_0
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    invoke-static {p0, v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->h:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "folder_info"

    .line 113
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->e()V

    .line 116
    iget p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->i:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a(I)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->f()V

    :cond_3
    :goto_1
    return-void
.end method
