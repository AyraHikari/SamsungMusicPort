.class final Lcom/samsung/android/sdk/accessory/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/samsung/accessory/a/a/a;


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const-string p1, "[SA_SDK]"

    const-string v0, "invalid fragment mode!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iput v1, p0, Lcom/samsung/android/sdk/accessory/e;->a:I

    iput v0, p0, Lcom/samsung/android/sdk/accessory/e;->b:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/sdk/accessory/e;->c:I

    return-void

    :pswitch_1
    iput v1, p0, Lcom/samsung/android/sdk/accessory/e;->a:I

    iput v1, p0, Lcom/samsung/android/sdk/accessory/e;->b:I

    iput v0, p0, Lcom/samsung/android/sdk/accessory/e;->c:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/accessory/e;->a:I

    return v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/accessory/e;->d:I

    return-void
.end method

.method final a(Lcom/samsung/accessory/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/e;->e:Lcom/samsung/accessory/a/a/a;

    return-void
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/accessory/e;->b:I

    return v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/accessory/e;->c:I

    return v0
.end method

.method final d()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/e;->e:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->a()[B

    move-result-object v0

    return-object v0
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/accessory/e;->d:I

    return v0
.end method

.method final f()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/e;->e:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->d()I

    move-result v0

    return v0
.end method

.method final g()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/e;->e:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->c()I

    move-result v0

    return v0
.end method

.method final h()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/e;->e:Lcom/samsung/accessory/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/e;->e:Lcom/samsung/accessory/a/a/a;

    invoke-virtual {v0}, Lcom/samsung/accessory/a/a/a;->e()Z

    :cond_0
    return-void
.end method
