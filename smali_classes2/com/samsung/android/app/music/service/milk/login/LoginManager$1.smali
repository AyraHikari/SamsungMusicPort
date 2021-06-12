.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(ILcom/samsung/android/app/music/model/PushInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$1;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 258
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$1;->a(Ljava/lang/Void;)V

    return-void
.end method
