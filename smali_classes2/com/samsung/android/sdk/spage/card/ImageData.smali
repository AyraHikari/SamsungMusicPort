.class public Lcom/samsung/android/sdk/spage/card/ImageData;
.super Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/spage/card/base/ActionFieldData<",
        "Lcom/samsung/android/sdk/spage/card/ImageData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ImageData;
    .locals 1

    const-string v0, "uriString"

    .line 25
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/spage/card/ImageData;->d(Ljava/lang/String;)V

    const-string v0, "resName"

    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/ImageData;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/ImageData;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ImageData;
    .locals 1

    const-string v0, "resName"

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/spage/card/ImageData;->d(Ljava/lang/String;)V

    const-string v0, "uriString"

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/ImageData;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/ImageData;

    return-object p1
.end method
