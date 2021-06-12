.class Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/HolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HolderFragmentManager"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Landroid/arch/lifecycle/HolderFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/arch/lifecycle/HolderFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private d:Z

.field private e:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->a:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->b:Ljava/util/Map;

    .line 100
    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$1;-><init>(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->d:Z

    .line 113
    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;-><init>(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->e:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    return-void
.end method

.method private static a(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;
    .locals 1

    .line 138
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.arch.lifecycle.state.StateProviderHolderFragment"

    .line 142
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 143
    instance-of v0, p0, Landroid/arch/lifecycle/HolderFragment;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected fragment instance was returned by HOLDER_TAG"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_1
    :goto_0
    check-cast p0, Landroid/arch/lifecycle/HolderFragment;

    return-object p0

    .line 139
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from onDestroy"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)Ljava/util/Map;
    .locals 0

    .line 96
    iget-object p0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->a:Ljava/util/Map;

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;
    .locals 2

    .line 151
    new-instance v0, Landroid/arch/lifecycle/HolderFragment;

    invoke-direct {v0}, Landroid/arch/lifecycle/HolderFragment;-><init>()V

    .line 152
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "android.arch.lifecycle.state.StateProviderHolderFragment"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object v0
.end method

.method static synthetic b(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)Ljava/util/Map;
    .locals 0

    .line 96
    iget-object p0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method a(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;
    .locals 3

    .line 157
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->a(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 162
    :cond_0
    iget-object v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/HolderFragment;

    if-eqz v1, :cond_1

    return-object v1

    .line 167
    :cond_1
    iget-boolean v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->d:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 168
    iput-boolean v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->d:Z

    .line 169
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 171
    :cond_2
    invoke-static {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->b(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v0

    .line 172
    iget-object v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method a(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->e:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
