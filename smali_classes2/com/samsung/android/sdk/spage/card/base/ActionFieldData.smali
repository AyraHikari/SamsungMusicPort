.class public abstract Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;
.super Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;",
        ">",
        "Lcom/samsung/android/sdk/spage/card/base/JsonFieldData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "event"

    .line 53
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;->d(Ljava/lang/String;)V

    const-string v0, "intent"

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    return-object p1

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Intent is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/samsung/android/sdk/spage/card/ConnectivityData;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/spage/card/ConnectivityData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/spage/card/ConnectivityData;",
            ")TT;"
        }
    .end annotation

    const-string v0, "connectivityData"

    .line 79
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;->d(Ljava/lang/String;)V

    const-string v0, "connectivityData"

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "intent"

    .line 114
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;->d(Ljava/lang/String;)V

    const-string v0, "intentType"

    .line 115
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;->d(Ljava/lang/String;)V

    const-string v0, "event"

    .line 116
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/base/ActionFieldData;

    return-object p1
.end method
