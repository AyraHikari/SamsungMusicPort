.class public final Lcom/samsung/android/app/music/activity/BottomTabManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/main/MainActivityTask;
.implements Lcom/samsung/android/app/music/navigate/NavigationManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/Refreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;,
        Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;,
        Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private B:Z

.field private final C:Z

.field private final D:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final E:Lkotlin/Lazy;

.field private final F:Lcom/samsung/android/app/music/main/MainActivity;

.field private final c:Landroid/support/v4/app/FragmentManager;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Landroid/view/View$OnClickListener;

.field private final j:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

.field private final k:Lkotlin/Lazy;

.field private l:Ljava/lang/Boolean;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "normalColor"

    const-string v4, "getNormalColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "selectedColor"

    const-string v4, "getSelectedColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "normalIconColor"

    const-string v4, "getNormalIconColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "selectedIconColor"

    const-string v4, "getSelectedIconColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isPort"

    const-string v4, "isPort()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onTabSelectedListeners"

    const-string v4, "getOnTabSelectedListeners()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/activity/BottomTabManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "navigationManagerImpl"

    const-string v4, "getNavigationManagerImpl()Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    .line 60
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/activity/BottomTabManager$normalColor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$normalColor$2;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->d:Lkotlin/Lazy;

    .line 64
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/activity/BottomTabManager$selectedColor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$selectedColor$2;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->e:Lkotlin/Lazy;

    .line 68
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/activity/BottomTabManager$normalIconColor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$normalIconColor$2;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->f:Lkotlin/Lazy;

    .line 72
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/activity/BottomTabManager$selectedIconColor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$selectedIconColor$2;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->g:Lkotlin/Lazy;

    .line 76
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/activity/BottomTabManager$isPort$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$isPort$2;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->h:Lkotlin/Lazy;

    .line 78
    new-instance p1, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$onClickListener$1;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->i:Landroid/view/View$OnClickListener;

    .line 92
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->j:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 95
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 96
    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager$onTabSelectedListeners$2;->INSTANCE:Lcom/samsung/android/app/music/activity/BottomTabManager$onTabSelectedListeners$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 94
    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->k:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 126
    iput p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    .line 128
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 129
    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->A:Ljava/util/HashMap;

    .line 136
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->C:Z

    .line 427
    new-instance p1, Lcom/samsung/android/app/music/activity/BottomTabManager$settingObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$settingObserver$1;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->D:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 517
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/activity/BottomTabManager$navigationManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$navigationManagerImpl$2;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->E:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/BottomTabManager;)Lcom/samsung/android/app/music/main/MainActivity;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    return-object p0
.end method

