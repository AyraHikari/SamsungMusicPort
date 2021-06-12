.class public Lcom/samsung/android/sdk/spage/card/TextData;
.super Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/spage/card/base/ActionFieldData<",
        "Lcom/samsung/android/sdk/spage/card/TextData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;
    .locals 1

    const-string v0, "rawString"

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/spage/card/TextData;->d(Ljava/lang/String;)V

    const-string v0, "resName"

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/TextData;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/TextData;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/TextData;
    .locals 1

    const-string v0, "resName"

    .line 46
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/spage/card/TextData;->d(Ljava/lang/String;)V

    const-string v0, "rawString"

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/TextData;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/TextData;

    return-object p1
.end method
