.class public Lcom/samsung/android/sdk/accessory/SA;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/samsung/android/sdk/accessory/k;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->b:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->a:Lcom/samsung/android/sdk/accessory/k;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->a:Lcom/samsung/android/sdk/accessory/k;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->b:Z

    if-nez v0, :cond_0

    const-string v0, "SACU"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->b:Z

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/k;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->a:Lcom/samsung/android/sdk/accessory/k;
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/d; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SA"

    const-string v1, "Initializing SA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/accessory/b;->a()Lcom/samsung/android/sdk/accessory/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/b;->a(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/d;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/d;->a()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal argument: context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