.method private final a(Landroid/support/v4/app/FragmentTransaction;I)V
    .locals 3

    .line 352
    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->A:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    :goto_0
    if-nez v1, :cond_1

    .line 356
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 357
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->A:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7f130011

    .line 358
    invoke-virtual {p1, v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 361
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 362
    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :goto_1
    const-string p1, "BottomTabManager"

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FragmentTransaction.selectTab("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") fg="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    .line 366
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method private final a(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->h()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->g()I

    move-result p2

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/ImageViewExtensionKt;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private final a(Landroid/widget/TextView;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x1

    .line 506
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 508
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    .line 509
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/BottomTabManager;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->d(I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/activity/BottomTabManager;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 268
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(IZ)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/activity/BottomTabManager;)Landroid/support/v4/app/FragmentManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    return-object p0
.end method

.method private final b(I)V
    .locals 5

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->s:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "myMusicText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/widget/TextView;Z)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->r:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    const-string v3, "myMusicIcon"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    if-nez p1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/widget/ImageView;Z)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->v:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v3, "discoverText"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/widget/TextView;Z)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->u:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const-string v4, "discoverIcon"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    if-ne p1, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/widget/ImageView;Z)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->y:Landroid/widget/TextView;

    if-nez v0, :cond_8

    const-string v3, "searchText"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_8
    if-ne p1, v2, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/widget/TextView;Z)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->x:Landroid/widget/ImageView;

    if-nez v0, :cond_a

    const-string v3, "searchIcon"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    if-ne p1, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private final b(Landroid/support/v4/app/FragmentTransaction;I)V
    .locals 1

    .line 370
    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object p2

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/support/v4/app/Fragment;

    :goto_0
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 373
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/activity/BottomTabManager;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->f(I)V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/activity/BottomTabManager;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    return p0
.end method

.method private final c(I)Landroid/support/v4/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 380
    :pswitch_0
    new-instance p1, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/browse/BrowseContainerFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 381
    :pswitch_1
    new-instance p1, Lcom/samsung/android/app/music/search/SearchContainerFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/search/SearchContainerFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 379
    :pswitch_2
    new-instance p1, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/activity/BottomTabManager;)Ljava/util/HashMap;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->A:Ljava/util/HashMap;

    return-object p0
.end method

.method private final d(I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 446
    :pswitch_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->n:Z

    goto :goto_0

    .line 447
    :pswitch_1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->o:Z

    goto :goto_0

    .line 445
    :pswitch_2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->m:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final e()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/activity/BottomTabManager;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->l()V

    return-void
.end method

.method private final e(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 454
    :pswitch_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->n:Z

    goto :goto_0

    .line 455
    :pswitch_1
    iget-boolean p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->o:Z

    goto :goto_0

    .line 453
    :pswitch_2
    iget-boolean p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->m:Z

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final f()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/activity/BottomTabManager;)I
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->f()I

    move-result p0

    return p0
.end method

.method private final f(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 463
    :pswitch_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->n:Z

    goto :goto_0

    .line 464
    :pswitch_1
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->o:Z

    goto :goto_0

    .line 462
    :pswitch_2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->m:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final g()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final g(I)V
    .locals 10

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 487
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    goto :goto_1

    :pswitch_0
    const-string v1, "931"

    const-string v2, "0063"

    goto :goto_0

    :pswitch_1
    const-string v1, "901"

    const-string v2, "0062"

    goto :goto_0

    .line 475
    :pswitch_2
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "0061"

    :goto_0
    move-object v3, v1

    move-object v1, v2

    :goto_1
    if-eqz v3, :cond_0

    .line 491
    sget-object v2, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 492
    sget-object v4, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v6, v1

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    const-string v0, "discover_tab"

    goto :goto_2

    :pswitch_4
    const-string v0, "search_tab"

    goto :goto_2

    .line 495
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment;->b()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    .line 500
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/analytics/GoogleFireBase;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/activity/BottomTabManager;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->k()Z

    move-result p0

    return p0
.end method

.method private final h()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/activity/BottomTabManager;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->m()V

    return-void
.end method

.method private final i()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final j()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final k()Z
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->l:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->l:Ljava/lang/Boolean;

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->l:Ljava/lang/Boolean;

    :goto_1
    return v1
.end method

.method private final l()V
    .locals 6

    .line 236
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 237
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    .line 238
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/main/MainActivity;->isActionMode()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Z)V

    if-eqz v0, :cond_2

    .line 240
    iget-boolean v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->m:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 241
    invoke-static {p0, v1, v1, v2, v4}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;IZILjava/lang/Object;)V

    :cond_2
    xor-int/lit8 v1, v0, 0x1

    goto :goto_1

    .line 246
    :cond_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Z)V

    .line 249
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    const v2, 0x7f130349

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 251
    new-instance v2, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v2}, Landroid/support/constraint/ConstraintSet;-><init>()V

    .line 252
    invoke-virtual {v2, v0}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    const v3, 0x7f13034c

    const/4 v4, 0x4

    if-eqz v1, :cond_4

    const v1, 0x7f130008

    const/4 v5, 0x3

    .line 254
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/support/constraint/ConstraintSet;->connect(IIII)V

    goto :goto_2

    :cond_4
    const v1, 0x7f130016

    .line 256
    invoke-virtual {v2, v3, v4, v1, v4}, Landroid/support/constraint/ConstraintSet;->connect(IIII)V

    .line 258
    :goto_2
    invoke-virtual {v2, v0}, Landroid/support/constraint/ConstraintSet;->applyTo(Landroid/support/constraint/ConstraintLayout;)V

    :cond_5
    return-void
.end method

.method private final m()V
    .locals 1

    const/4 v0, 0x1

    .line 438
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->m:Z

    .line 439
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->n:Z

    .line 440
    iput-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->o:Z

    return-void
.end method

