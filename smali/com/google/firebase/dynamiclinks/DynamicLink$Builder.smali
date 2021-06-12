.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/dynamiclinks/internal/zzg;

.field private final b:Landroid/os/Bundle;

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/firebase/dynamiclinks/internal/zzg;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->a:Lcom/google/firebase/dynamiclinks/internal/zzg;

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->b:Landroid/os/Bundle;

    .line 4
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->d()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->b:Landroid/os/Bundle;

    const-string v0, "apiKey"

    .line 6
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->d()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->c()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->c:Landroid/os/Bundle;

    .line 9
    iget-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->b:Landroid/os/Bundle;

    const-string v0, "parameters"

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final b()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->b:Landroid/os/Bundle;

    const-string v1, "apiKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing API key. Set with setApiKey()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->b()V

    .line 41
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->a:Lcom/google/firebase/dynamiclinks/internal/zzg;

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/firebase/dynamiclinks/internal/zzg;->a(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->c:Landroid/os/Bundle;

    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "(https:\\/\\/)?[a-z0-9]{3,}\\.app\\.goo\\.gl$"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(https:\\/\\/)?[a-z0-9]{3,}\\.page\\.link$"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->b:Landroid/os/Bundle;

    const-string v1, "domain"

    const-string v2, "https://"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->b:Landroid/os/Bundle;

    const-string v1, "domainUriPrefix"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
