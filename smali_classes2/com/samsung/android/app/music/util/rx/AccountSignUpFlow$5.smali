.class final Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->b(Landroid/app/Activity;)Lio/reactivex/Observable;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lio/reactivex/subjects/PublishSubject;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->a:Landroid/app/Activity;

    instance-of p1, p1, Lcom/samsung/android/app/music/activity/ActivityResultDelegator;

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->a:Landroid/app/Activity;

    const/16 v0, 0x1e45

    iget-object v1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->a:Landroid/app/Activity;

    check-cast v1, Lcom/samsung/android/app/music/activity/ActivityResultDelegator;

    new-instance v2, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5$1;-><init>(Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;)V

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->a(Landroid/content/Context;ILcom/samsung/android/app/music/activity/ActivityResultDelegator;Lcom/samsung/android/app/music/activity/ActivityResultDelegator$ActivityResultCallback;)Z

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->b:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "activity should implements ActivityResultDelegator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow$5;->a(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
