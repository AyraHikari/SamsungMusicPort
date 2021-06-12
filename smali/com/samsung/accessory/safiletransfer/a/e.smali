.class public final Lcom/samsung/accessory/safiletransfer/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/a/e;->a:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/accessory/safiletransfer/a/e;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/accessory/safiletransfer/a/e;->b:I

    const-string v1, "errorMsg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/a/e;->a:[I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/safiletransfer/a/e;->a:[I

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/safiletransfer/a/e;->a:[I

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/safiletransfer/a/e;->b:I

    return v0
.end method
