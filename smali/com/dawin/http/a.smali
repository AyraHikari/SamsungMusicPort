.class public Lcom/dawin/http/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/http/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/http/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dawin/http/a$a;

.field private c:Lcom/dawin/http/b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dawin/http/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dawin/http/a;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNetworkConnected => true / Network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkConnected => false / Network : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / isAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / isConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p0, "isNetworkConnected => false"

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/http/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dawin/http/b;->cancel(Z)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "clearTask End"

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    const-string v1, "Request error"

    invoke-interface {v0, p1, p2, v1}, Lcom/dawin/http/a$a;->a(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/dawin/http/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dawin/http/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    const/16 v0, -0x64

    const-string v1, "\uc778\ud130\ub137 \uc5f0\uacb0 \uc624\ub958"

    invoke-interface {p2, p1, v0, v1}, Lcom/dawin/http/a$a;->a(IILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/dawin/http/b;

    iget-object v1, p0, Lcom/dawin/http/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Lcom/dawin/http/b;-><init>(Landroid/content/Context;Lcom/dawin/http/b$a;I)V

    iput-object v0, p0, Lcom/dawin/http/a;->c:Lcom/dawin/http/b;

    iget-object p1, p0, Lcom/dawin/http/a;->c:Lcom/dawin/http/b;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/dawin/http/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/dawin/http/a;->d:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/dawin/http/a;->c:Lcom/dawin/http/b;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/dawin/http/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/http/a;->b:Lcom/dawin/http/a$a;

    invoke-interface {v0, p1, p2}, Lcom/dawin/http/a$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
