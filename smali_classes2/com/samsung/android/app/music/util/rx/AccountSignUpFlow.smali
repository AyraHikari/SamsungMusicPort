.class public Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$SignUpDialog;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Lcom/samsung/android/app/music/util/rx/ObservableLogger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/util/rx/ObservableLogger<",
            "TT;>;"
        }
    .end annotation

    .line 260
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;->a()Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/app/Activity;)Lio/reactivex/Observable;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->b(Landroid/app/Activity;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lio/reactivex/Observable;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$3;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)V

    .line 52
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 74
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$2;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$2;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->b(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/app/Activity;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;-><init>(Landroid/app/Activity;Lio/reactivex/subjects/PublishSubject;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->c(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p0

    const-string v0, "signUpWithActivity"

    .line 129
    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->c(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    const-string v1, "AccountSignUpFlow"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitSignInAfterSignUp. user status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$6;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$6;-><init>(Lio/reactivex/subjects/PublishSubject;)V

    .line 155
    new-instance v3, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$8;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$8;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    invoke-virtual {v1, v3}, Lio/reactivex/subjects/PublishSubject;->c(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$7;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$7;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 160
    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    :goto_0
    const-wide/16 v1, 0x2710

    .line 169
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v3}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$9;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$9;-><init>(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 170
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->d(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    const-string v0, "waitSignInAfterSignUp"

    .line 175
    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$4;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$4;-><init>(Lio/reactivex/subjects/PublishSubject;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->c(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p0

    const-string v0, "showSignUpDialog"

    .line 100
    invoke-static {v0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 101
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
