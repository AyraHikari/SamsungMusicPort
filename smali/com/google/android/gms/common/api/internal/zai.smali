.class public final Lcom/google/android/gms/common/api/internal/zai;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zai;->a:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zai;->c:Lcom/google/android/gms/common/api/Api;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zai;->d:Lcom/google/android/gms/common/api/Api$ApiOptions;

    const/4 p1, 0x2

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zai;->c:Lcom/google/android/gms/common/api/Api;

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zai;->d:Lcom/google/android/gms/common/api/Api$ApiOptions;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Objects;->a([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/internal/zai;->b:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/common/api/internal/zai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api<",
            "TO;>;TO;)",
            "Lcom/google/android/gms/common/api/internal/zai<",
            "TO;>;"
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/google/android/gms/common/api/internal/zai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zai;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zai;->c:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/zai;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 21
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/api/internal/zai;

    .line 22
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zai;->a:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/google/android/gms/common/api/internal/zai;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zai;->c:Lcom/google/android/gms/common/api/Api;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/zai;->c:Lcom/google/android/gms/common/api/Api;

    .line 23
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zai;->d:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zai;->d:Lcom/google/android/gms/common/api/Api$ApiOptions;

    .line 24
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zai;->b:I

    return v0
.end method