.method private final n()Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->E:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/Fragment;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    iget v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;IZILjava/lang/Object;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 3

    const-string v0, "BottomTabManager"

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectTab() tabId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keepStacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", doCommitNow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needForceClearStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->e(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->e(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 277
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of v0, p2, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    if-nez v0, :cond_0

    move-object p2, v2

    :cond_0
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    if-eqz p2, :cond_8

    .line 652
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 280
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Lcom/samsung/android/app/music/activity/BottomTabManager;I)V

    goto :goto_1

    .line 655
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/activity/BottomTabManager$selectTab$$inlined$let$lambda$1;

    invoke-direct {v0, p2, p2, p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$selectTab$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/music/activity/BottomTabManager;I)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    goto :goto_1

    .line 283
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    if-ne v0, p1, :cond_8

    if-nez p2, :cond_7

    .line 285
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v0, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    if-nez p2, :cond_3

    move-object p1, v2

    :cond_3
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    if-eqz p1, :cond_7

    .line 667
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v0, "curFg.childFragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result p2

    if-lez p2, :cond_4

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    goto :goto_0

    .line 293
    :cond_4
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;

    if-nez p2, :cond_5

    move-object p1, v2

    :cond_5
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;->p_()V

    goto :goto_0

    .line 670
    :cond_6
    new-instance p2, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;

    invoke-direct {p2, p1, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_7
    :goto_0
    return-void

    .line 301
    :cond_8
    :goto_1
    iput p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    .line 303
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 311
    :pswitch_0
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Landroid/support/v4/app/FragmentTransaction;I)V

    .line 312
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/support/v4/app/FragmentTransaction;I)V

    .line 313
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Landroid/support/v4/app/FragmentTransaction;I)V

    goto :goto_2

    .line 316
    :pswitch_1
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Landroid/support/v4/app/FragmentTransaction;I)V

    .line 317
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Landroid/support/v4/app/FragmentTransaction;I)V

    .line 318
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/support/v4/app/FragmentTransaction;I)V

    goto :goto_2

    .line 306
    :pswitch_2
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Landroid/support/v4/app/FragmentTransaction;I)V

    .line 307
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Landroid/support/v4/app/FragmentTransaction;I)V

    .line 308
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(Landroid/support/v4/app/FragmentTransaction;I)V

    .line 323
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->B:Z

    if-eqz v0, :cond_9

    .line 324
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 326
    :cond_9
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 328
    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->B:Z

    .line 330
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(I)V

    .line 331
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->g(I)V

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->j()Ljava/util/ArrayList;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 710
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;

    .line 334
    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->b(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;->a(II)V

    goto :goto_4

    .line 337
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 714
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "editor"

    .line 715
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "key_current_tab"

    .line 337
    iget v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 716
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/samsung/android/app/music/activity/BottomTabManager$OnTabSelectedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->m()V

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->l()V

    .line 217
    :cond_0
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->j:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->D:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "my_music_mode_option"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 142
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p1, "key_force_clear_stack_my_music"

    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->m:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_force_clear_stack_discover"

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->n:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_force_clear_stack_search"

    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->o:Z

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;Z)V
    .locals 4

    const-string p3, "activity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p3, "key_force_clear_stack_my_music"

    .line 153
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->m:Z

    const-string p3, "key_force_clear_stack_discover"

    .line 154
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->n:Z

    const-string p3, "key_force_clear_stack_search"

    .line 155
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->o:Z

    .line 158
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->l:Ljava/lang/Boolean;

    const p3, 0x7f13034d

    .line 160
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "activity.findViewById(R.id.bottom_tab_container)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->p:Landroid/view/View;

    const p3, 0x7f13034c

    .line 162
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "activity.findViewById<Vi\u2026nClickListener)\n        }"

    .line 162
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->q:Landroid/view/View;

    const p3, 0x7f130351

    .line 165
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "activity.findViewById(R.id.my_music_icon)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->r:Landroid/widget/ImageView;

    const p3, 0x7f130352

    .line 166
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "activity.findViewById(R.id.my_music_text)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->s:Landroid/widget/TextView;

    const p3, 0x7f13034f

    .line 168
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "activity.findViewById<Vi\u2026nClickListener)\n        }"

    .line 168
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->t:Landroid/view/View;

    const p3, 0x7f130353

    .line 171
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "activity.findViewById(R.id.discover_icon)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->u:Landroid/widget/ImageView;

    const p3, 0x7f130354

    .line 172
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "activity.findViewById(R.id.discover_text)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->v:Landroid/widget/TextView;

    const p3, 0x7f130350

    .line 174
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "activity.findViewById<Vi\u2026nClickListener)\n        }"

    .line 174
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->w:Landroid/view/View;

    const p3, 0x7f130355

    .line 177
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "activity.findViewById(R.id.search_icon)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->x:Landroid/widget/ImageView;

    const p3, 0x7f130356

    .line 178
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "activity.findViewById(R.id.search_text)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->y:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "main_current_tab"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 183
    iput-boolean v3, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->B:Z

    const/4 p2, 0x0

    .line 184
    invoke-static {p0, v0, v2, v1, p2}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Lcom/samsung/android/app/music/activity/BottomTabManager;IZILjava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_1
    iput v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    .line 187
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->b(I)V

    .line 191
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->q:Landroid/view/View;

    if-nez p2, :cond_2

    const-string v0, "myMusic"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    const v0, 0x7f0b01f2

    .line 192
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    .line 191
    invoke-static {p3, v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->t:Landroid/view/View;

    if-nez p2, :cond_3

    const-string v0, "discover"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    const v0, 0x7f0b00b5

    .line 196
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {p3, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->w:Landroid/view/View;

    if-nez p2, :cond_4

    const-string v0, "search"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    const v0, 0x7f0b033c

    .line 200
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p3, v0, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->l()V

    .line 206
    iget-boolean p2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->C:Z

    if-eqz p2, :cond_5

    .line 207
    new-instance p2, Lcom/samsung/android/app/music/activity/BottomTabManager$onActivityCreated$6;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/activity/BottomTabManager$onActivityCreated$6;-><init>(Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/main/MainActivity;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->p:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v2, "bottomTabContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_3

    .line 399
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->p:Landroid/view/View;

    if-nez v1, :cond_2

    const-string v2, "bottomTabContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->invalidateOptionsMenu()V

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->p:Landroid/view/View;

    if-nez v1, :cond_4

    const-string v2, "bottomTabContainer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/MainActivity;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->F:Lcom/samsung/android/app/music/main/MainActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 403
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->s:Landroid/widget/TextView;

    if-nez p1, :cond_5

    const-string v1, "myMusicText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->v:Landroid/widget/TextView;

    if-nez p1, :cond_6

    const-string v1, "discoverText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->y:Landroid/widget/TextView;

    if-nez p1, :cond_7

    const-string v1, "searchText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 407
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->s:Landroid/widget/TextView;

    if-nez v0, :cond_9

    const-string v1, "myMusicText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->v:Landroid/widget/TextView;

    if-nez v0, :cond_a

    const-string v1, "discoverText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->y:Landroid/widget/TextView;

    if-nez v0, :cond_b

    const-string v1, "searchText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->a(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MyMusicContainerFragment;->b()Lcom/samsung/android/app/music/main/MyMusicTabFragment;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->j:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->D:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "my_music_mode_option"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;Landroid/view/Menu;)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ebd70a4    # 0.37f

    .line 415
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->q:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v2, "myMusic"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 416
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->q:Landroid/view/View;

    if-nez v1, :cond_2

    const-string v2, "myMusic"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 417
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->w:Landroid/view/View;

    if-nez v1, :cond_3

    const-string v2, "search"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 418
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->w:Landroid/view/View;

    if-nez v1, :cond_4

    const-string v2, "search"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 419
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->t:Landroid/view/View;

    if-nez v1, :cond_5

    const-string v2, "discover"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->t:Landroid/view/View;

    if-nez v0, :cond_6

    const-string v1, "discover"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->c:Landroid/support/v4/app/FragmentManager;

    sget-object v1, Lcom/samsung/android/app/music/activity/BottomTabManager;->b:Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;

    iget v2, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;->a(Lcom/samsung/android/app/music/activity/BottomTabManager$Companion;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;->c()V

    :cond_1
    return-void
.end method

.method public c(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/samsung/android/app/music/main/MainActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 636
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "editor"

    .line 637
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "main_current_tab"

    .line 229
    iget v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 638
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager;->z:I

    return v0
.end method

.method public d(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->b(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public e(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->e(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public f(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->f(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public g(Lcom/samsung/android/app/music/main/MainActivity;)Z
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->g(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)Z

    move-result p1

    return p1
.end method

.method public h(Lcom/samsung/android/app/music/main/MainActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/main/MainActivityTask$DefaultImpls;->h(Lcom/samsung/android/app/music/main/MainActivityTask;Lcom/samsung/android/app/music/main/MainActivity;)V

    return-void
.end method

.method public navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 6

    .line 528
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BottomTabManager;->n()Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/activity/BottomTabManager$NavigationManagerImpl;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method
