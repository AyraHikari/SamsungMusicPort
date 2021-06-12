.class Lcom/samsung/android/sdk/accessory/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sdk/accessory/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/i;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/i;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/Object;II[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/i;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/i$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/accessory/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/samsung/android/sdk/accessory/i$a;-><init>(IILjava/lang/Object;B)V

    sget-object p0, Lcom/samsung/android/sdk/accessory/i;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/samsung/android/sdk/accessory/i$a;->a(I[BII)I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Object;II[BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/accessory/i;->a(ILjava/lang/Object;II[BII)I

    move-result p0

    return p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/accessory/i;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessory/i$a;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {p0}, Lcom/samsung/accessory/a/a/a;->b()[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method static b(Ljava/lang/Object;II[BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/accessory/i;->a(ILjava/lang/Object;II[BII)I

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/accessory/i;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessory/i$a;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->e()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/i$a;->a:Lcom/samsung/accessory/a/a/a;

    :cond_0
    return-void
.end method
