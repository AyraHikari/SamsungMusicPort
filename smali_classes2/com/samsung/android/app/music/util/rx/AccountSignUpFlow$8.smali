.class final Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$8;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$8;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$8;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$8;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$8;->a(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
