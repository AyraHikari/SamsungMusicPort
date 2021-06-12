.class public final Lcom/samsung/accessory/safiletransfer/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/safiletransfer/a/d;->a:I

    iput v0, p0, Lcom/samsung/accessory/safiletransfer/a/d;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/safiletransfer/a/d;->a:I

    return v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/a/d;->a:I

    const-string p1, "errorCode"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/a/d;->b:I

    const-string p1, "errorMsg"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/safiletransfer/a/d;->b:I

    return v0
.end method
