.class Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GzipJsonUtf8VolleyRequest"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;[BLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[B",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "application/json; charset=%s"

    const/4 p2, 0x1

    .line 171
    new-array p2, p2, [Ljava/lang/Object;

    const-string p4, "utf-8"

    const/4 p5, 0x0

    aput-object p4, p2, p5

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;->a:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;->b:[B

    return-void
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$GzipJsonUtf8VolleyRequest;->b:[B

    return-object v0
.end method
