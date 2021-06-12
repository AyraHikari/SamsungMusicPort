.class public final Lcom/samsung/accessory/safiletransfer/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/a/h;->a:I

    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/a/h;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/accessory/safiletransfer/a/h;->c:Z

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

    const-string v1, "id"

    iget v2, p0, Lcom/samsung/accessory/safiletransfer/a/h;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "path"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accepted"

    iget-boolean v2, p0, Lcom/samsung/accessory/safiletransfer/a/h;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method
