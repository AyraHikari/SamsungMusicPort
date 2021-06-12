.class Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;->a(Lcom/samsung/android/app/music/model/UserInfo;)V
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
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$1;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)V
    .locals 1

    .line 155
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getUserInfoObservable success"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 152
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$1;->a(Ljava/lang/Void;)V

    return-void
.end method
