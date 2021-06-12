.class public final Lcom/google/android/gms/common/internal/ClientSettings$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ClientSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Landroid/support/v4/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArraySet<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/internal/ClientSettings$OptionalApiSettings;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/signin/SignInOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->d:I

    .line 3
    sget-object v0, Lcom/google/android/gms/signin/SignInOptions;->a:Lcom/google/android/gms/signin/SignInOptions;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->h:Lcom/google/android/gms/signin/SignInOptions;

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/ClientSettings$Builder;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->b:Landroid/support/v4/util/ArraySet;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->b:Landroid/support/v4/util/ArraySet;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->b:Landroid/support/v4/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/common/internal/ClientSettings;
    .locals 10

    .line 26
    new-instance v9, Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->b:Landroid/support/v4/util/ArraySet;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->c:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->d:I

    iget-object v5, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->e:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->h:Lcom/google/android/gms/signin/SignInOptions;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/ClientSettings;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/SignInOptions;)V

    return-object v9
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/common/internal/ClientSettings$Builder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientSettings$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
