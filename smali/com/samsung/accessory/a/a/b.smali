.class Lcom/samsung/accessory/a/a/b;
.super Lcom/samsung/android/sdk/accessory/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/accessory/a/a/b;

    invoke-direct {v0}, Lcom/samsung/accessory/a/a/b;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/b;->a:Lcom/samsung/android/sdk/accessory/b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/accessory/a/a/d;->b(I)Z

    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/samsung/accessory/a/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/accessory/a/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x280000

    goto :goto_0

    :cond_1
    const/high16 v0, 0x700000

    :goto_0
    new-instance v1, Lcom/samsung/accessory/a/a/e;

    const-string v2, "SaBufferPool-SDK"

    invoke-direct {v1, p1, v2, v0}, Lcom/samsung/accessory/a/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/samsung/accessory/a/a/d;->a(Lcom/samsung/accessory/a/a/e;)V

    return-void
.end method

.method protected final b(I)Lcom/samsung/accessory/a/a/a;
    .locals 0

    invoke-static {p1}, Lcom/samsung/accessory/a/a/d;->a(I)Lcom/samsung/accessory/a/a/a;

    move-result-object p1

    return-object p1
.end method
