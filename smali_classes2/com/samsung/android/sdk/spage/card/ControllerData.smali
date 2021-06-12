.class public Lcom/samsung/android/sdk/spage/card/ControllerData;
.super Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/spage/card/base/JsonFieldData<",
        "Lcom/samsung/android/sdk/spage/card/ControllerData;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/samsung/android/sdk/spage/card/ControllerData;->a:I

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "controllerType"

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/ControllerData;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "controller type not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/sdk/spage/card/ControllerData;
    .locals 1

    .line 43
    iget v0, p0, Lcom/samsung/android/sdk/spage/card/ControllerData;->a:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/sdk/spage/card/ControllerData;->a:I

    const-string p1, "flags"

    .line 44
    iget v0, p0, Lcom/samsung/android/sdk/spage/card/ControllerData;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/spage/card/ControllerData;->a(Ljava/lang/String;I)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/ControllerData;

    return-object p1
.end method

.method public b(I)Lcom/samsung/android/sdk/spage/card/ControllerData;
    .locals 1

    const-string v0, "state"

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/spage/card/ControllerData;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/base/JsonFieldData;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/spage/card/ControllerData;

    return-object p1
.end method
