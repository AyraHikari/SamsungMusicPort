.class final Lcom/samsung/accessory/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/accessory/a/a/e;->a:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/accessory/a/a/e;->b:I

    const/high16 p1, 0x200000

    iput p1, p0, Lcom/samsung/accessory/a/a/e;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to configure the Pool!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
