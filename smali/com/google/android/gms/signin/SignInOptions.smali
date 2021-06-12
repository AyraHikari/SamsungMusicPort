.class public final Lcom/google/android/gms/signin/SignInOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/signin/SignInOptions$zaa;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/signin/SignInOptions;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Ljava/lang/Long;

.field private final i:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 19
    new-instance v0, Lcom/google/android/gms/signin/SignInOptions$zaa;

    invoke-direct {v0}, Lcom/google/android/gms/signin/SignInOptions$zaa;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/gms/signin/SignInOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/signin/SignInOptions;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 22
    sput-object v0, Lcom/google/android/gms/signin/SignInOptions;->a:Lcom/google/android/gms/signin/SignInOptions;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->b:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->c:Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->d:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->e:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->g:Z

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->f:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->h:Ljava/lang/Long;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->i:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->b:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->c:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->e:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->g:Z

    return v0
.end method

.method public final g()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public final h()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->i:Ljava/lang/Long;

    return-object v0
.end method
