.class Lcom/samsung/android/sdk/smp/network/NetworkManager$StringUtf8VolleyRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringUtf8VolleyRequest"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 169
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$StringUtf8VolleyRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public p()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$StringUtf8VolleyRequest;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/NetworkManager$StringUtf8VolleyRequest;->a:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    return-object v0
.end method
