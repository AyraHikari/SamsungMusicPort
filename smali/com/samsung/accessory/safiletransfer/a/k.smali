.class public final Lcom/samsung/accessory/safiletransfer/a/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/a/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/a/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/accessory/safiletransfer/a/k;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/accessory/safiletransfer/a/k;->e:J

    iput-wide p7, p0, Lcom/samsung/accessory/safiletransfer/a/k;->f:J

    iput-object p9, p0, Lcom/samsung/accessory/safiletransfer/a/k;->g:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/accessory/safiletransfer/a/k;->h:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/accessory/safiletransfer/a/k;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/accessory/safiletransfer/a/k;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "SourcePath"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DestinationPath"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PeerId"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ContainerId"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AccessoryId"

    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "FileSize"

    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "FileName"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "FileURI"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AgentClassName"

    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/a/k;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
