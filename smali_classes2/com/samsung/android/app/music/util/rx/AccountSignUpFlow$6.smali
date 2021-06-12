.class final Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/PublishSubject;


# direct methods
.method constructor <init>(Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$6;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "AccountSignUpFlow"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitSignInAfterSignUp.onUserInfoChanged. state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSignUpNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$6;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$6;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    return-void
.end method
