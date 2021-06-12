.class public final Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;,
        Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$Companion;

.field private static final j:Z


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;

.field private final i:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$Companion;

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->j:Z

    return-void
.end method

.method public varargs constructor <init>(ILandroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b:Ljava/util/ArrayList;

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->e:Ljava/util/ArrayList;

    .line 29
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->h:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;

    .line 51
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->f:I

    .line 52
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILjava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    if-eqz p1, :cond_1

    .line 54
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->h:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$activityLifeCycleCallbacks$1;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 53
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(ILandroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 19
    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;-><init>(ILandroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p3, 0x0

    .line 62
    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 207
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "PermissionManager"

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " denied permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 107
    check-cast v0, Ljava/util/Collection;

    .line 210
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a([Ljava/lang/String;)V

    return-void

    .line 210
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c:Z

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    .line 113
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_5

    .line 212
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, [Ljava/lang/String;

    .line 113
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->f:I

    add-int/lit8 v1, v1, 0x64

    .line 112
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 212
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a([Ljava/lang/String;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "start_manager_permissions_activity_dialog"

    .line 149
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 150
    instance-of v2, v1, Landroid/support/v4/app/DialogFragment;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->a([Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    move-result-object p1

    const-string v1, "start_manager_permissions_activity_dialog"

    .line 153
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c:Z

    return p0
.end method

.method private final b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    check-cast p1, Ljava/lang/Iterable;

    .line 218
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "PermissionManager"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nonGrantedPermission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 4

    const-string v0, "PermissionManager"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setDeniedPermission="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->g:Z

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->e()V

    return-void
.end method

.method private final c(Ljava/lang/String;)Z
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public static final synthetic d(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method public static final synthetic d()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->j:Z

    return v0
.end method

.method private final e()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 78
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 79
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->d:Z

    if-eqz v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->g:Z

    return-void
.end method

.method public final varargs a(ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b:Ljava/util/ArrayList;

    .line 66
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->g:Z

    if-eqz p3, :cond_0

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->d:Z

    return-void
.end method

.method public final a([Ljava/lang/String;[I)V
    .locals 6

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c:Z

    .line 214
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    add-int/lit8 v4, v2, 0x1

    .line 120
    aget v2, p2, v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 121
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 216
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    .line 124
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;->onPermissionResult([Ljava/lang/String;[I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final a([I)Z
    .locals 5

    const-string v0, "grantResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 89
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 163
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 220
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "PermissionManager"

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " isAllGranted() permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", granted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5, v2}, Landroid/support/v4/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->i:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v6

    :cond_2
    return v1
.end method
