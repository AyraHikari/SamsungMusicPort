.class public final Lcom/samsung/accessory/safiletransfer/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/a/c;->a:I

    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/a/c;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "OpCode"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/a/c;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Parameters"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/c;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
