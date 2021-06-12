.class Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3$1;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3$1;->a:Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3$1;->a(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
