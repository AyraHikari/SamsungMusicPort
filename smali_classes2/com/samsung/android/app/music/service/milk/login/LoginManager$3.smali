.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(IILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;I)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;->a:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)V
    .locals 6

    const-string v0, "LoginManager"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdultCertificate result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p1

    if-nez p1, :cond_1

    .line 277
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;->b:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    move-result-object v0

    const/4 v1, -0x1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;->a:I

    const/16 v3, 0x199

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->a(IIIILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 271
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;->a(Lcom/samsung/android/app/music/model/ResponseModel;)V

    return-void
.end method
