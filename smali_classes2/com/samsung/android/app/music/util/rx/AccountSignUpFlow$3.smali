.class final Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->a(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/samsung/android/app/music/model/UserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "AccountSignUpFlow"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signUp. async result. user status - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSignUpNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->b(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3$2;-><init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;)V

    .line 61
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3$1;-><init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;)V

    .line 66
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

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

    .line 52
    check-cast p1, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;->a(Lcom/samsung/android/app/music/model/UserInfo;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
